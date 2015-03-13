\name{figr}
\alias{figr}
\title{Code Chunk Reference}
\description{Reference a code chunk.}
\usage{figr(label, prefix, link, type)}
\arguments{
  \item{label}{The code chunk label.}
  \item{prefix}{logical: return the prefix (chunk type) along with the rank.}
  \item{link}{Logical: Place an HTML link to the anchor?}
  \item{type}{The type of the referenced chunk.}
}

\value{A text or url reference to the code chunk.}

\author{Michael Koohafkan}




\examples{
figr("test", type="reference")
figr("test")
figr("test", TRUE, link=FALSE)
if(interactive()){
  opts_knit$set(kfigr.prefix=TRUE, kfigr.link=TRUE)
  figr("test")
}
}
