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

# USPersonalExpenditure_matrix  data set

# Load necessary library
library(testthat)

library(usdatasets)


# Define the test file for the USPersonalExpenditure_matrix dataset
test_that("USPersonalExpenditure_matrix structure and content tests", {

  # Test class of the dataset
  expect_equal(class(USPersonalExpenditure_matrix), c("matrix", "array"))

  # Test length of the dataset (number of elements)
  expect_equal(length(USPersonalExpenditure_matrix), 25)

  # Test dimensions of the matrix
  expect_equal(dim(USPersonalExpenditure_matrix), c(5, 5))

  # Test names (column and row names)
  expect_equal(dimnames(USPersonalExpenditure_matrix)[[1]], c("Food and Tobacco", "Household Operation", "Medical and Health", "Personal Care", "Private Education"))
  expect_equal(dimnames(USPersonalExpenditure_matrix)[[2]], c("1940", "1945", "1950", "1955", "1960"))

  # Test specific values
  expect_equal(USPersonalExpenditure_matrix[1, 1], 22.2, tolerance = 0.01) # Allow a tolerance for floating-point comparison
  expect_equal(USPersonalExpenditure_matrix[2, 3], 29) # Adjust this if necessary
})

# Save this as test-USPersonalExpenditure_matrix.R in the tests/testthat/ directory
