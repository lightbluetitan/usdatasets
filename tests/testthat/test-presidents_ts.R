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

# presidents_ts  data set

library(testthat)

library(usdatasets)

test_that("presidents_ts dataset structure and content tests", {

  # Test if presidents_ts is a time series
  expect_s3_class(presidents_ts, "ts")

  # Test if the length of the dataset is correct
  expect_length(presidents_ts, 120)

  # Test the structure of the dataset
  expect_equal(start(presidents_ts), c(1945, 1))  # Check start year and quarter
  expect_equal(end(presidents_ts), c(1974, 4))    # Check end year and quarter

  # Test if the dataset contains NAs
  expect_true(any(is.na(presidents_ts)))

  # Test if the time series frequency is quarterly (4 quarters per year)
  expect_equal(frequency(presidents_ts), 4)

})

