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

# UCBAdmissions_table  data set

library(testthat)

library(usdatasets)


test_that("UCBAdmissions_table structure and content tests", {
  # Check the class of the dataset
  expect_s3_class(UCBAdmissions_table, "table")

  # Check the dimensions of the dataset
  expect_equal(length(dim(UCBAdmissions_table)), 3) # It should be a 3-dimensional table
  expect_equal(dim(UCBAdmissions_table), c(2, 2, 6)) # 2 x 2 x 6 structure

  # Check the names of the dimensions
  expect_equal(dimnames(UCBAdmissions_table)[[1]], c("Admitted", "Rejected")) # Corrected expected names
  expect_equal(dimnames(UCBAdmissions_table)[[2]], c("Male", "Female"))

  # Check the names of the departments
  expected_dept_names <- c("A", "B", "C", "D", "E", "F") # Replace with actual department names if different
  expect_equal(dimnames(UCBAdmissions_table)[[3]], expected_dept_names)

  # Check that the total counts in the table make sense (optional)
  total_admitted_male <- sum(UCBAdmissions_table[1, 1, ]) # Total admitted males across departments
  total_admitted_female <- sum(UCBAdmissions_table[1, 2, ]) # Total admitted females across departments
  total_not_admitted_male <- sum(UCBAdmissions_table[2, 1, ]) # Total not admitted males across departments
  total_not_admitted_female <- sum(UCBAdmissions_table[2, 2, ]) # Total not admitted females across departments

  expect_true(total_admitted_male + total_not_admitted_male > 0) # Ensure there's data for males
  expect_true(total_admitted_female + total_not_admitted_female > 0) # Ensure there's data for females
})

