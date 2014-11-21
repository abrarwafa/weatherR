### About weatherR Package

    library(weatherR)

weatherR package allows you to access 5 days (i.e. today's and the next
four days') weather forecast information such as temperature in C,
temperature in F, Chance of rain, Humidity, Wind, etc in R.

This package accesses worldweatheronline.com to check weather forecast
(i.e temperature, chances of rain) for 5 days (today's or the next four
days'), and let you know if you can go hiking on that day based on
chances of rain.

* * * * *

Functions: Description and Examples
-----------------------------------

### getForecast(city, date)

This function returns 5 days (today's and the next four days') weather
information including Temperature in C, Weather Condition and Chances of
Rain in percent for any city around the world.

It takes 2 arguments:

-   The city you want to check its weather forecast.

-   The day you want to check its weather forecast.

getForecast() returns data.frame that includes weather information
including Temperature in C, Weather Condition and Chances of Rain.

**Examples of usage:**

To check London's weather forecast for a specific date:
`getForecast("London", "2014-11-29")`

To check today's weather forecast for Vancouver:

    getForecast()

    ##   Temperature  Condition Precent.chance.of.rain
    ## 1          10 Light rain                     99

To check today's weather forecast for Seattle:

    getForecast("Seattle")

    ##   Temperature Condition Precent.chance.of.rain
    ## 1          11  Overcast                      0

### goHike(city, date)

This function checks if you can go hiking today or on the next four days
in any city around the world based on chances of rain.

It takes two arguments:

-   The city you want to go Hiking in.

-   The day you want to go Hiking on.

goHike() returns:

"It's a lovely day for Hiking! :D" if chances of rain is less than 20
percent,

"It might rain today! You might want to stay home", if chances of rain
is between 20 percent and 60 percent, and

"Ops! It's a rainy day, you better stay home :(" otherwise.

**Examples of usage:**

To check if you can go hiking on a specified date in London:
`getForecast("London", "2014-11-29")`

To check if you can go hiking today in Vancouver:

    goHike()

    ## [1] "Ops! It's a rainy day, you better stay home :("

To check if you can go hiking today in Seattle:

    goHike("Seattle")

    ## [1] "It's a lovely day for Hiking! :D"

### getweatherdata(city)

*This is a helper function (i.e. user can't call it).*

It retrieves 5 days (today's and the next four days') weather
information such as temperature in C, temperature in F, Chance of rain,
Humidity, Wind, etc for any city around the world.

It takes one argument: The city you want to retrieve its weather data.

getweatherdata() returns data.frame that includes weather information
for the specified city.

**Examples of usage:**

To retrieves weather data for Vancouver: `getweatherdata()`

To retrieve weather data for London: `getweatherdata("London")`

### checkDate(date)

*This is a helper function (i.e. user can't call it).*

Since the weather forecast data is only available for 5 days, this
function checks if the specified date is within the 5 days (i.e. today's
or one of the next 4 days' date).

It takes one argument: user specified date.

**Example of usage:**

To check if a specific date is within the range:
`checkDate("2014-11-29")`

### internet\_connection()

*This is a helper function (i.e. user can't call it).*

It checks if the user is connected to the internet.

It takes no argument.

internet\_connection() returns a logical that is only TRUE if an
internet connection can be established

**Example of usage:**

To check internet connection: `internet_connection()`

* * * * *

Reflections
-----------

-   One of the problems that I could not solve is the time zone
    difference. For example, if the user tried to check today's weather
    forecast or if they can go hiking today in London and it was past
    4pm in Vancouver, they will get an error because the next day has
    already started in London. The same goes if you tried to check for
    Toronto after 9pm in Vancouver. I think creating a function that
    checks for the time zone difference might solve this.

-   I had a similar problem with checking the date range since the
    weather forecast data is only available for 5 days. However, I
    managed to solve it by writing the `checkDate()` function.

-   To check the date argument format of my functions, I first tried to
    use `as.Date` with `stopifnot`, but it was giving me an error since
    `as.Date` does not return a logical. Then I noticed that it returns
    `NA` if the date was wrong. So I used `is.na` along with `if stop`
    statement.

-   Another problem I encountered, was not being able to get `roxygen2`
    to update the `NAMESPACE` file, in the sense that every time I run
    `devtools::document()`, I would get a warning message stating that
    `NAMESPACE` was not updated. I tired different things and looked
    online but couldn't find any solution. Thus, I decided to re-build
    my package from scratch and oddly it worked.

-   Finally, the last problem I faced was getting an error every time I
    run `check()` stating that vignette failed to find the functions I
    wrote in order to run the examples. I ended up adding loading my
    package at the beginning of this document using `library(weatherR)`
    to solve this problem.
