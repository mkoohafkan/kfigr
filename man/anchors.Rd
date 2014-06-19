\name{anchors}
\alias{anchors}
\title{anchor index}
\description{retrieve a copy of the anchor index used by kfigr}
\usage{anchors()}
\details{The anchor index cannot be modified by the user, but are able to view it for code verification and troubleshooting.}
\value{a list  of lists, with attributes \code{index} (a lookup table) and \code{history} (indexing sequence). The parent list contains a list for each defined figr type, each of which contain figr labels in the order that they were anchored.}

\author{Michael Koohafkan}




\examples{
figr("foo", type="figure")
figr("bar", type="table")
figr("test", type="figure")
anchors()
}
