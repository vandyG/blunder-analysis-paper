
TEX=pdflatex
LATEXMK=latexmk
TEXDIR=tex
BUILDDIR=build
MAIN=$(TEXDIR)/research_paper.tex
PDF=$(BUILDDIR)/research_paper.pdf

.PHONY: build build-legacy clean

# Default: build from `tex/` and place outputs in `build/`.
build:
	@mkdir -p $(BUILDDIR)
	$(LATEXMK) -pdf -outdir=$(BUILDDIR) -interaction=nonstopmode -shell-escape $(MAIN)

# Legacy: build the root-level file (keeps compatibility)
build-legacy:
	$(LATEXMK) -pdf -interaction=nonstopmode -shell-escape research_paper.tex

clean:
	$(LATEXMK) -c
	@rm -f $(PDF)
	@rm -f research_paper.pdf
