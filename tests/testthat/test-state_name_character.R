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

# state_name_character  data set

library(testthat)

library(usdatasets)

test_that("state_name_character has correct properties", {
  # Test the class
  expect_type(state_name_character, "character")

  # Test the length
  expect_equal(length(state_name_character), 50)

  # Test that there are no empty strings
  expect_false(any(state_name_character == ""))

  # Test that there are no NA values
  expect_false(any(is.na(state_name_character)))

  # Test that all values are unique
  expect_equal(length(unique(state_name_character)), 50)

  # Test for specific known states
  expect_true(all(c("Alaska", "California", "Texas") %in% state_name_character))

  # Test that all states start with capital letters
  expect_true(all(grepl("^[A-Z]", state_name_character)))

  # Test that states with spaces have correct capitalization (like "New York")
  multi_word_states <- state_name_character[grep(" ", state_name_character)]
  expect_true(all(grepl("^[A-Z][a-z]+ [A-Z][a-z]+$", multi_word_states)))

  # Test string characteristics
  expect_true(all(nchar(state_name_character) > 3))  # All state names have more than 3 characters
  expect_true(all(nchar(state_name_character) < 20)) # No state name is longer than 20 characters

  # Test alphabetical properties
  expect_equal(
    state_name_character,
    sort(state_name_character)
  )
})
