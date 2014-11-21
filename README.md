### weatherR

weatherR package allows you to access 5 days (i.e. today's and the next four days') weather forecast information such as temperature in C, temperature in F,
Chance of rain, Humidity, Wind, etc in R.

It accesses worldweatheronline.com to check weather forecast (i.e temperature, chances of rain) for 5 days (today's or the next four days'), and let you know if you can go hiking on that day based on chances of rain.

***

### Installation

weatherR can be installed from github using:

```R
library(devtools)
install_github("abrarwafa/weatherR")
```

***

### Getting started

To get started, read the weatherR vignette: 

```R
browseVignettes("weatherR")
```

You can then go a head and load the pacakge using:

```R
library(weatherR)
```

***

### Usage


To check today's weather forecast for Vancouver:
```R
getForecast()
```
To check Toronto's weather forecast for a specific date:
```R
getForecast("Toronto", "2014-11-29")
```

To check if you can go hiking today in Vancouver:
```R
goHike()
```

To check if you can go hiking on a specified date in London: 
```R
getForecast("London", "2014-11-29")
```

***

### Notes

Please mind time zone difference (check the vignette for more details)




