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

# VADeaths_matrix  data set


# Load necessary library
library(testthat)

library(usdatasets)

# Define the test file for the VADeaths_matrix dataset
test_that("VADeaths_matrix structure and content tests", {

  # Test class of the dataset
  expect_equal(class(VADeaths_matrix), c("matrix", "array"))

  # Test length of the dataset (number of elements)
  expect_equal(length(VADeaths_matrix), 20)

  # Test dimensions of the matrix
  expect_equal(dim(VADeaths_matrix), c(5, 4))

  # Test names (column and row names)
  expect_equal(dimnames(VADeaths_matrix)[[1]],
               c("50-54", "55-59", "60-64", "65-69", "70-74"))

  expect_equal(dimnames(VADeaths_matrix)[[2]],
               c("Rural Male", "Rural Female", "Urban Male", "Urban Female"))

  # Test specific values
  expect_equal(VADeaths_matrix[1, 1], 11.7, tolerance = 0.01) # Rural Male 50-54
  expect_equal(VADeaths_matrix[3, 2], 20.3, tolerance = 0.01) # Rural Female 60-64
  expect_equal(VADeaths_matrix[4, 3], 54.6, tolerance = 0.01) # Urban Male 65-69
  expect_equal(VADeaths_matrix[5, 4], 50.0, tolerance = 0.01) # Urban Female 70-74
})

# Save this as test-VADeaths_matrix.R in the tests/testthat/ directory




