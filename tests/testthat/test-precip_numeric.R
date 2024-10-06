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

# precip_numeric  data set

library(testthat)

library(usdatasets)

test_that("precip_numeric dataset structure and content tests", {

  # Test the type of the dataset (use 'double' as numeric values in R are stored as doubles)
  expect_type(precip_numeric, "double")

  # Test the length of the dataset
  expect_equal(length(precip_numeric), 70)

  # Test that the dataset has the correct names
  expected_names <- c(
    "Mobile", "Juneau", "Phoenix", "Little Rock", "Los Angeles", "Sacramento",
    "San Francisco", "Denver", "Hartford", "Wilmington", "Washington", "Jacksonville",
    "Miami", "Atlanta", "Honolulu", "Boise", "Chicago", "Peoria", "Indianapolis",
    "Des Moines", "Wichita", "Louisville", "New Orleans", "Portland", "Baltimore",
    "Boston", "Detroit", "Sault Ste. Marie", "Duluth", "Minneapolis/St Paul",
    "Jackson", "Kansas City", "St Louis", "Great Falls", "Omaha", "Reno",
    "Concord", "Atlantic City", "Albuquerque", "Albany", "Buffalo", "New York",
    "Charlotte", "Raleigh", "Bismark", "Cincinnati", "Cleveland", "Columbus",
    "Oklahoma City", "Portland", "Philadelphia", "Pittsburg", "Providence",
    "Columbia", "Sioux Falls", "Memphis", "Nashville", "Dallas", "El Paso",
    "Houston", "Salt Lake City", "Burlington", "Norfolk", "Richmond", "Seattle Tacoma",
    "Spokane", "Charleston", "Milwaukee", "Cheyenne", "San Juan"
  )
  expect_equal(names(precip_numeric), expected_names)

  # Test that all elements are numeric
  expect_type(precip_numeric, "double")

  # Optional: You can add range checks if necessary
  expect_true(all(precip_numeric >= 0))  # No negative precipitation values

})
