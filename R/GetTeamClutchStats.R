#' Team Clutch Stats
#'
#' @param year NBA season (e.g. 2008 for the 2007-08 season)
#' @param measure.type Either 'Basic' or 'Advanced'
#' @param season.type 'Regular Season' or 'Playoffs'
#' @param per.mode 'Per Game' or 'Totals'
#' @return data frame with team clutch stats
#' @keywords team
#' @importFrom httr GET content add_headers
#' @export
#' @examples
#' GetTeamClutchStats(2014)

GetTeamClutchStats <- function(year = CurrentYear(), 
                               measure.type = 'Basic',
                               season.type = 'Regular Season', 
                               per.mode = 'Totals',
                               quarter = 0) {
  
  options(stringsAsFactors = FALSE)
  
  request <- GET(
    "http://stats.nba.com/stats/leaguedashteamclutch",
    query = list(
      AheadBehind = 'Ahead or Behind',
      ClutchTime = 'Last 5 Minutes',
      Conference = "",
      DateFrom = "",
      DateTo = "",
      Division = "",
      GameScope = "",
      GameSegment = "",
      LastNGames = 0,
      LeagueID = "00",
      Location = "",
      MeasureType = CleanParam(measure.type),
      Month = 0,
      OpponentTeamID = 0,
      Outcome = "",
      PORound = 0,
      PaceAdjust = 'N',
      PerMode = CleanParam(per.mode),
      Period = quarter,
      PlayerExperience = "",
      PlayerPosition = "",
      PlusMinus = "N",
      PointDiff = 5,
      Rank = "N",
      Season = YearToSeason(year),
      SeasonSegment = "",
      SeasonType = season.type,
      ShotClockRange = "",
      StarterBench = "",
      TeamID = 0,
      VsConference = "",
      VsDivision = ""
    )
  )
  
  content <- content(request, 'parsed')[[3]][[1]]
  stats <- ContentToDF(content)
  
  # Clean data frame
  char.cols <- which(colnames(stats) %in% CHARACTER.COLUMNS)
  stats[, -char.cols] <- sapply(stats[, -char.cols], as.numeric)
  
  return(stats)
}