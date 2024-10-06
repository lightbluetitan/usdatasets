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

# uspop_ts  data set


library(testthat)

library(usdatasets)

test_that("uspop_ts dataset structure and content tests", {

  # Test if uspop_ts is a time-series object
  expect_s3_class(uspop_ts, "ts")

  # Test the length of the time series
  expect_equal(length(uspop_ts), 19)

  # Test the structure of the time series
  expect_true(is.ts(uspop_ts))
  expect_equal(start(uspop_ts), 1790)
  expect_equal(end(uspop_ts), 1970)
  expect_equal(frequency(uspop_ts), 0.1)

  # Ensure no missing values are present
  expect_equal(sum(is.na(uspop_ts)), 0)

  # Test specific values to confirm correctness
  expect_equal(uspop_ts[1], 3.93)
  expect_equal(uspop_ts[length(uspop_ts)], 203.20)
})
