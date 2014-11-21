#' Is the date within the data's 5 days range?
#'
#' This function checks if the specified date is within weather data 5 days
#' (i.e. today's date or one of the next 4 days)
#' since the weather forecast data is only available for these dates.
#'
#'
#' @param date user specified date
#' @return \code{checkDate} returns error
#' \code{"date should be either today or one of the next 4 days"}
#' if date is not either today's date or one of the next four days' date
#' @examples
#' # checkDate("2014-11-29")
#'
checkDate <- function(date){
  date.range <- seq.Date(from=as.Date(Sys.Date()), to=as.Date(as.Date(Sys.Date()+4)), by='1 day')
  date.range <- as.character(date.range)
  # date = as.Date(date, format = "%yyyy-%mm-%dd")
  if(!(date%in% date.range)){
    stop('date should be either today or one of the next 4 days')
  }

}


# ((date == date.range[[1]])|(date == date.range[[2]])|(date == date.range[[3]])|(date == date.range[[4]])|(date == date.range[[5]]))
