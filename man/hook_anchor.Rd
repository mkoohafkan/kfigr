\name{hook_anchor}
\alias{hook_anchor}
\title{Anchor Chunk Hook Extension to \pkg{knitr}}

\usage{
hook_anchor(before, options, envir)
}

\arguments{
\item{before, options, envir}{ see references}
}

\description{
\pkg{knitr} hook functions are called when the corresponding chunk options are 
not \code{NULL} to do additional jobs beside the R code in chunks. \pkg{kfigr}
provides the hook "anchor" which adds an HTML anchor tag immediately above
a code chunk.
}

\details{
the function hook_anchor is set as a hook in \pkg{knitr} when \pkg{kfigr} is 
attached (and removed \pkg{kfigr} is detached). It writes an HMTL anchor tag 
directly above a code chunk in the form \code{<a name="chunk-name"></a>} where 
\code{chunk-name} is the chunk label contained in the argument 
\code{options$label}.
}

\examples{
\dontrun{
require(knitr)
knit_hooks$set(anchor = hook_anchor)
# then in code chunks, use e.g. the option anchor="figure"
}
}
\references{
\url{http://yihui.name/knitr/hooks#chunk_hooks}
}
\seealso{
\code{\link{figr}}, \code{\link{anchors}}
}
