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

# UScitiesD_dist  data set

library(testthat)

library(usdatasets)



test_that("UScitiesD_dist is a dist object", {
  expect_s3_class(UScitiesD_dist, "dist")
})

test_that("UScitiesD_dist has length 45", {
  expect_equal(length(UScitiesD_dist), 45)
})

test_that("UScitiesD_dist has the correct structure", {
  expect_s3_class(UScitiesD_dist, "dist")
  expect_equal(attr(UScitiesD_dist, "Size"), 10)
  expect_false(attr(UScitiesD_dist, "Diag"))
  expect_false(attr(UScitiesD_dist, "Upper"))
})

test_that("UScitiesD_dist has expected labels", {
  expect_equal(attr(UScitiesD_dist, "Labels"),
               c("Atlanta", "Chicago", "Denver", "Houston",
                 "LosAngeles", "Miami", "NewYork",
                 "SanFrancisco", "Seattle", "Washington.DC"))
})

test_that("UScitiesD_dist contains expected distance values", {
  # Convert dist object to matrix for easier access
  distance_matrix <- as.matrix(UScitiesD_dist)

  # Example checks for a few distance values
  expect_equal(distance_matrix["Chicago", "LosAngeles"], 1745)
  expect_equal(distance_matrix["NewYork", "Miami"], 1092)
  expect_equal(distance_matrix["Houston", "Denver"], 879)
})
