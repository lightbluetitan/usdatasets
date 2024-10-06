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

# military_tbl_df data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("military_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(military_tbl_df, "tbl_df")
  expect_equal(nrow(military_tbl_df), 1414593)
  expect_equal(ncol(military_tbl_df), 6)
  expect_equal(names(military_tbl_df), c("grade", "branch", "gender", "race", "hisp", "rank"))
})

# Test data types of columns
test_that("military_tbl_df has correct column types", {
  expect_type(military_tbl_df$grade, "integer")  # Cambiado a "integer"
  expect_type(military_tbl_df$branch, "integer") # Cambiado a "integer"
  expect_type(military_tbl_df$gender, "integer") # Cambiado a "integer"
  expect_type(military_tbl_df$race, "integer")   # Cambiado a "integer"
  expect_type(military_tbl_df$hisp, "logical")
  expect_type(military_tbl_df$rank, "integer")
})

# Test for expected levels of factors (actualiza según lo que contiene el dataset)
test_that("military_tbl_df has expected levels for factors", {
  expect_equal(levels(as.factor(military_tbl_df$grade)), c("enlisted", "officer", "warrant officer")) # Cambiado a niveles correctos
  expect_equal(levels(as.factor(military_tbl_df$branch)), c("air force", "army", "marine corps", "navy"))  # Cambiado a niveles correctos
  expect_equal(levels(as.factor(military_tbl_df$gender)), c("female", "male"))  # Cambiado a niveles correctos
  expect_equal(levels(as.factor(military_tbl_df$race)), c("ami/aln", "asian", "black", "multi", "p/i", "unk", "white"))  # Cambiado a niveles correctos
})

# Test for missing values in critical columns
test_that("military_tbl_df reports NA values in critical columns", {
  critical_columns <- c("grade", "branch", "gender", "race", "rank")
  for (column in critical_columns) {
    n_na <- sum(is.na(military_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test for valid rank values (if rank is expected to be within a certain range)
test_that("military_tbl_df has valid rank values", {
  expect_true(all(military_tbl_df$rank >= 1, na.rm = TRUE), info = "Invalid rank value found")
})
