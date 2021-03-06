% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/delete.R
\name{delete}
\alias{delete}
\alias{delete,character-method}
\alias{delete,SsimObject-method}
\title{Delete library, project, scenario, datasheet}
\usage{
delete(
  ssimObject,
  project = NULL,
  scenario = NULL,
  datasheet = NULL,
  force = F
)

\S4method{delete}{character}(
  ssimObject,
  project = NULL,
  scenario = NULL,
  datasheet = NULL,
  force = F
)

\S4method{delete}{SsimObject}(
  ssimObject,
  project = NULL,
  scenario = NULL,
  datasheet = NULL,
  force = F
)
}
\arguments{
\item{ssimObject}{SsimLibrary/Project/Scenario, or path to a library.}

\item{project}{character string, numeric, or vector of these. One or more project names or ids. Note that project argument is ignored if ssimObject is a list. Note that integer ids are slightly faster.}

\item{scenario}{character string, numeric, or vector of these. One or more scenario names or ids. Note that scenario argument is ignored if ssimObject is a list. Note that integer ids are slightly faster.}

\item{datasheet}{character string or vector of these. One or more datasheet names.}

\item{force}{logical. If FALSE (default), user will be prompted to approve removal of each item.}
}
\value{
A list of "saved" or failure messages for each item.
}
\description{
Deletes one or more items. Note this is irreversible
}
\examples{
\donttest{
myLibrary <- ssimLibrary("mylib")
myProject <- project(myLibrary, project = "a project")
project(myLibrary)
delete(myLibrary, project = "a project")
project(myLibrary)
}
}
