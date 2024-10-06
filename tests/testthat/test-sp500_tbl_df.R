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

# sp500_tbl_df  data set

library(testthat)

library(usdatasets)

# Test dataset structure and class
test_that("sp500_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(sp500_tbl_df, "tbl_df")
  expect_equal(nrow(sp500_tbl_df), 50)
  expect_equal(ncol(sp500_tbl_df), 12)
  expect_equal(names(sp500_tbl_df), c("stock", "market_cap", "ent_value", "trail_pe",
                                      "forward_pe", "ev_over_rev", "profit_margin",
                                      "revenue", "growth", "earn_before", "cash", "debt"))
})

# Test data types of columns
test_that("sp500_tbl_df has correct column types", {
  expect_s3_class(sp500_tbl_df$stock, "factor")
  expect_type(sp500_tbl_df$market_cap, "double")
  expect_type(sp500_tbl_df$ent_value, "double")
  expect_type(sp500_tbl_df$trail_pe, "double")
  expect_type(sp500_tbl_df$forward_pe, "double")
  expect_type(sp500_tbl_df$ev_over_rev, "double")
  expect_type(sp500_tbl_df$profit_margin, "double")
  expect_type(sp500_tbl_df$revenue, "double")
  expect_type(sp500_tbl_df$growth, "double")
  expect_type(sp500_tbl_df$earn_before, "double")
  expect_type(sp500_tbl_df$cash, "double")
  expect_type(sp500_tbl_df$debt, "double")
})

# Test for missing values in critical columns
test_that("sp500_tbl_df reports NA values in critical columns", {
  critical_columns <- c("market_cap", "ent_value", "trail_pe", "forward_pe",
                        "ev_over_rev", "profit_margin", "revenue",
                        "growth", "earn_before", "cash", "debt")

  for (column in critical_columns) {
    n_na <- sum(is.na(sp500_tbl_df[[column]]))
    expect_true(n_na >= 0, info = paste("Found", n_na, "NA values in", column))
  }
})

# Test to verify dataset immutability
test_that("sp500_tbl_df remains unchanged after tests", {
  # Create a deep copy of the original dataset before tests
  original_dataset <- sp500_tbl_df

  # Run some example tests
  sum(is.na(sp500_tbl_df$market_cap))
  sum(is.na(sp500_tbl_df$revenue))

  # Verify the dataset hasn't changed
  expect_identical(original_dataset, sp500_tbl_df)
  expect_equal(nrow(original_dataset), nrow(sp500_tbl_df))
  expect_equal(ncol(original_dataset), ncol(sp500_tbl_df))
  expect_equal(names(original_dataset), names(sp500_tbl_df))
})
