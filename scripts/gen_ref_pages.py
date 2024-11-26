"""Generate the code reference pages and navigation."""
import logging
from pathlib import Path
import mkdocs_gen_files

logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')

nav = mkdocs_gen_files.Nav()

root = Path(__file__).parent.parent
src = root / "src"

for path in sorted(src.rglob("*.py")):
        
    # Skip files containing the following kywords in their path
    if any(part in {"old_stuff", "f1tenth_stack", "provide_map_launch", "launch", "deprecated"} for part in path.parts):
        logging.info(f"Skipping: {path}")
        continue
    
    module_path = path.relative_to(src).with_suffix("")
    doc_path = path.relative_to(src).with_suffix(".md")
    full_doc_path = Path("PYTHON_PACKAGES", doc_path)

    parts = tuple(module_path.parts)

    if parts[-1] == "__init__":
        parts = parts[:-1]
        doc_path = doc_path.with_name("index.md")
        full_doc_path = full_doc_path.with_name("index.md")
    elif parts[-1] == "__main__":
        continue

    nav[parts] = doc_path.as_posix()

    with mkdocs_gen_files.open(full_doc_path, "w") as fd:
        ident = ".".join(parts)
        fd.write(f"::: {ident}")
        logging.info(f"Processed file: {path}")

    mkdocs_gen_files.set_edit_path(full_doc_path, path.relative_to(root))

with mkdocs_gen_files.open("PYTHON_PACKAGES/SUMMARY.md", "w") as nav_file:
    nav_file.writelines(nav.build_literate_nav())
    logging.info("Generated SUMMARY.md")

# Create the index.md file with the HTML redirect
    summary_path = Path("PYTHON_PACKAGES/SUMMARY.md")
    index_path = Path("PYTHON_PACKAGES/index.md")

    # Read the content of SUMMARY.md
    with summary_path.open("r") as summary_file:
        summary_content = summary_file.readlines()

    # Find the first link at the leaf of the nested structure
    first_link = None
    for line in summary_content:
        if line.strip().startswith("- ["):
            first_link = line.split("](")[1].rstrip(")\n")
            break
    logging.info(f"First link found: {first_link}")

    # Create the index.md file with the HTML redirect
    if first_link:
        with index_path.open("w") as index_file:
            index_file.write(f'<meta http-equiv="refresh" content="0; url={first_link}" />')
            logging.info(f"Created index.md with redirect to {first_link}")