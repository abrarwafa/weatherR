#' Is it a good day for hiking?
#'
#' This function tells you if it's a good day for hiking based on Chances of Rain.
#'
#' If you want to check if you can go hiking today or on the next four days
#' in any city around the world based on weather conditions (i.e chances of rain),
#' you don't have to go browse the Forecast news.
#' Instead, You can now ask R directly, without tempting yourself
#' by firing up your web browser.
#'
#' @param city The city you want to go Hiking in.
#' @param date The day you want to go Hiking on.
#'
#' @return \code{goHike} returns
#'
#' \code{"It's a lovely day for Hiking! :D"}
#' if chances of rain is less than 20 percent,
#'
#' \code{"It might rain today! You might want to stay home"}
#' if chances of rain is between 20 percent and 60 percent, and
#'
#' \code{"Ops! It's a rainy day, you better stay home :("} otherwise.
#' @keywords misc
#' @note case in \code{city} is ignored
#'
#' \code{date} should be today's or one of the next four days' date in "yyyy-mm-dd" formate
#' @export
#' @examples
#' # checks if you can go hiking today in Vancouver
#' goHike()
#'
#' # checks if you can go hiking today in Toronto
#' goHike("Toronto")
#'

goHike <- function(city = "Vancouver", date = Sys.Date()){

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

  # Get data
  weather <- getForecast(city, date)

  # get chances of rain
  rain  <- levels(weather$Precent.chance.of.rain)

  # check chances of rain and based on it decide if user can go hiking
  if (rain <= 20){
    print("It's a lovely day for Hiking! :D")
  } else if(rain >= 21 && rain <=60){
    print("It might rain today! You might want to stay home")
  } else if (rain >= 61){
    print("Ops! It's a rainy day, you better stay home :(")
  }
}
