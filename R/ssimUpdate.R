# Copyright © 2017 Apex Resource Management Solution Ltd. (ApexRMS). All rights reserved.
# MIT License
#' @include AAAClassDefinitions.R
NULL

#' Apply updates.
#'
#' Apply updates to a SyncroSim Library,or a Project or Scenario associated with a Library.
#'
#' @param ssimObject  SsimLibrary/Project/Scenario
#' @return "saved" or a failure message from the console.
#' @export
setGeneric('ssimUpdate',function(ssimObject) standardGeneric('ssimUpdate'))
setMethod('ssimUpdate', signature(ssimObject="SsimObject"), function(ssimObject) {
  #x= myLibrary
  #args = list(update=NULL,lib=.filepath(x));session=.session(x)
  tt = command(list(update=NULL,lib=.filepath(ssimObject)),.session(ssimObject))
  return(tt[1])
})