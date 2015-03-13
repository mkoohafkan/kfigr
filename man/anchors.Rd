\name{anchors}
\alias{anchors}
\title{Anchor Information}
\description{Retrieves diagnostics such as the anchor index and history. Use for 
code verification and troubleshooting. Also used internally by kfigr.}
\usage{anchors(tag)}
\arguments{
  \item{tag}{
}
}

\value{If \code{tag = "index"}, a dataframe listing all anchored chunks. If 
\code{tag = "history"}, a dataframe listing all references made, in order.
If the value of \code{tag} matches a specific \code{type}, all references 
of that \code{type} are provided in a list. If \code{tag} is missing, all 
references of all types are provided in a nested list.}

\author{Michael Koohafkan}




\examples{
figr("foo", type="figure")
figr("bar", type="table")
figr("test", type="figure")
anchors()
}
