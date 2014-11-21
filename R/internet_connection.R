#' Are you connected to the internet?
#'
#' This function checks if the user is connected to the internet.
#'
#'
#' @param takes no argument
#' @return \code{internet_connection} returns a logical that is only TRUE
#' if an internet connection can be established
#' @examples
#' # internet_connection()
#'

internet_connection <- function() {
  tryCatch({RCurl::getURL("www.google.com"); TRUE},
           error = function(err) FALSE)
}
