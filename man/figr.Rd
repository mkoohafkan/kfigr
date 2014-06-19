\name{figr}
\alias{figr}
\title{code chunk reference}
\description{use figr to reference a code chunk}
\usage{figr(label, prefix, link, type)}
\arguments{
  \item{label}{the code chunk label}
  \item{prefix}{logical: return the figr prefix along with the rank}
  \item{link}{Logical: Place a link to the anchor?}
  \item{type}{the type of figr specified}
}

\value{a text or url reference to the figr}

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
