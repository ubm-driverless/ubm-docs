"""Generate repository landing pages and navigation."""
from __future__ import annotations
import logging
from pathlib import Path
import shutil

import yaml

logging.basicConfig(level=logging.INFO, format="%(asctime)s - %(levelname)s - %(message)s")

root = Path(__file__).parent.parent
repos_root = root / "repos"
repositories_path = root / "repositories.yaml"
docs_root = root / "docs"


def load_repositories() -> list[dict[str, str]]:
    config = yaml.safe_load(repositories_path.read_text(encoding="utf-8")) or {}
    repositories = config.get("repositories", [])
    if not repositories:
        logging.warning("No repositories configured in repositories.yaml")
    return repositories


def collect_packages(repo_path: Path) -> tuple[list[tuple[str, Path]], list[tuple[str, Path]]]:
    python_packages: list[tuple[str, Path]] = []
    cpp_packages: list[tuple[str, Path]] = []

    if not repo_path.exists():
        logging.warning("Repository path not found: %s", repo_path)
        return python_packages, cpp_packages

    for package_xml in sorted(repo_path.rglob("package.xml")):
        package_dir = package_xml.parent
        package_name = package_dir.name
        content = package_xml.read_text(encoding="utf-8", errors="ignore")

        if "ament_python" in content:
            python_packages.append((package_name, package_dir))
        if "rosdoc2" in content:
            cpp_packages.append((package_name, package_dir))

    return python_packages, cpp_packages


def resolve_python_doc_link(package_name: str, package_dir: Path) -> str | None:
    source_root = package_dir / package_name
    if not source_root.exists() or not source_root.is_dir():
        return None

    skip_dirs = {"old_stuff", "f1tenth_stack", "provide_map_launch", "launch", "deprecated"}

    for py_file in sorted(source_root.rglob("*.py")):
        if any(part in skip_dirs for part in py_file.parts):
            continue
        if py_file.stem in {"__init__", "__main__"}:
            continue

        relative_no_suffix = py_file.relative_to(source_root).with_suffix("")
        return f"../../PYTHON_PACKAGES/{package_name}/{relative_no_suffix.as_posix()}/"

    return None


def write_index(repo_name: str, python_packages: list[tuple[str, Path]], cpp_packages: list[tuple[str, Path]]) -> None:
    output_path = docs_root / "repositories" / repo_name / "index.md"
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8") as fd:
        fd.write(f"# {repo_name}\n\n")
        fd.write("This section groups the documentation for this repository.\n\n")
        fd.write("## Python Packages\n\n")
        if python_packages:
            for package_name, package_dir in python_packages:
                python_doc_link = resolve_python_doc_link(package_name, package_dir)
                if python_doc_link is None:
                    fd.write(f"- [{package_name}](python-packages.md#{package_name})\n")
                else:
                    fd.write(f"- [{package_name}]({python_doc_link})\n")
        else:
            fd.write("No Python packages were found for this repository.\n")
        fd.write("\n## C++ Packages\n\n")
        if cpp_packages:
            for package_name, _ in cpp_packages:
                fd.write(f"- [{package_name}](../../rosdoc2_generated/{repo_name}/{package_name}/)\n")
        else:
            fd.write("No C++ packages were found for this repository.\n")


def write_packages_page(repo_name: str, page_name: str, title: str, packages: list[tuple[str, Path]], link_prefix: str | None = None) -> None:
    output_path = docs_root / "repositories" / repo_name / page_name
    output_path.parent.mkdir(parents=True, exist_ok=True)
    with output_path.open("w", encoding="utf-8") as fd:
        fd.write(f"# {title}\n\n")
        if not packages:
            fd.write("No packages were found for this repository.\n")
        else:
            for package_name, _ in packages:
                fd.write(f"## {package_name}\n\n")
                if link_prefix is None:
                    fd.write(f"- Package: {package_name}\n\n")
                else:
                    fd.write(f"- [Open generated C++ docs]({link_prefix}/{package_name}/)\n\n")


def write_repositories_index(repositories: list[dict[str, str]]) -> None:
    output_path = docs_root / "repositories.md"
    with output_path.open("w", encoding="utf-8") as fd:
        fd.write("# Repositories\n\n")
        fd.write("Select a repository below to view its Python and C++ package subsections.\n\n")

        if not repositories:
            fd.write("No repositories are configured.\n")
        else:
            for repository in repositories:
                repo_name = repository["name"]
                fd.write(f"- [{repo_name}](repositories/{repo_name}/index.md)\n")


def main() -> None:
    repositories = load_repositories()

    generated_root = docs_root / "repositories"
    if generated_root.exists():
        shutil.rmtree(generated_root)

    write_repositories_index(repositories)

    for repository in repositories:
        repo_name = repository["name"]
        repo_path = repos_root / repo_name
        python_packages, cpp_packages = collect_packages(repo_path)

        write_index(repo_name, python_packages, cpp_packages)
        write_packages_page(repo_name, "python-packages.md", "Python Packages", python_packages)
        write_packages_page(
            repo_name,
            "cpp-packages.md",
            "C++ Packages",
            cpp_packages,
            link_prefix=f"../../../rosdoc2_generated/{repo_name}",
        )


if __name__ == "__main__":
    main()