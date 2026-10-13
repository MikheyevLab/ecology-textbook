# Ecology Textbook

This is a 'fork' of [*Quantitative Ecology: A New Unified Approach*](http://hdl.handle.net/11299/204551) by Lehman, Loberg and Clark, which was made available under the [![CC BY-NC 4.0](https://img.shields.io/badge/CC%20BY--NC%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by-nc/4.0/) license. It was designed for the 2nd year Ecology course at the Australian National University in order to leverage the power of R for teaching quantitative concepts.

**Read the book:** <https://mikheyevlab.github.io/ecology-textbook/>

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/MikheyevLab/ecology-textbook/main?urlpath=rstudio)

## Source code organization

The book is a [Quarto](https://quarto.org) book in `book/`:

- `book/NN-chapter-name.qmd` — one file per chapter, numbered as in the original book
- `book/_quarto.yml` — book configuration and chapter list
- `book/_common.R` — shared R setup sourced by every chapter, including the **ggplot theme and colour palette** (edit plot styling here, not in individual chapters)
- `book/styles.scss` — site styling
- `book/img/` — static images, `book/data/` — data files read by the code
- `book/_freeze/` — cached results of the R code (commit this)
- `book/_source/` — raw text from the original book, for reference

### Writing conventions

- Figures: `![Caption.](img/fig_8_1.png){#fig-8-1 fig-alt="..."}`, referenced as `@fig-8-1`.
- Code-generated figures: an R chunk with `#| label: fig-8-2` and `#| fig-cap: "..."`.
- Equations: `$$ ... $$ {#eq-8-1}`, referenced as `@eq-8-1`.
- Boxes: `::: {#box-10-1}` ... caption as the last paragraph ... `:::`, referenced as `@box-10-1`.
- Programs (code listings): R chunk with `#| lst-label: lst-10-1` and `#| lst-cap: "..."`, referenced as `@lst-10-1`.
- Chapters: `@sec-predator-prey` etc. (see the `{#sec-...}` id on each chapter's title).
- Every chapter that runs R starts with a hidden chunk that runs `source("_common.R")`.

## Building the book

You need [Quarto](https://quarto.org/docs/get-started/) and R. Install the R packages with

```
Rscript install.R
```

Then, from the repository root:

```
quarto preview book   # live preview while editing
quarto render book    # full build into book/_book/
```

## Publishing

Pushing to `main` publishes the book to GitHub Pages automatically (`.github/workflows/publish.yml`). CI does not run R; it uses the frozen results in `book/_freeze/`. So after changing any R code, render locally (`quarto render book`) and commit the updated `book/_freeze/` along with your change.

To publish by hand instead: `quarto publish gh-pages book`.
