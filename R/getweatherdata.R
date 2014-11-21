#' How is the weather like today?
#'
#' This function returns 5 days (today's and the next four days') weather information
#' such as temperature in C, temperature in F, Chance of rain, Humidity, Wind, etc
#' for any city around the world.
#'
#' If you want to check the weather information for today or the next 4 days
#' for any city around the world, you don't have to go browse the Forecast news.
#' Instead, You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#'
#' @param city The city you want to retrieve its weather data
#' @return \code{getweatherdata} returns \code{data.frame} that includes weather information
#' @keywords misc
#' @note case in \code{city} is ignored
#' @examples
#' # retrieves weather data for Vancouver
#' # getweatherdata()
#'
#' # retrieves weather data for London
#' # getweatherdata("London")
#'

getweatherdata <- function(city = "vancouver") {

  # worldweatheronline API
  base.url <- "http://api.worldweatheronline.com/free/v2/weather.ashx?"
  finalurl <- paste0(base.url,'q=', city ,'&format=json&num_of_days=5&key=adb2be1baaa4c850c9ce962cf8973')

  # connect to the url
  conn <- url(finalurl)
  raw.data <- suppressWarnings(readLines(conn, n=-1L, ok=TRUE))

  # convert the metadata into data.frame
  weather.data <- as.data.frame(rjson::fromJSON(paste(raw.data, collapse="")))

  # close the connection to worldweatheronline
  close(conn)

  # return data.frame
  return(weather.data)

}
