# Chess Blunder Analysis

This repository contains LaTeX sources for a paper about chess blunder analysis.

Layout (after reorganization):
- `tex/` — LaTeX source files (main paper and proposals).
- `build/` — generated output (PDF, aux files) created by the build.
- `data/` — datasets and reports (unchanged).

Prerequisites
- TeX Live or another full LaTeX distribution with `latexmk` installed.

# Quick build (Linux)

```bash
# Build PDF (outputs go to build/)
make build

# If you prefer the legacy behavior (build root-level tex file):
make build-legacy

# Clean auxiliary files
make clean
```

If you use Nix, the project includes `shell.nix` — enter the shell and then run the build commands above.

VS Code
- A task is provided in `.vscode/tasks.json` to build the paper (label: "LaTeX: build (latexmk)").

Files created by this scaffolding:
- `.vscode/tasks.json` — VS Code tasks for building/cleaning with `latexmk`.
- `Makefile` — convenience targets: `make build`, `make clean`.
- `.gitignore` — ignores common LaTeX auxiliary output files.

If you'd like, I can run the build now and report any LaTeX errors.
