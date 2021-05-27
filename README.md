kfigr
=====

<!-- badges: start -->
[![R-CMD-check](https://github.com/mkoohafkan/kfigr/workflows/R-CMD-check/badge.svg)](https://github.com/mkoohafkan/kfigr/actions)
<!-- badges: end -->

kfigr is a streamlined cross-referencing system for R markdown documents that 
integrates with the [knitr](https://github.com/yihui/knitr) package. It defines 
a hook for anchoring code chunks and tracks chunks for cross-referencing 
document elements like figures, tables and code blocks.

Update 2016-04-23
-----------------

I recently found out about [bookdown](https://github.com/rstudio/bookdown) which 
provides advanced labeling and cross-referencing functionality with `pandoc`. 
I encourage you to try `bookdown` as `kfigr` does not always play nice with 
`pandoc` and doesn't support markdown-->PDF.

Update 2015-07-14
-----------------

Version 1.2 submitted to CRAN! This version makes package attaching and 
detaching a bit cleaner. I have also converted all documentation from 
`inlinedocs` to `Roxygen2`. Package functionality remains unchanged.
