hook_anchor <- function(before, options, envir){
  if (before){  
    invisible(index(options$label, options$anchor))
    paste('<a name="', options$label, '"></a>', sep='')
  }
}
