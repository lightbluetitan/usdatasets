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

# mn_police_use_of_force_df  data set

library(testthat)

library(usdatasets)

test_that("mn_police_use_of_force_df structure and content tests", {
  # Check the class of the dataset
  expect_s3_class(mn_police_use_of_force_df, "data.frame")

  # Check number of observations and variables
  expect_equal(nrow(mn_police_use_of_force_df), 12925)
  expect_equal(ncol(mn_police_use_of_force_df), 13)

  # Check data types of each variable
  expect_type(mn_police_use_of_force_df$response_datetime, "character")
  expect_type(mn_police_use_of_force_df$problem, "character")
  expect_type(mn_police_use_of_force_df$is_911_call, "character")
  expect_type(mn_police_use_of_force_df$primary_offense, "character")
  expect_type(mn_police_use_of_force_df$subject_injury, "character")
  expect_type(mn_police_use_of_force_df$force_type, "character")
  expect_type(mn_police_use_of_force_df$force_type_action, "character")
  expect_type(mn_police_use_of_force_df$race, "character")
  expect_type(mn_police_use_of_force_df$sex, "character")
  expect_type(mn_police_use_of_force_df$age, "integer")
  expect_type(mn_police_use_of_force_df$type_resistance, "character")
  expect_type(mn_police_use_of_force_df$precinct, "character")
  expect_type(mn_police_use_of_force_df$neighborhood, "character")

  # Check for missing values in critical columns, except 'age'
  expect_equal(sum(is.na(mn_police_use_of_force_df$response_datetime)), 0)
  expect_true(sum(is.na(mn_police_use_of_force_df$age)) >= 0)  # Allow for NAs in age
  expect_equal(sum(is.na(mn_police_use_of_force_df$problem)), 0)
  expect_equal(sum(is.na(mn_police_use_of_force_df$primary_offense)), 0)
})
