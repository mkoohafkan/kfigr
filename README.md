# kfigr

<!-- badges: start -->
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/kfigr)](http://cran.r-project.org/package=kfigr)
[![Project Status: Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![R-CMD-check](https://github.com/mkoohafkan/kfigr/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/mkoohafkan/kfigr/actions/workflows/R-CMD-check.yaml)
[![CRAN_Download_Badge](https://cranlogs.r-pkg.org/badges/grand-total/kfigr)](http://cran.r-project.org/package=kfigr)
<!-- badges: end -->

A streamlined cross-referencing system for R markdown documents that 
integrates with the [knitr](https://github.com/yihui/knitr) package. It defines 
a hook for anchoring code chunks and tracks chunks for cross-referencing 
document elements like figures, tables and code blocks.

`{kfigr}` works only for markdown-->HTML. If you need support for
markdown-->PDF, see the [{bookdown}](https://github.com/rstudio/bookdown)
provides advanced labeling and cross-referencing functionality with
`pandoc` that works with both HTML and PDF outputs.
