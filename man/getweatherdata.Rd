% Generated by roxygen2 (4.0.2): do not edit by hand
\name{getweatherdata}
\alias{getweatherdata}
\title{How is the weather like today?}
\usage{
getweatherdata(city = "vancouver")
}
\arguments{
\item{city}{The city you want to retrieve its weather data}
}
\value{
\code{getweatherdata} returns \code{data.frame} that includes weather information
}
\description{
This function returns 5 days (today's and the next four days') weather information
such as temperature in C, temperature in F, Chance of rain, Humidity, Wind, etc
for any city around the world.
}
\note{
case in \code{city} is ignored
}
\examples{
# retrieves weather data for Vancouver
# getweatherdata()

# retrieves weather data for London
# getweatherdata("London")
}
\keyword{misc}

