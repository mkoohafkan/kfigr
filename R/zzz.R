.onLoad = function(libname, pkgname){ 
  # default options
  opts_knit$set(kfigr.link=TRUE, kfigr.prefix=FALSE)
  # anchor hook definition
  knit_hooks$set(anchor = function(before, options, envir) {
    if (before){  
      invisible(index(options$label, options$anchor))
      paste('<a name="', options$label, '"></a>', sep='')
    }
  })
  anchorenv <- new.env(parent=getNamespace("kfigr"))
  assign("anchorenv", anchorenv, envir=getNamespace("kfigr"))
  assign("types", character(0), envir=anchorenv)
  assign("index", list(), envir=anchorenv)
  assign("history", list(), envir=anchorenv)
}
