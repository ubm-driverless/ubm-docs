"""Prepare local docs inputs and run MkDocs in one command.

This script mirrors the CI flow for local usage:
- reads repositories from repositories.yaml
- copies python package sources from repos/ into src/
- regenerates repository pages
- runs mkdocs build or mkdocs serve
- optionally generates rosdoc2 output in Docker for local C++ docs links
"""

from __future__ import annotations

import argparse
import os
from pathlib import Path
import shutil
import subprocess
import sys

import yaml


def run_command(command: list[str], env: dict[str, str] | None = None) -> None:
    print("$", " ".join(command))
    subprocess.run(command, check=True, env=env)


def docker_available() -> tuple[bool, str]:
    if shutil.which("docker") is None:
        return False, "Docker CLI not found in PATH."

    try:
        subprocess.run(["docker", "info"], check=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        return True, ""
    except subprocess.CalledProcessError:
        return False, "Docker daemon is not reachable. Make sure Docker Desktop is running."
    except OSError as exc:
        return False, f"Unable to execute docker: {exc}"


def generate_rosdoc2_with_docker(root: Path) -> bool:
    ok, reason = docker_available()
    if not ok:
        print(f"[WARN] Skipping rosdoc2 local generation: {reason}")
        return False

    workspace = root.resolve().as_posix()
    script = "\n".join(
        [
            "set -e",
            "source /home/ubm/rosdoc2/bin/activate",
            'python -m pip install "docutils>=0.20,<0.22"',
            "source /opt/ros/foxy/setup.bash",
            "mkdir -p ./rosdoc2_generated",
            "find ./repos -type f -iname \"package.xml\" -print0 | while IFS= read -r -d '' f; do",
            "  package_dir=\"${f%/package.xml}\"",
            "  repo_dir=\"${package_dir#./repos/}\"",
            "  repo_name=\"${repo_dir%%/*}\"",
            "  package_name=\"${package_dir##*/}\"",
            "  if grep -q \"rosdoc2\" \"$f\"; then",
            "    echo \"Building $repo_name/$package_name with rosdoc2\"",
            "    rosdoc2 build -p \"$package_dir\" -o \"./rosdoc2_generated/$repo_name/\"",
            "  fi",
            "done",
            "deactivate",
        ]
    )

    try:
        run_command(
            [
                "docker",
                "run",
                "--rm",
                "-v",
                f"{workspace}:/workspace",
                "-w",
                "/workspace",
                "ubmdriverless/f1tenth:latest",
                "bash",
                "-lc",
                script,
            ]
        )
        return True
    except subprocess.CalledProcessError as exc:
        print(f"[WARN] rosdoc2 generation failed in Docker (exit code {exc.returncode}).")
        print("[WARN] Continuing with Python docs build only.")
        return False


def copy_rosdoc_to_site(root: Path) -> None:
    rosdoc_output = root / "rosdoc2_generated"
    if not rosdoc_output.exists():
        print("[INFO] rosdoc2_generated/ not found. C++ package links will work after CI build or local rosdoc2 generation.")
        return

    site_output = root / "site" / "rosdoc2_generated"
    if site_output.exists():
        shutil.rmtree(site_output)
    site_output.parent.mkdir(parents=True, exist_ok=True)
    shutil.copytree(rosdoc_output, site_output)
    print(f"Copied rosdoc2 output to {site_output}")


def load_repositories(config_path: Path) -> list[dict[str, str]]:
    config = yaml.safe_load(config_path.read_text(encoding="utf-8")) or {}
    repositories = config.get("repositories", [])
    if not repositories:
        raise SystemExit("No repositories configured in repositories.yaml")
    return repositories


def rebuild_src(root: Path, repositories: list[dict[str, str]]) -> int:
    repos_root = root / "repos"
    src_root = root / "src"

    if src_root.exists():
        shutil.rmtree(src_root)
    src_root.mkdir(parents=True, exist_ok=True)

    copied_packages = 0
    for repository in repositories:
        repo_name = repository["name"]
        repo_path = repos_root / repo_name
        if not repo_path.exists():
            print(f"[WARN] Repository folder not found: {repo_path}")
            continue

        for package_xml in sorted(repo_path.rglob("package.xml")):
            content = package_xml.read_text(encoding="utf-8", errors="ignore")
            if "ament_python" not in content:
                continue

            package_dir = package_xml.parent
            package_name = package_dir.name
            source_dir = package_dir / package_name
            if not source_dir.exists():
                print(f"[WARN] Python package source folder not found: {source_dir}")
                continue

            destination_dir = src_root / package_name
            if destination_dir.exists():
                shutil.rmtree(destination_dir)
            shutil.copytree(source_dir, destination_dir)
            copied_packages += 1

    return copied_packages


def build_mkdocs_env(root: Path) -> dict[str, str]:
    env = os.environ.copy()
    src_path = str(root / "src")
    current = env.get("PYTHONPATH", "")
    env["PYTHONPATH"] = src_path if not current else current + os.pathsep + src_path
    return env


def main() -> None:
    parser = argparse.ArgumentParser(description="Prepare and run local documentation build")
    parser.add_argument(
        "mode",
        nargs="?",
        choices=("build", "serve", "build-cpp", "serve-cpp"),
        default="serve",
        help=(
            "Run mkdocs in build/serve mode, build-cpp to generate rosdoc2 docs before build, "
            "or serve-cpp to serve the built site folder with rosdoc2 output (default: serve)"
        ),
    )
    args = parser.parse_args()

    root = Path(__file__).resolve().parent.parent
    repositories = load_repositories(root / "repositories.yaml")

    copied_packages = rebuild_src(root, repositories)
    print(f"Copied {copied_packages} Python package(s) into src/")

    run_command([sys.executable, str(root / "scripts" / "gen_repository_pages.py")])

    rosdoc_generated = False
    if args.mode in {"build-cpp", "serve-cpp"}:
        rosdoc_generated = generate_rosdoc2_with_docker(root)

    mkdocs_env = build_mkdocs_env(root)
    if args.mode in {"build", "build-cpp", "serve-cpp"}:
        run_command([sys.executable, "-m", "mkdocs", "build", "--clean", "--use-directory-urls"], env=mkdocs_env)
        if args.mode in {"build-cpp", "serve-cpp"} and rosdoc_generated:
            copy_rosdoc_to_site(root)
        elif args.mode in {"build-cpp", "serve-cpp"}:
            print("[INFO] C++ links may not work locally because rosdoc2 output was not generated.")
        else:
            copy_rosdoc_to_site(root)

        if args.mode == "serve-cpp":
            run_command([sys.executable, "-m", "http.server", "8000", "--directory", str(root / "site")])
    else:
        run_command([sys.executable, "-m", "mkdocs", "serve"], env=mkdocs_env)


if __name__ == "__main__":
    main()
