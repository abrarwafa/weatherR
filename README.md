### weatherR

weatherR package allows you to access 5 days (i.e. today's and the next four days') weather forecast information such as temperature in C, temperature in F,
Chance of rain, Humidity, Wind, etc in R.

If you want to check the weather information for today or the next 4 days
for any city around the world, you don't have to go browse the Forecast news.
Instead, You can now ask R directly, without tempting yourself
by firing up your web browser.

This package accesses worldweatheronline.com to check weather forecast (i.e temperature, chances of rain) for 5 days (today's or the next four days'), and let you know if you can go hiking on that day based on chances of rain.

***

### Installation

weatherR can be installed from github using:

```R
library(devtools)
install_github("abrarwafa/weatherR")
```

***

### Getting started

To get started, read the weatherR [vignette](https://github.com/abrarwafa/weatherR/blob/master/vignettes/overview.md) or view it using:
```R
vignette("overview", "weatherR")
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

- The two functions take two arguments, which should be enclosed between double quotation, *city* and *date*. Their default values are *city = "Vancouver"* and *date = Sys.date()* which is today's date. 

- For *city* argument, make sure the entered city is spelled correctly. As for cities that are composed of two or more words, add underscore between each word (e.g. "Los_Angeles").

- On the other hand, *date* argument should be entered in "yyyy-mm-dd" format (e.g. "2014-11-26").

- If you are to use the default date, which is today's date, please mind time zone difference *check the __Reflections__ in [vignette](https://github.com/abrarwafa/weatherR/blob/master/vignettes/overview.md) for more details*.




