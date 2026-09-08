# Foundational Mathematics for Water Engineering

This is the Bookdown source project for *Foundational Mathematics for Water Engineering* (MATH 128).

## Scope

The project contains the welcome page, six substantive chapters, a complete glossary, a formula-reference appendix, and an APA-style bibliography. The bibliography is anchored in `09-references.Rmd` so Bookdown can associate the final References page with a source file when the HTML book is split by section. The chapters follow the sequence and coverage of the MATH 128 Fall 2026 notes and expand the source material with additional explanation and water-engineering applications. Definitions appear in individual boxes immediately before their first use, and named results appear in distinct theorem boxes. Every substantive topic page includes at least four worked examples placed beside the concepts they illustrate, a Try It exercise after each worked example, an applied water-engineering problem, and eight additional practice problems with dropdown solutions. At least three practice problems in each set use Water Engineering Technology contexts.

## Render with Bookdown

From R, install the required packages if necessary and render the project from its root folder:

```r
install.packages(c("bookdown", "rmarkdown"))
bookdown::render_book("index.Rmd", "bookdown::gitbook")
bookdown::render_book("index.Rmd", "bookdown::pdf_book")
```

The HTML site is written to `docs/`. The GitBook configuration uses `split_by: section`, so substantive `##` sections become individual navigable HTML pages.

The PDF build uses XeLaTeX, `tcolorbox`, and the included Lua filter. If a local TeX installation is incomplete, TinyTeX is the simplest option:

```r
install.packages("tinytex")
tinytex::install_tinytex()
```

To publish through GitHub Pages, commit the full project, render the GitBook, push the generated `docs/` folder, and set the repository's Pages source to the `docs` folder on the publishing branch. Keep the relative directory structure intact so internal links and styles continue to work.

## Preview

`preview.html` is a standalone, browser-searchable HTML preview generated without R. It contains the complete manuscript and is intended for reviewing content and visual style when Bookdown is not available.
