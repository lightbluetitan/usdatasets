# usdatasets - A Comprehensive Collection of U.S. Datasets
# Version 0.1.0
# Copyright (C) 2024 Renzo Cáceres Rossi
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

# state_x77_matrix  data set

library(testthat)

library(usdatasets)


# Define the tests
test_that("state_x77_matrix has correct dimensions", {
  expect_equal(dim(state_x77_matrix), c(50, 8))  # Check dimensions
})

test_that("state_x77_matrix is a matrix", {
  expect_true(is.matrix(state_x77_matrix))  # Check if it is a matrix
})

test_that("state_x77_matrix contains numeric values", {
  expect_true(all(sapply(state_x77_matrix, is.numeric)))  # Check if all values are numeric
})

test_that("state_x77_matrix has correct column names", {
  expected_colnames <- c("Population", "Income", "Illiteracy", "Life Exp", "Murder", "HS Grad", "Frost", "Area")
  expect_equal(colnames(state_x77_matrix), expected_colnames)  # Check column names
})

test_that("state_x77_matrix Population is within expected range", {
  expect_true(all(state_x77_matrix[, "Population"] >= 0))  # Check that population is >= 0
})

test_that("state_x77_matrix Income is within expected range", {
  expect_true(all(state_x77_matrix[, "Income"] >= 0))  # Check that income is >= 0
})

test_that("state_x77_matrix Illiteracy contains valid percentages", {
  expect_true(all(state_x77_matrix[, "Illiteracy"] >= 0 & state_x77_matrix[, "Illiteracy"] <= 100))  # Check that illiteracy is between 0 and 100
})

test_that("state_x77_matrix Life Expectancy is reasonable", {
  expect_true(all(state_x77_matrix[, "Life Exp"] >= 0))  # Check that life expectancy is >= 0
})

test_that("state_x77_matrix Murder rate is reasonable", {
  expect_true(all(state_x77_matrix[, "Murder"] >= 0))  # Check that murder rate is >= 0
})


