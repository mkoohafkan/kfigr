index <- function#chunk indexing
### index a chunk with figr
(label,
### the chunk label
type
### the type of figr to be indexed
 ){
  ##details<<This is an internal function used by kfigr. It is not designed 
  ##to be called by the user directly.
  ##seealso<<\code{\link{figr}}, \code{\link{anchors}}
  if (!type %in% get("types", envir=anchorenv)){  # check or define the figr type
    assign("types", c(get("types", envir=anchorenv), type), 
	       envir=anchorenv)
    assign(type, character(0), envir=anchorenv)
  }
  if (!label %in% get(type, envir=anchorenv)){  # index the chunk if needed
    assign(type, c(get(type, envir=anchorenv), label), 
	       envir=anchorenv)
    assign("index", c(get("index", envir=anchorenv), setNames(list(type), label)), 
	       envir=anchorenv)
  }
  # get the figr index
  number = grep(label, anchors()[[type]])
  # update history
  assign("history", 
         c(get("history", envir=anchorenv), 
		   list(c(label, type, number))), 
		 envir=anchorenv)  
  return(number)
### rank of the indexed figr
}
