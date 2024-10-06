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

# state_abb_character  data set

library(testthat)

library(usdatasets)


test_that("state_abb_character has correct properties", {
  # Test the class
  expect_type(state_abb_character, "character")

  # Test the length
  expect_equal(length(state_abb_character), 50)

  # Test that there are no NA values
  expect_false(any(is.na(state_abb_character)))

  # Test that all values are unique
  expect_equal(length(unique(state_abb_character)), 50)

  # Test that all abbreviations are exactly 2 characters long
  expect_true(all(nchar(state_abb_character) == 2))

  # Test that all characters are uppercase
  expect_true(all(state_abb_character == toupper(state_abb_character)))

  # Test that all characters are letters
  expect_true(all(grepl("^[A-Z]{2}$", state_abb_character)))

  # Test for some known state abbreviations
  expect_true(all(c("CA", "NY", "TX") %in% state_abb_character))

  # Test that no invalid combinations exist
  invalid_combinations <- c("XX", "ZZ", "AA", "BB", "CC", "DD", "EE", "FF", "GG")
  expect_false(any(state_abb_character %in% invalid_combinations))
})
