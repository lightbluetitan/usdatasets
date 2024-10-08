% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data-documentation.R
\name{ames_tbl_df}
\alias{ames_tbl_df}
\title{Housing prices in Ames, Iowa}
\format{
A tibble with 2,930 observations and 82 variables:
\describe{
  \item{Order}{Row number in the dataset.}
  \item{PID}{Parcel Identifier.}
  \item{area}{Total house area in square feet.}
  \item{price}{Sale price of the house.}
  \item{MS.SubClass}{Building class type.}
  \item{MS.Zoning}{Zoning classification of the property.}
  \item{Lot.Frontage}{Lot frontage length in feet.}
  \item{Lot.Area}{Total lot area in square feet.}
  \item{Street}{Street type access to the property.}
  \item{Alley}{Alley type access.}
  \item{Lot.Shape}{Shape of the lot.}
  \item{Land.Contour}{Land contour around the property.}
  \item{Utilities}{Availability of utilities.}
  \item{Lot.Config}{Lot configuration.}
  \item{Land.Slope}{Slope of the land.}
  \item{Neighborhood}{Neighborhood in Ames.}
  \item{Condition.1}{Proximity to main conditions like railroads.}
  \item{Condition.2}{Proximity to secondary conditions.}
  \item{Bldg.Type}{Type of building.}
  \item{House.Style}{Architectural style of the house.}
  \item{Overall.Qual}{Overall quality of the materials and finish.}
  \item{Overall.Cond}{Overall condition of the house.}
  \item{Year.Built}{Year the house was built.}
  \item{Year.Remod.Add}{Year of the last remodel or addition.}
  \item{Roof.Style}{Roof style.}
  \item{Roof.Matl}{Roof material.}
  \item{Exterior.1st}{Primary exterior material.}
  \item{Exterior.2nd}{Secondary exterior material.}
  \item{Mas.Vnr.Type}{Masonry veneer type.}
  \item{Mas.Vnr.Area}{Masonry veneer area in square feet.}
  \item{Exter.Qual}{Exterior material quality.}
  \item{Exter.Cond}{Condition of the exterior material.}
  \item{Foundation}{Type of foundation.}
  \item{Bsmt.Qual}{Basement quality.}
  \item{Bsmt.Cond}{Basement condition.}
  \item{Bsmt.Exposure}{Basement exposure to the outside.}
  \item{BsmtFin.Type.1}{Type 1 of finished basement.}
  \item{BsmtFin.SF.1}{Square feet of finished basement type 1.}
  \item{BsmtFin.Type.2}{Type 2 of finished basement.}
  \item{BsmtFin.SF.2}{Square feet of finished basement type 2.}
  \item{Bsmt.Unf.SF}{Unfinished basement area in square feet.}
  \item{Total.Bsmt.SF}{Total basement area in square feet.}
  \item{Heating}{Type of heating system.}
  \item{Heating.QC}{Heating system quality.}
  \item{Central.Air}{Presence of central air conditioning.}
  \item{Electrical}{Type of electrical system.}
  \item{X1st.Flr.SF}{First floor area in square feet.}
  \item{X2nd.Flr.SF}{Second floor area in square feet.}
  \item{Low.Qual.Fin.SF}{Low-quality finished area in square feet.}
  \item{Bsmt.Full.Bath}{Number of full bathrooms in the basement.}
  \item{Bsmt.Half.Bath}{Number of half bathrooms in the basement.}
  \item{Full.Bath}{Number of full bathrooms above ground.}
  \item{Half.Bath}{Number of half bathrooms above ground.}
  \item{Bedroom.AbvGr}{Number of bedrooms above ground.}
  \item{Kitchen.AbvGr}{Number of kitchens above ground.}
  \item{Kitchen.Qual}{Kitchen quality.}
  \item{TotRms.AbvGrd}{Total number of rooms above ground.}
  \item{Functional}{Functionality of the house.}
  \item{Fireplaces}{Number of fireplaces.}
  \item{Fireplace.Qu}{Fireplace quality.}
  \item{Garage.Type}{Type of garage.}
  \item{Garage.Yr.Blt}{Year the garage was built.}
  \item{Garage.Finish}{Garage finish type.}
  \item{Garage.Cars}{Number of cars the garage can accommodate.}
  \item{Garage.Area}{Garage area in square feet.}
  \item{Garage.Qual}{Garage quality.}
  \item{Garage.Cond}{Garage condition.}
  \item{Paved.Drive}{Indicates whether the driveway is paved.}
  \item{Wood.Deck.SF}{Wood deck area in square feet.}
  \item{Open.Porch.SF}{Open porch area in square feet.}
  \item{Enclosed.Porch}{Enclosed porch area in square feet.}
  \item{X3Ssn.Porch}{Three-season porch area in square feet.}
  \item{Screen.Porch}{Screened porch area in square feet.}
  \item{Pool.Area}{Pool area in square feet.}
  \item{Pool.QC}{Pool quality.}
  \item{Fence}{Type of fence.}
  \item{Misc.Feature}{Miscellaneous features of the property.}
  \item{Misc.Val}{Value of miscellaneous features.}
  \item{Mo.Sold}{Month the house was sold.}
  \item{Yr.Sold}{Year the house was sold.}
  \item{Sale.Type}{Type of sale.}
  \item{Sale.Condition}{Condition of the sale.}
}
}
\source{
Ames Housing Dataset, provided by Dean De Cock
}
\usage{
data(ames_tbl_df)
}
\description{
The dataset name has been changed to 'ames_tbl_df' to avoid confusion with other packages
in the R ecosystem from which datasets have been sourced. This naming convention helps
distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble.
The original content of the dataset has not been modified in any way.
}
