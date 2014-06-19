\name{anchors}
\alias{anchors}
\title{anchor index}
\description{retrieve a copy of the anchor index used by kfigr}
\usage{anchors()}
\details{The anchor index cannot be modified by the user, but are able to view it for code verification and troubleshooting.}


\author{Michael Koohafkan}




\examples{
figr("foo", type="figure")
figr("bar", type="table")
figr("test", type="figure")
anchors()
}
