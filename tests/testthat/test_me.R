testthat::context("getForecast function: check city argument")

testthat::test_that("city argument case is ignored", {
  expect_equal(getForecast("vancouver"), getForecast("VANCOUVER"))
})

testthat::test_that("city argument should be charachter",{
  expect_error(getForecast(city  = 4))
})


testthat::context("getForecast function: check date argument")

testthat::test_that("date is not in correct format",{
  expect_error(getForecast("Vancouver", date = "201-411-12"))
})

testthat::context("goHike function: check city argument")

testthat::test_that("case is ignored", {
  expect_equal(goHike("vancouver"), goHike("VANCOUVER"))
})

testthat::context("goHike function: check date argument")

testthat::test_that("date is not in correct format",{
  expect_error(getForecast("Vancouver", date = "201-411-12"))
})

testthat::test_that("city argument should be charachter",{
  expect_error(getForecast(city  = 4))
})

testthat::test_that("date is in correct format",{
  expect_error(getForecast("Vancouver", date = "201-411-12"))
})


