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

# USAccDeaths_ts  data set

library(testthat)

library(usdatasets)


test_that("USAccDeaths_ts dataset structure and content tests", {

  # Check the class of the object
  expect_s3_class(USAccDeaths_ts, "ts")

  # Check the length of the object
  expect_equal(length(USAccDeaths_ts), 72)

  # Check the structure of the object
  expect_true(is.numeric(USAccDeaths_ts))

  # Check the range of the data
  expect_equal(start(USAccDeaths_ts), c(1973, 1)) # Starts in January 1973
  expect_equal(end(USAccDeaths_ts), c(1978, 12)) # Ends in December 1978

  # Check for any NA values
  expect_false(any(is.na(USAccDeaths_ts)))
})

# Additional tests that might be useful
test_that("USAccDeaths_ts dataset has correct monthly totals", {
  # Check the total accidents in 1973
  expect_equal(sum(USAccDeaths_ts[1:12]), 115821) # Correct sum of accidents in 1973
})


