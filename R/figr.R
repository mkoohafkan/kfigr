figr <- structure(function#code chunk reference
### use figr to reference a code chunk.
(label, 
### the code chunk label.
prefix,
### logical: return the figr prefix along with the rank.
link,
### Logical: Place a link to the anchor?
type
### the type of the referenced chunk.
){
  # get defaults if needed
  if(missing(prefix))
    prefix <- opts_knit$get("kfigr.prefix")  
  if(missing(link))
    link <- opts_knit$get("kfigr.link")
  # check type
  if(missing(type)){
    if(!label %in% names(get("index", envir=anchorenv)))
      stop("When referencing an undefined figr, you must specify the figr type.")
    else
      type <- get("index", envir=anchorenv)[[label]]
  }
  # get reference
  if(prefix)
    txt <- paste(type, index(label, type))
  else
    txt <- index(label, type)
  if(link)
    paste('<a href="#', label,  '">', txt, "</a>", sep="")
  else
    txt
### a text or url reference to the figr.
}, ex = function(){
  figr("test", type="reference")
  figr("test")
  figr("test", TRUE, link=FALSE)
  if(interactive()){
    opts_knit$set(kfigr.prefix=TRUE, kfigr.link=TRUE)
    figr("test")
  }
})
