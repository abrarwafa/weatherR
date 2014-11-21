#' What is the forecast for today's weather?
#'
#' This function returns 5 days (today's and the next four days') weather information
#' including Temperature in C, Weather Condition and Chances of Rain.
#'
#' If you want to check the weather forecast for today or the next 4 days
#' for any city around the world, you don't have to go browse the Forecast news.
#' Instead, You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#'
#' @param city The city you want to check its weather forecast.
#' @param date The day you want to check its weather forecast.
#' @return \code{getForecast} returns \code{data.frame} that includes weather information
#' including Temperature in C, Weather Condition and Chances of Rain.
#' @keywords misc
#' @note case in \code{city} is ignored
#'
#' \code{date} should be today's or one of the next four days' date in "yyyy-mm-dd" formate
#' @export
#' @examples
#' # returns today's weather forecast for Vancouver
#' getForecast()
#'
#' # returns today's weather forecast for Seattle
#' getForecast("Seattle")
#'
#'

getForecast <- function(city = "Vancouver", date = Sys.Date()){

  # check that city argument is character
  assertthat::assert_that(is.character(city))

  # check date argument format
  if(is.na(as.Date(date, format = "%Y-%m-%d"))){
    stop('date argument is not in the correct format "YYYY-MM-DD"')
  }

  # check if date is within the weather data range
  checkDate(as.character(date))

  # Check internet connection
  if(!(internet_connection())){
    stop('You need to be connected to the internet')
  }

  # Get all weather information
  weather.data <- getweatherdata(city)

  # Get specified weather information for today
  if (identical(as.character(date), as.character(levels(weather.data$data.weather.date)))){
    temp <- weather.data$data.current_condition.temp_C
    cond <- weather.data$data.current_condition.value
    rain <- levels(weather.data$data.weather.hourly.chanceofrain)
    weather <- data.frame("Temperature" = temp, "Condition" = cond, "Precent chance of rain" = rain)
    return(weather)
  }
  # Get specified weather information for the second day
  else if (identical(as.character(date), as.character(levels(weather.data$data.weather.date.1)))){
    temp <- weather.data$data.weather.hourly.tempC.11
    cond <- weather.data$data.weather.hourly.value.22
    rain <- levels(weather.data$data.weather.hourly.chanceofrain.11)
    weather <- data.frame("Temperature" = temp, "Condition" = cond, "Precent chance of rain" = rain)
    return(weather)
  }
  # Get specified weather information for the third day
  else if (identical(as.character(date), as.character(levels(weather.data$data.weather.date.2)))){
    temp <- weather.data$data.weather.hourly.tempC.18
    cond <- weather.data$data.weather.hourly.value.36
    rain <- levels(weather.data$data.weather.hourly.chanceofrain.18)
    weather <- data.frame("Temperature" = temp, "Condition" = cond, "Precent chance of rain" = rain)
    return(weather)
  }
  # Get specified weather information for the fourth day
  else if (identical(as.character(date), as.character(levels(weather.data$data.weather.date.3)))){
    temp <- weather.data$data.weather.hourly.tempC.26
    cond <- weather.data$data.weather.hourly.value.52
    rain <- levels(weather.data$data.weather.hourly.chanceofrain.26)
    weather <- data.frame("Temperature" = temp, "Condition" = cond, "Precent chance of rain" = rain)
    return(weather)
  }
  # Get specified weather information for the fifth day
  else if (identical(as.character(date), as.character(levels(weather.data$data.weather.date.4)))){
    temp <- weather.data$data.weather.hourly.tempC.36
    cond <- weather.data$data.weather.hourly.value.72
    rain <- levels(weather.data$data.weather.hourly.chanceofrain.36)
    weather <- data.frame("Temperature" = temp, "Condition" = cond, "Precent chance of rain" = rain)
    return(weather)

  }

}
