---
output:
  html_document:
    keep_md: yes
---
LOTR R Markdown file
========================================================

This is an R Markdown document. In this example, its purpose is to allow us to demonstrate how to use `rmarkdown::render()` without the help of RStudio's buttons. We will, in fact, call `rmarkdown::render()` from within a `Makefile`.



Here is a plot we are making "on the fly" via code in an R chunk.
![](03_lotr-report_files/figure-html/stripplot-1.png)<!-- -->

Here is a pre-made plot we are merely embedding in the compiled document.
![barchart of total words by Race](barchart_total-words-by-race.png)
