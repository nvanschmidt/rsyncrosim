% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/run.R
\name{run}
\alias{run}
\alias{run,character-method}
\alias{run,list-method}
\alias{run,SsimObject-method}
\alias{run,BreakpointSession-method}
\title{Run scenarios}
\usage{
run(
  ssimObject,
  scenario = NULL,
  summary = F,
  jobs = 1,
  transformerName = NULL,
  forceElements = F
)

\S4method{run}{character}(
  ssimObject,
  scenario = NULL,
  summary = F,
  jobs = 1,
  transformerName = NULL,
  forceElements = F
)

\S4method{run}{list}(
  ssimObject,
  scenario = NULL,
  summary = F,
  jobs = 1,
  transformerName = NULL,
  forceElements = F
)

\S4method{run}{SsimObject}(
  ssimObject,
  scenario = NULL,
  summary = F,
  jobs = 1,
  transformerName = NULL,
  forceElements = F
)

\S4method{run}{BreakpointSession}(ssimObject, scenario, summary, jobs, forceElements)
}
\arguments{
\item{ssimObject}{SsimLibrary/Project/Scenario or a list of Scenarios. Or the path to a library on disk.}

\item{scenario}{character, integer, or vector of these. Scenario names or ids. Or NULL. Note that integer ids are slightly faster.}

\item{summary}{Logical. If FALSE (default) result Scenario objects are returned. If TRUE (faster) result scenario ids are returned.}

\item{jobs}{Integer. The number of jobs to run. Passed to SyncroSim where multithreading is handled.}

\item{transformerName}{Character.  The name of the transformer to run.}

\item{forceElements}{Logical. If TRUE then returns a single result scenario as a named list; otherwise returns a single result scenario as a Scenario object. Applies only when summary=FALSE.}
}
\value{
If summary=F a result Scenario object or a named list of result Scenarios. The name is the parent scenario for each result. If summary=T returns summary info for result scenarios.
}
\description{
Run one or more SyncroSim scenarios.
}
\details{
Note that breakpoints are ignored unless ssimObject is a single scenario.
}
