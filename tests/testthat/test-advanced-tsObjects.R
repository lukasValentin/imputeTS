context("Advanced Time Series Objects Input")

test_that("zoo objects",
          {
            if (!requireNamespace("zoo", quietly = TRUE)) {
              warning("Pkg zoo needed for this test.",
                   call. = FALSE)
            }
            else {
              require("zoo")
              x <- as.zoo(tsAirgap)
              expect_that(anyNA(na.mean(x)), is_false())
              expect_that(anyNA(na.kalman(x)), is_false())
              expect_that(anyNA(na.interpolation(x)), is_false())
              expect_that(anyNA(na.locf(x)), is_false())
              expect_that(anyNA(na.ma(x)), is_false())
              expect_that(anyNA(na.random(x)), is_false())
              expect_that(anyNA(na.seadec(x)), is_false())
              expect_that(anyNA(na.seasplit(x)), is_false())
              expect_that(anyNA(na.replace(x)), is_false())
            }
           
          })

test_that("multivariate zoo objects",
          {
            if (!requireNamespace("zoo", quietly = TRUE)) {
              warning("Pkg zoo needed for this test.",
                   call. = FALSE)
            }
            else {
              require("zoo")
              x <- data.frame(tsAirgap, tsAirgap, tsAirgapComplete)
              x <- as.zoo(x)
              expect_that(anyNA(na.mean(x)), is_false())
              expect_that(anyNA(na.kalman(x)), is_false())
              expect_that(anyNA(na.interpolation(x)), is_false())
              expect_that(anyNA(na.locf(x)), is_false())
              expect_that(anyNA(na.ma(x)), is_false())
              expect_that(anyNA(na.random(x)), is_false())
              expect_that(anyNA(na.seadec(x)), is_false())
              expect_that(anyNA(na.seasplit(x)), is_false())
              expect_that(anyNA(na.replace(x)), is_false())
            }
          })


test_that("xts objects",
          {
            if (!requireNamespace("xts", quietly = TRUE)) {
              warning("Pkg xts needed for this test.",
                   call. = FALSE)
            }
            else {
              require("xts")
              x <- as.xts(tsAirgap)
              expect_that(anyNA(na.mean(x)), is_false())
              expect_that(anyNA(na.kalman(x)), is_false())
              expect_that(anyNA(na.interpolation(x)), is_false())
              expect_that(anyNA(na.locf(x)), is_false())
              expect_that(anyNA(na.ma(x)), is_false())
              expect_that(anyNA(na.random(x)), is_false())
              expect_that(anyNA(na.seadec(x)), is_false())
              expect_that(anyNA(na.seasplit(x)), is_false())
              expect_that(anyNA(na.replace(x)), is_false())
            }
          })


test_that("timeSeries objects",
          {
            if (!requireNamespace("timeSeries", quietly = TRUE)) {
              warning("Pkg timeSeries needed for this test.",
                   call. = FALSE)
            }
            else {
              require("timeSeries")
              x <- as.timeSeries(tsAirgap)
              expect_that(anyNA(na.mean(x)), is_false())
              expect_that(anyNA(na.kalman(x)), is_false())
              expect_that(anyNA(na.interpolation(x)), is_false())
              expect_that(anyNA(na.locf(x)), is_false())
              expect_that(anyNA(na.ma(x)), is_false())
              expect_that(anyNA(na.random(x)), is_false())
              expect_that(anyNA(na.seadec(x)), is_false())
              expect_that(anyNA(na.seasplit(x)), is_false())
              expect_that(anyNA(na.replace(x)), is_false())
            }
          })



test_that("tis objects",
          {
            if (!requireNamespace("tis", quietly = TRUE)) {
              warning("Pkg timeSeries needed for this test.",
                      call. = FALSE)
            }
            else {
              require("tis")
              x <- as.tis(tsAirgap)
              expect_that(anyNA(na.mean(x)), is_false())
              expect_that(anyNA(na.kalman(x)), is_false())
              expect_that(anyNA(na.interpolation(x)), is_false())
              expect_that(anyNA(na.locf(x)), is_false())
              expect_that(anyNA(na.ma(x)), is_false())
              expect_that(anyNA(na.random(x)), is_false())
              expect_that(anyNA(na.seadec(x)), is_false())
         #     expect_that(anyNA(na.seasplit(x)), is_false())
              expect_that(anyNA(na.replace(x)), is_false())
            }
          })


test_that("Imputation works for data.frame",
          {
            #Checking if NAs remain in data.frame
            x <- data.frame(tsAirgap, tsAirgap, tsAirgapComplete)
            expect_that(anyNA(na.mean(x)), is_false())
            expect_that(anyNA(na.kalman(x)), is_false())
            expect_that(anyNA(na.interpolation(x)), is_false())
            expect_that(anyNA(na.locf(x)), is_false())
            expect_that(anyNA(na.ma(x)), is_false())
            expect_that(anyNA(na.random(x)), is_false())
            expect_that(anyNA(na.seadec(x)), is_false())
            expect_that(anyNA(na.seasplit(x)), is_false())
            expect_that(anyNA(na.replace(x)), is_false())
          })

test_that("Imputation works for data.frame univariate",
          {
            #Checking if NAs remain in data.frame
            x <- data.frame(tsAirgap)
            expect_that(anyNA(na.mean(x)), is_false())
            expect_that(anyNA(na.kalman(x)), is_false())
            expect_that(anyNA(na.interpolation(x)), is_false())
            expect_that(anyNA(na.locf(x)), is_false())
            expect_that(anyNA(na.ma(x)), is_false())
            expect_that(anyNA(na.random(x)), is_false())
            expect_that(anyNA(na.seadec(x)), is_false())
            expect_that(anyNA(na.seasplit(x)), is_false())
            expect_that(anyNA(na.replace(x)), is_false())
          })


test_that("Imputation works for matrix",
          {
            #Checking if NAs remain in data.frame
            x <- data.frame(tsAirgap, tsAirgap, tsAirgapComplete)
            x <- as.matrix(x)
            expect_that(anyNA(na.mean(x)), is_false())
            expect_that(anyNA(na.kalman(x)), is_false())
            expect_that(anyNA(na.interpolation(x)), is_false())
            expect_that(anyNA(na.locf(x)), is_false())
            expect_that(anyNA(na.ma(x)), is_false())
            expect_that(anyNA(na.random(x)), is_false())
            expect_that(anyNA(na.seadec(x)), is_false())
            expect_that(anyNA(na.seasplit(x)), is_false())
            expect_that(anyNA(na.replace(x)), is_false())
          })

test_that("Imputation works for matrix univariate",
          {
            #Checking if NAs remain in data.frame
            x <- data.frame(tsAirgap)
            x <- as.matrix(x)
            expect_that(anyNA(na.mean(x)), is_false())
            expect_that(anyNA(na.kalman(x)), is_false())
            expect_that(anyNA(na.interpolation(x)), is_false())
            expect_that(anyNA(na.locf(x)), is_false())
            expect_that(anyNA(na.ma(x)), is_false())
            expect_that(anyNA(na.random(x)), is_false())
            expect_that(anyNA(na.seadec(x)), is_false())
            expect_that(anyNA(na.seasplit(x)), is_false())
            expect_that(anyNA(na.replace(x)), is_false())
          })