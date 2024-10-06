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

# ames_tbl_df data set

library(testthat)

library(usdatasets)


test_that("ames_tbl_df loads correctly and has the expected structure", {
  # Load the dataset
  data("ames_tbl_df", package = "usdatasets") # Replace "usdatasets" with your package name if needed

  # Check the structure
  expect_s3_class(ames_tbl_df, "tbl_df") # Verify it is a tibble
  expect_equal(nrow(ames_tbl_df), 2930) # Verify the number of observations
  expect_equal(ncol(ames_tbl_df), 82) # Verify the number of variables

  # Check that the columns have the expected names
  expected_names <- c("Order", "PID", "area", "price", "MS.SubClass", "MS.Zoning",
                      "Lot.Frontage", "Lot.Area", "Street", "Alley", "Lot.Shape",
                      "Land.Contour", "Utilities", "Lot.Config", "Land.Slope",
                      "Neighborhood", "Condition.1", "Condition.2", "Bldg.Type",
                      "House.Style", "Overall.Qual", "Overall.Cond", "Year.Built",
                      "Year.Remod.Add", "Roof.Style", "Roof.Matl", "Exterior.1st",
                      "Exterior.2nd", "Mas.Vnr.Type", "Mas.Vnr.Area", "Exter.Qual",
                      "Exter.Cond", "Foundation", "Bsmt.Qual", "Bsmt.Cond",
                      "Bsmt.Exposure", "BsmtFin.Type.1", "BsmtFin.SF.1",
                      "BsmtFin.Type.2", "BsmtFin.SF.2", "Bsmt.Unf.SF",
                      "Total.Bsmt.SF", "Heating", "Heating.QC", "Central.Air",
                      "Electrical", "X1st.Flr.SF", "X2nd.Flr.SF", "Low.Qual.Fin.SF",
                      "Bsmt.Full.Bath", "Bsmt.Half.Bath", "Full.Bath",
                      "Half.Bath", "Bedroom.AbvGr", "Kitchen.AbvGr",
                      "Kitchen.Qual", "TotRms.AbvGrd", "Functional", "Fireplaces",
                      "Fireplace.Qu", "Garage.Type", "Garage.Yr.Blt",
                      "Garage.Finish", "Garage.Cars", "Garage.Area",
                      "Garage.Qual", "Garage.Cond", "Paved.Drive",
                      "Wood.Deck.SF", "Open.Porch.SF", "Enclosed.Porch",
                      "X3Ssn.Porch", "Screen.Porch", "Pool.Area", "Pool.QC",
                      "Fence", "Misc.Feature", "Misc.Val", "Mo.Sold",
                      "Yr.Sold", "Sale.Type", "Sale.Condition")

  expect_equal(names(ames_tbl_df), expected_names)

  # Check that there are no NA values in critical columns
  expect_false(any(is.na(ames_tbl_df$price)), info = "There are NA values in the 'price' column.")
  expect_false(any(is.na(ames_tbl_df$area)), info = "There are NA values in the 'area' column.")
  # You can add more columns to check as needed

})
