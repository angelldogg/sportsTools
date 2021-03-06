% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetSynergyStats.R
\name{GetSynergyStats}
\alias{GetSynergyStats}
\title{Synergy stats on players or teams}
\usage{
GetSynergyStats(year = CurrentYear(), play.type, side = "Offensive",
  type = "Player", season.type = "Regular Season")
}
\arguments{
\item{year}{2015 for 2014-15 season}

\item{play.type}{statistic to pull (e.g. 'Postup', 'Isolation', 'PRRollMan', 'PRBallHandler', 'Cut', 'OffRebound')}

\item{side}{either 'Offensive' or 'Defensive'}

\item{type}{either 'Player' or 'Team'}

\item{season.type}{either 'Regular Season' or 'Playoffs'}
}
\value{
data frame of stats
}
\description{
Synergy stats on players or teams
}
\examples{
GetSynergyStats('Postup')
}
\keyword{synergy}

