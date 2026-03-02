# Chess Blunder Analysis — Research Paper

This directory contains the LaTeX sources for the paper:

> **Chess Blunder Analysis Using Multivariate and Linear Algebraic Approaches**  
> Vandit Goel — University of Texas at Arlington

## Overview

This paper investigates the quantitative structure of chess blunders using large-scale game data from Lichess, Stockfish NNUE evaluations, and linear algebraic methods. Errors are defined via a winning-chance delta threshold: a move is a *Blunder* if it drops winning probability by ≥30%, a *Mistake* by ≥20%, and an *Inaccuracy* by ≥10%. Position sharpness is measured as $S_t = P_t^{\mathrm{win}} + P_t^{\mathrm{loss}}$ from the engine's WDL output.

The core pipeline processes ~12.5 million move records extracted from Lichess PGN archives, applies Incremental PCA (23 features, 10 components), and analyzes blunder rates across Elo bands, time controls, position sharpness, time usage, and piece types.

## Key Findings

- **Skill matters more in longer formats.** Error rates decline with Elo across all time controls, but the decline is steepest in Rapid and Standard. Elite players (Elo > 2600) benefit most from additional thinking time.
- **Sharp positions produce more errors.** Blunder, Mistake, and Inaccuracy rates all increase with positional sharpness. The effect is strongest for Inaccuracies; Blunders also spike in near-equal (low-sharpness) positions, suggesting occasional careless play.
- **Time pressure amplifies mistakes.** The fraction of available clock consumed per move (`time_ratio`) correlates monotonically with error rates, most strongly in Bullet and Blitz.
- **Knights and Queens blunder more severely.** These pieces show higher proportions of Mistakes and Blunders than Pawns, Rooks, or Bishops, consistent with their tactical complexity.
- **Linear methods fall short.** The first 10 principal components explain only 62.3% of variance (leading component: 10.7%), confirming that the feature space lacks strong low-rank structure. Non-linear models — RNNs, transformers, convolutional positional embeddings — are identified as the natural next step.

## Structure

- `tex/` — LaTeX source files (main paper and supporting proposals).
- `build/` — generated PDFs and auxiliary files (created by the build).
- `data/` — figures and reports used in the paper.

## Building

Prerequisites: TeX Live (or equivalent) with `latexmk`.

```bash
# Build PDF (outputs go to build/)
make build

# Clean auxiliary files
make clean
```

If you use Nix, enter the shell via `nix-shell` and then run the commands above.

A VS Code build task is also available (label: `LaTeX: build (latexmk)`).
