% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/GetDefenseDashboard.R
\name{GetDefenseDashboard}
\alias{GetDefenseDashboard}
\title{Player's defensive dashboard}
\usage{
GetDefenseDashboard(player, year = CurrentYear(),
  season.type = "Regular Season", per.mode = "Totals", player.ids)
}
\arguments{
\item{player}{NBA player (e.g. "James Harden")}

\item{year}{NBA season (e.g. 2008 for the 2007-08 season)}

\item{season.type}{Either 'Regular Season' or 'Playoffs'}

\item{per.mode}{Either 'Totals', 'Per Game'}

\item{player.ids}{Players and their IDs}
}
\value{
data frame with player's defensive stats
}
\description{
Player's defensive dashboard
}
\examples{
GetDefenseDashboard('James Harden')
}
\keyword{defense}
\keyword{player}

