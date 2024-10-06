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

#' American Community Survey 2012
#'
#' The dataset name has been changed to 'acs12_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' 'usdatasets' package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' identifies the dataset as a tibble data frame, helping to differentiate it from other datasets within the package.
#' The original content of the dataset has not been modified in any way.
#'
#' @name acs12_tbl_df
#' @format A tibble with 2,000 observations and 13 variables:
#' \describe{
#'   \item{income}{Income of individuals (integer).}
#'   \item{employment}{Employment status (factor with 3 levels).}
#'   \item{hrs_work}{Number of hours worked per week (integer).}
#'   \item{race}{Race of individuals (factor with 4 levels).}
#'   \item{age}{Age of individuals (integer).}
#'   \item{gender}{Gender of individuals (factor with 2 levels: "male", "female").}
#'   \item{citizen}{Citizenship status (factor with 2 levels: "no", "yes").}
#'   \item{time_to_work}{Time taken to travel to work in minutes (integer).}
#'   \item{lang}{Primary language spoken at home (factor with 2 levels: "english", "other").}
#'   \item{married}{Marital status (factor with 2 levels: "no", "yes").}
#'   \item{edu}{Educational attainment (factor with 3 levels).}
#'   \item{disability}{Disability status (factor with 2 levels).}
#'   \item{birth_qrtr}{Birth quarter of individuals (factor with 4 levels).}
#' }
#' @source American Community Survey, 2012.
#' @usage data(acs12_tbl_df)
#' @export
load("data/acs12_tbl_df.rda")
NULL

#' Age at first marriage of 5,534 US women.
#'
#' The dataset name has been changed to 'age_at_mar_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' 'usdatasets' package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' identifies the dataset as a tibble data frame, helping to differentiate it from other datasets within the package.
#' The original content of the dataset has not been modified in any way.
#'
#' @name age_at_mar_tbl_df
#' @format A tibble with 5,534 observations and 1 variable:
#' \describe{
#'   \item{age}{Age at first marriage (integer).}
#' }
#' @source United States Census Data.
#' @usage data(age_at_mar_tbl_df)
#' @export
load("data/age_at_mar_tbl_df.rda")
NULL


#' New York Air Quality Measurements
#'
#' The dataset name has been changed to 'airquality_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' 'usdatasets' package and assists users in identifying its specific characteristics. The suffix 'df'
#' identifies the dataset as a data frame, helping to differentiate it from other datasets within the package.
#' The original content of the dataset has not been modified in any way.
#'
#' @name airquality_df
#' @format A data frame with 153 observations and 6 variables:
#' \describe{
#'   \item{Ozone}{Ozone concentration (parts per billion) from 1 to 331.}
#'   \item{Solar.R}{Solar radiation (watts per square meter).}
#'   \item{Wind}{Wind speed (miles per hour).}
#'   \item{Temp}{Temperature (degrees Fahrenheit).}
#'   \item{Month}{Month of the observation (integer from 5 to 9).}
#'   \item{Day}{Day of the observation (integer from 1 to 31).}
#' }
#' @source United States Environmental Protection Agency (EPA).
#' @usage data(airquality_df)
#' @export
load("data/airquality_df.rda")
NULL

#' Airline names - U.S. Airlines Carrier Codes and Names
#'
#' The dataset name has been changed to 'airlines_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' 'usdatasets' package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' identifies the dataset as a tibble, helping to differentiate it from other datasets within the package.
#' The original content of the dataset has not been modified in any way.
#'
#' @name airlines_tbl_df
#' @format A tibble with 16 observations and 2 variables:
#' \describe{
#'   \item{carrier}{Carrier code (character) representing the airline.}
#'   \item{name}{Name of the airline (character).}
#' }
#' @source U.S. Department of Transportation.
#' @usage data(airlines_tbl_df)
#' @export
load("data/airlines_tbl_df.rda")
NULL

#' Airport metadata - U.S. Airports Information
#'
#' The dataset name has been changed to 'airports_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the
#' 'usdatasets' package and assists users in identifying its specific characteristics. The suffix 'tbl_df'
#' identifies the dataset as a tibble, helping to differentiate it from other datasets within the package.
#' The original content of the dataset has not been modified in any way.
#'
#'
#' @name airports_tbl_df
#' @format A tibble with 1,458 observations and 8 variables:
#' \describe{
#'   \item{faa}{FAA airport code (character).}
#'   \item{name}{Name of the airport (character).}
#'   \item{lat}{Latitude of the airport (numeric).}
#'   \item{lon}{Longitude of the airport (numeric).}
#'   \item{alt}{Altitude of the airport (numeric).}
#'   \item{tz}{Time zone (numeric).}
#'   \item{dst}{Daylight saving time flag (character).}
#'   \item{tzone}{Time zone name (character).}
#' }
#' @source U.S. Federal Aviation Administration (FAA).
#' @usage data(airports_tbl_df)
#' @export
load("data/airports_tbl_df.rda")
NULL

#' Housing prices in Ames, Iowa
#'
#' The dataset name has been changed to 'ames_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble.
#' The original content of the dataset has not been modified in any way.
#'
#' @name ames_tbl_df
#' @format A tibble with 2,930 observations and 82 variables:
#' \describe{
#'   \item{Order}{Row number in the dataset.}
#'   \item{PID}{Parcel Identifier.}
#'   \item{area}{Total house area in square feet.}
#'   \item{price}{Sale price of the house.}
#'   \item{MS.SubClass}{Building class type.}
#'   \item{MS.Zoning}{Zoning classification of the property.}
#'   \item{Lot.Frontage}{Lot frontage length in feet.}
#'   \item{Lot.Area}{Total lot area in square feet.}
#'   \item{Street}{Street type access to the property.}
#'   \item{Alley}{Alley type access.}
#'   \item{Lot.Shape}{Shape of the lot.}
#'   \item{Land.Contour}{Land contour around the property.}
#'   \item{Utilities}{Availability of utilities.}
#'   \item{Lot.Config}{Lot configuration.}
#'   \item{Land.Slope}{Slope of the land.}
#'   \item{Neighborhood}{Neighborhood in Ames.}
#'   \item{Condition.1}{Proximity to main conditions like railroads.}
#'   \item{Condition.2}{Proximity to secondary conditions.}
#'   \item{Bldg.Type}{Type of building.}
#'   \item{House.Style}{Architectural style of the house.}
#'   \item{Overall.Qual}{Overall quality of the materials and finish.}
#'   \item{Overall.Cond}{Overall condition of the house.}
#'   \item{Year.Built}{Year the house was built.}
#'   \item{Year.Remod.Add}{Year of the last remodel or addition.}
#'   \item{Roof.Style}{Roof style.}
#'   \item{Roof.Matl}{Roof material.}
#'   \item{Exterior.1st}{Primary exterior material.}
#'   \item{Exterior.2nd}{Secondary exterior material.}
#'   \item{Mas.Vnr.Type}{Masonry veneer type.}
#'   \item{Mas.Vnr.Area}{Masonry veneer area in square feet.}
#'   \item{Exter.Qual}{Exterior material quality.}
#'   \item{Exter.Cond}{Condition of the exterior material.}
#'   \item{Foundation}{Type of foundation.}
#'   \item{Bsmt.Qual}{Basement quality.}
#'   \item{Bsmt.Cond}{Basement condition.}
#'   \item{Bsmt.Exposure}{Basement exposure to the outside.}
#'   \item{BsmtFin.Type.1}{Type 1 of finished basement.}
#'   \item{BsmtFin.SF.1}{Square feet of finished basement type 1.}
#'   \item{BsmtFin.Type.2}{Type 2 of finished basement.}
#'   \item{BsmtFin.SF.2}{Square feet of finished basement type 2.}
#'   \item{Bsmt.Unf.SF}{Unfinished basement area in square feet.}
#'   \item{Total.Bsmt.SF}{Total basement area in square feet.}
#'   \item{Heating}{Type of heating system.}
#'   \item{Heating.QC}{Heating system quality.}
#'   \item{Central.Air}{Presence of central air conditioning.}
#'   \item{Electrical}{Type of electrical system.}
#'   \item{X1st.Flr.SF}{First floor area in square feet.}
#'   \item{X2nd.Flr.SF}{Second floor area in square feet.}
#'   \item{Low.Qual.Fin.SF}{Low-quality finished area in square feet.}
#'   \item{Bsmt.Full.Bath}{Number of full bathrooms in the basement.}
#'   \item{Bsmt.Half.Bath}{Number of half bathrooms in the basement.}
#'   \item{Full.Bath}{Number of full bathrooms above ground.}
#'   \item{Half.Bath}{Number of half bathrooms above ground.}
#'   \item{Bedroom.AbvGr}{Number of bedrooms above ground.}
#'   \item{Kitchen.AbvGr}{Number of kitchens above ground.}
#'   \item{Kitchen.Qual}{Kitchen quality.}
#'   \item{TotRms.AbvGrd}{Total number of rooms above ground.}
#'   \item{Functional}{Functionality of the house.}
#'   \item{Fireplaces}{Number of fireplaces.}
#'   \item{Fireplace.Qu}{Fireplace quality.}
#'   \item{Garage.Type}{Type of garage.}
#'   \item{Garage.Yr.Blt}{Year the garage was built.}
#'   \item{Garage.Finish}{Garage finish type.}
#'   \item{Garage.Cars}{Number of cars the garage can accommodate.}
#'   \item{Garage.Area}{Garage area in square feet.}
#'   \item{Garage.Qual}{Garage quality.}
#'   \item{Garage.Cond}{Garage condition.}
#'   \item{Paved.Drive}{Indicates whether the driveway is paved.}
#'   \item{Wood.Deck.SF}{Wood deck area in square feet.}
#'   \item{Open.Porch.SF}{Open porch area in square feet.}
#'   \item{Enclosed.Porch}{Enclosed porch area in square feet.}
#'   \item{X3Ssn.Porch}{Three-season porch area in square feet.}
#'   \item{Screen.Porch}{Screened porch area in square feet.}
#'   \item{Pool.Area}{Pool area in square feet.}
#'   \item{Pool.QC}{Pool quality.}
#'   \item{Fence}{Type of fence.}
#'   \item{Misc.Feature}{Miscellaneous features of the property.}
#'   \item{Misc.Val}{Value of miscellaneous features.}
#'   \item{Mo.Sold}{Month the house was sold.}
#'   \item{Yr.Sold}{Year the house was sold.}
#'   \item{Sale.Type}{Type of sale.}
#'   \item{Sale.Condition}{Condition of the sale.}
#' }
#' @source Ames Housing Dataset, provided by Dean De Cock
#' @usage data(ames_tbl_df)
#' @export
load("data/ames_tbl_df.rda")
NULL



#' US Births 2014
#'
#' The dataset name has been changed to 'births14_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name births14_tbl_df
#' @format A tibble with 1,000 observations and 13 variables:
#' \describe{
#'   \item{fage}{Age of the father (in years).}
#'   \item{mage}{Age of the mother (in years).}
#'   \item{mature}{Indicates if the mother is mature (yes/no).}
#'   \item{weeks}{Number of weeks of pregnancy.}
#'   \item{premie}{Indicates if the baby is a premature birth (yes/no).}
#'   \item{visits}{Number of prenatal visits.}
#'   \item{gained}{Weight gained by the mother during pregnancy (in pounds).}
#'   \item{weight}{Birth weight of the baby (in grams).}
#'   \item{lowbirthweight}{Indicates if the baby is of low birth weight (yes/no).}
#'   \item{sex}{Sex of the baby (male/female).}
#'   \item{habit}{Maternal smoking habits (yes/no).}
#'   \item{marital}{Marital status of the mother (married/single).}
#'   \item{whitemom}{Indicates if the mother is white (yes/no).}
#' }
#' @source National Vital Statistics Reports
#' @usage data(births14_tbl_df)
#' @export
load("data/births14_tbl_df.rda")
NULL

#' North Carolina births, 100 cases
#'
#' The dataset name has been changed to 'births_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name births_tbl_df
#' @format A tibble with 150 observations and 9 variables:
#' \describe{
#'   \item{f_age}{Age of the father (in years).}
#'   \item{m_age}{Age of the mother (in years).}
#'   \item{weeks}{Number of weeks of pregnancy.}
#'   \item{premature}{Indicates if the baby is premature (factor: yes/no).}
#'   \item{visits}{Number of prenatal visits.}
#'   \item{gained}{Weight gained by the mother during pregnancy (in pounds).}
#'   \item{weight}{Birth weight of the baby (in grams).}
#'   \item{sex_baby}{Sex of the baby (factor: male/female).}
#'   \item{smoke}{Indicates if the mother smoked during pregnancy (factor: yes/no).}
#' }
#' @source National Vital Statistics Reports
#' @usage data(births_tbl_df)
#' @export
load("data/births_tbl_df.rda")
NULL


#' Housing Values in Suburbs of Boston
#'
#' The dataset name has been changed to 'Boston_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix '_df' identifies the dataset as a data frame. The original content of the dataset has not been modified in any way.
#'
#' @name Boston_df
#' @format A data frame with 506 observations and 14 variables:
#' \describe{
#'   \item{crim}{Per capita crime rate by town.}
#'   \item{zn}{Proportion of residential land zoned for lots over 25,000 sq. ft.}
#'   \item{indus}{Proportion of non-retail business acres per town.}
#'   \item{chas}{Charles River dummy variable (1 if tract bounds river; 0 otherwise).}
#'   \item{nox}{Nitric oxides concentration (parts per 10 million).}
#'   \item{rm}{Average number of rooms per dwelling.}
#'   \item{age}{Proportion of owner-occupied units built prior to 1940.}
#'   \item{dis}{Weighted distances to five Boston employment centers.}
#'   \item{rad}{Index of accessibility to radial highways.}
#'   \item{tax}{Full-value property tax rate per $10,000.}
#'   \item{ptratio}{Pupil-teacher ratio by town.}
#'   \item{black}{1000(Bk - 0.63)^2 where Bk is the proportion of Black residents by town.}
#'   \item{lstat}{Percentage of lower status of the population.}
#'   \item{medv}{Median value of owner-occupied homes in $1000s.}
#' }
#' @source Boston Housing Data
#' @usage data(Boston_df)
#' @export
load("data/Boston_df.rda")
NULL

#' Data from 93 Cars on Sale in the USA in 1993
#'
#' The dataset name has been changed to 'Cars93_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix '_df' identifies the dataset as a data frame. The original content of the dataset has not been modified in any way.
#'
#' @name Cars93_df
#' @format A data frame with 54 observations and 6 variables:
#' \describe{
#'   \item{type}{Type of the car (factor with 3 levels).}
#'   \item{price}{Price of the car (in US dollars).}
#'   \item{mpg_city}{Miles per gallon in the city.}
#'   \item{drive_train}{Drive train type (factor with 3 levels).}
#'   \item{passengers}{Number of passengers the car can accommodate.}
#'   \item{weight}{Weight of the car (in pounds).}
#' }
#' @source 1993 Cars Data
#' @usage data(Cars93_df)
#' @export
load("data/Cars93_df.rda")
NULL

#' Random sample of 2000 U.S. Census Data
#'
#' The dataset name has been changed to 'census_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name census_tbl_df
#' @format A tibble with 500 observations and 8 variables:
#' \describe{
#'   \item{census_year}{Year of the census (in integer).}
#'   \item{state_fips_code}{FIPS code for the state (factor with 47 levels).}
#'   \item{total_family_income}{Total family income (in US dollars).}
#'   \item{age}{Age of the individual (in years).}
#'   \item{sex}{Sex of the individual (factor: male/female).}
#'   \item{race_general}{General race category (factor with 8 levels).}
#'   \item{marital_status}{Marital status of the individual (factor with 6 levels).}
#'   \item{total_personal_income}{Total personal income (in US dollars).}
#' }
#' @source US Census Bureau
#' @usage data(census_tbl_df)
#' @export
load("data/census_tbl_df.rda")
NULL

#' CIA Factbook Details on Countries
#'
#' The dataset name has been changed to 'cia_factbook_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name cia_factbook_tbl_df
#' @format A tibble with 259 observations and 11 variables:
#' \describe{
#'   \item{country}{Name of the country (factor with 259 levels).}
#'   \item{area}{Total area of the country (in square kilometers).}
#'   \item{birth_rate}{Birth rate (number of live births per 1,000 people).}
#'   \item{death_rate}{Death rate (number of deaths per 1,000 people).}
#'   \item{infant_mortality_rate}{Infant mortality rate (number of deaths of infants under one year old per 1,000 live births).}
#'   \item{internet_users}{Number of internet users (in millions).}
#'   \item{life_exp_at_birth}{Life expectancy at birth (in years).}
#'   \item{maternal_mortality_rate}{Maternal mortality rate (number of maternal deaths per 100,000 live births).}
#'   \item{net_migration_rate}{Net migration rate (number of migrants per 1,000 people).}
#'   \item{population}{Total population of the country.}
#'   \item{population_growth_rate}{Population growth rate (percentage).}
#' }
#' @source CIA World Factbook
#' @usage data(cia_factbook_tbl_df)
#' @export
load("data/cia_factbook_tbl_df.rda")
NULL


#' Cleveland and Sacramento Demographic and Income Data (2000)
#'
#' The dataset name has been changed to 'cle_sac_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name cle_sac_tbl_df
#' @format A tibble with 500 observations and 8 variables:
#' \describe{
#'   \item{year}{Year of the observation (integer).}
#'   \item{state}{State of the observation (factor with 2 levels).}
#'   \item{city}{City of the observation (character).}
#'   \item{age}{Age of the individual (integer).}
#'   \item{sex}{Sex of the individual (factor with 2 levels).}
#'   \item{race}{Race of the individual (character).}
#'   \item{marital_status}{Marital status of the individual (character).}
#'   \item{personal_income}{Personal income of the individual (integer).}
#' }
#' @source Cleveland Study
#' @usage data(cle_sac_tbl_df)
#' @export
load("data/cle_sac_tbl_df.rda")
NULL



#' United States Counties
#'
#' The dataset name has been changed to 'county_tbl_df' to avoid confusion with other packages
#' in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content of the dataset has not been modified in any way.
#'
#' @name county_tbl_df
#' @format A tibble with 3,142 observations and 15 variables:
#' \describe{
#'   \item{name}{Name of the county.}
#'   \item{state}{State in which the county is located (factor with 51 levels).}
#'   \item{pop2000}{Population of the county in the year 2000.}
#'   \item{pop2010}{Population of the county in the year 2010.}
#'   \item{pop2017}{Population of the county in the year 2017.}
#'   \item{pop_change}{Change in population over the years.}
#'   \item{poverty}{Poverty rate in the county.}
#'   \item{homeownership}{Rate of homeownership in the county.}
#'   \item{multi_unit}{Percentage of multi-unit housing.}
#'   \item{unemployment_rate}{Unemployment rate in the county.}
#'   \item{metro}{Indicates if the county is in a metropolitan area (factor with 2 levels).}
#'   \item{median_edu}{Median education level in the county (factor with 4 levels).}
#'   \item{per_capita_income}{Per capita income in the county.}
#'   \item{median_hh_income}{Median household income in the county.}
#'   \item{smoking_ban}{Indicates if there is a smoking ban in place (factor with 3 levels).}
#' }
#' @source United States Census Bureau
#' @usage data(county_tbl_df)
#' @export
load("data/county_tbl_df.rda")
NULL

#' American Adults on Regulation and Renewable Energy
#'
#' The dataset name has been changed to 'env_regulation_tbl_df' to avoid confusion with other
#' packages in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
#' content of the dataset has not been modified in any way.
#'
#' @name env_regulation_tbl_df
#' @format A tibble with 705 observations and 1 variable:
#' \describe{
#'   \item{statement}{Environmental regulation statement (character).}
#' }
#' @source Environmental Regulation Study
#' @usage data(env_regulation_tbl_df)
#' @export
load("data/env_regulation_tbl_df.rda")
NULL

#' Summary of male heights from USDA Food Commodity Intake Database
#'
#' The dataset name has been changed to 'fcid_tbl_df' to avoid confusion with other
#' packages in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
#' content of the dataset has not been modified in any way.
#'
#' @name fcid_tbl_df
#' @format A tibble with 100 observations and 2 variables:
#' \describe{
#'   \item{height}{Height of the individual (numeric).}
#'   \item{num_of_adults}{Number of adults in the household (integer).}
#' }
#' @source Family Characteristics and Income Study
#' @usage data(fcid_tbl_df)
#' @export
load("data/fcid_tbl_df.rda")
NULL

#' Google stock data
#'
#' The dataset name has been changed to 'goog_tbl_df' to avoid confusion with other
#' packages in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
#' content of the dataset has not been modified in any way.
#'
#' @name goog_tbl_df
#' @format A tibble with 98 observations and 7 variables:
#' \describe{
#'   \item{date}{Date of the stock price observation (factor with 98 levels).}
#'   \item{open}{Opening price of the stock (numeric).}
#'   \item{high}{Highest price during the trading session (numeric).}
#'   \item{low}{Lowest price during the trading session (numeric).}
#'   \item{close}{Closing price of the stock (numeric).}
#'   \item{volume}{Number of shares traded (integer).}
#'   \item{adj_close}{Adjusted closing price of the stock (numeric).}
#' }
#' @source Google Stock Market Data
#' @usage data(goog_tbl_df)
#' @export
load("data/goog_tbl_df.rda")
NULL

#' Election results for 2010 Governor races in the U.S.
#'
#' The dataset name has been changed to 'govrace10_tbl_df' to avoid confusion with other
#' packages in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
#' content of the dataset has not been modified in any way.
#'
#' @name govrace10_tbl_df
#' @format A tibble with 37 observations and 23 variables:
#' \describe{
#'   \item{id}{Identification number (numeric).}
#'   \item{state}{State name (character).}
#'   \item{abbr}{State abbreviation (character).}
#'   \item{name1}{Name of the first candidate (character).}
#'   \item{perc1}{Percentage of votes for the first candidate (numeric).}
#'   \item{party1}{Political party of the first candidate (character).}
#'   \item{votes1}{Number of votes for the first candidate (numeric).}
#'   \item{name2}{Name of the second candidate (character).}
#'   \item{perc2}{Percentage of votes for the second candidate (numeric).}
#'   \item{party2}{Political party of the second candidate (character).}
#'   \item{votes2}{Number of votes for the second candidate (numeric).}
#'   \item{name3}{Name of the third candidate (character).}
#'   \item{perc3}{Percentage of votes for the third candidate (numeric).}
#'   \item{party3}{Political party of the third candidate (character).}
#'   \item{votes3}{Number of votes for the third candidate (numeric).}
#'   \item{name4}{Name of the fourth candidate (character).}
#'   \item{perc4}{Percentage of votes for the fourth candidate (numeric).}
#'   \item{party4}{Political party of the fourth candidate (character).}
#'   \item{votes4}{Number of votes for the fourth candidate (numeric).}
#'   \item{name5}{Name of the fifth candidate (character).}
#'   \item{perc5}{Percentage of votes for the fifth candidate (numeric).}
#'   \item{party5}{Political party of the fifth candidate (character).}
#'   \item{votes5}{Number of votes for the fifth candidate (numeric).}
#' }
#' @source 2010 Gubernatorial Races
#' @usage data(govrace10_tbl_df)
#' @export
load("data/govrace10_tbl_df.rda")
NULL

#' Homicides in nine cities in 2015
#'
#' The dataset name has been changed to 'homicides15_tbl_df' to avoid confusion with other
#' packages in the R ecosystem from which datasets have been sourced. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package and assists users in identifying
#' its specific characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original
#' content of the dataset has not been modified in any way.
#'
#' @name homicides15_tbl_df
#' @format A tibble with 1922 observations and 15 variables:
#' \describe{
#'   \item{uid}{Unique identifier (integer).}
#'   \item{city_name}{City name where the homicide occurred (character).}
#'   \item{offense_code}{Offense code (character).}
#'   \item{offense_type}{Type of offense (character).}
#'   \item{date_single}{Date of the homicide (POSIXct).}
#'   \item{address}{Location address of the homicide (character).}
#'   \item{longitude}{Longitude of the homicide location (numeric).}
#'   \item{latitude}{Latitude of the homicide location (numeric).}
#'   \item{location_type}{Type of location where the homicide occurred (character).}
#'   \item{location_category}{Category of the location (character).}
#'   \item{fips_state}{FIPS code of the state (integer).}
#'   \item{fips_county}{FIPS code of the county (character).}
#'   \item{tract}{Census tract where the homicide occurred (character).}
#'   \item{block_group}{Block group number (integer).}
#'   \item{block}{Block number (integer).}
#' }
#' @source 2015 Homicides Data
#' @usage data(homicides15_tbl_df)
#' @export
load("data/homicides15_tbl_df.rda")
NULL


#' United States House of Representatives historical make-up
#'
#' The dataset name has been changed to 'house_tbl_df' to avoid confusion with other packages in
#' the R ecosystem from which datasets have been sourced. This naming convention helps distinguish
#' this dataset as part of the 'usdatasets' package and assists users in identifying its specific
#' characteristics. The suffix 'tbl_df' identifies the dataset as a tibble. The original content
#' of the dataset has not been modified in any way.
#'
#' @name house_tbl_df
#' @format A tibble with 116 observations and 12 variables:
#' \describe{
#'   \item{congress}{Congress number (numeric).}
#'   \item{year_start}{Starting year of the congress (numeric).}
#'   \item{year_end}{Ending year of the congress (numeric).}
#'   \item{seats}{Total number of seats in the House of Representatives (numeric).}
#'   \item{p1}{Abbreviation of the first party (character).}
#'   \item{np1}{Number of seats for the first party (numeric).}
#'   \item{p2}{Abbreviation of the second party (character).}
#'   \item{np2}{Number of seats for the second party (numeric).}
#'   \item{other}{Number of seats for other parties (numeric).}
#'   \item{vac}{Number of vacant seats (numeric).}
#'   \item{del}{Number of delegate seats (numeric).}
#'   \item{res}{Number of resident commissioner seats (numeric).}
#' }
#' @source Historical House of Representatives Data
#' @usage data(house_tbl_df)
#' @export
load("data/house_tbl_df.rda")
NULL


#' Election results for the 2010 U.S. House of Represenatives races
#'
#' The dataset name has been changed to 'houserace10_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name houserace10_tbl_df
#' @format A tibble with 435 observations and 24 variables:
#' \describe{
#'   \item{id}{Unique race identifier (numeric).}
#'   \item{state}{Name of the state (character).}
#'   \item{abbr}{State abbreviation (character).}
#'   \item{num}{District number (numeric).}
#'   \item{name1}{Name of the first candidate (character).}
#'   \item{perc1}{Percentage of votes for the first candidate (numeric).}
#'   \item{party1}{Party affiliation of the first candidate (character).}
#'   \item{votes1}{Number of votes for the first candidate (numeric).}
#'   \item{name2}{Name of the second candidate (character).}
#'   \item{perc2}{Percentage of votes for the second candidate (numeric).}
#'   \item{party2}{Party affiliation of the second candidate (character).}
#'   \item{votes2}{Number of votes for the second candidate (numeric).}
#'   \item{name3}{Name of the third candidate (character).}
#'   \item{perc3}{Percentage of votes for the third candidate (numeric).}
#'   \item{party3}{Party affiliation of the third candidate (character).}
#'   \item{votes3}{Number of votes for the third candidate (numeric).}
#'   \item{name4}{Name of the fourth candidate (character).}
#'   \item{perc4}{Percentage of votes for the fourth candidate (numeric).}
#'   \item{party4}{Party affiliation of the fourth candidate (character).}
#'   \item{votes4}{Number of votes for the fourth candidate (numeric).}
#'   \item{name5}{Name of the fifth candidate (character).}
#'   \item{perc5}{Percentage of votes for the fifth candidate (numeric).}
#'   \item{party5}{Party affiliation of the fifth candidate (character).}
#'   \item{votes5}{Number of votes for the fifth candidate (numeric).}
#' }
#' @source 2010 U.S. House of Representatives Election Data
#' @usage data(houserace10_tbl_df)
#' @export
load("data/houserace10_tbl_df.rda")
NULL

#' Poll on illegal workers in the US
#'
#' The dataset name has been changed to 'immigration_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name immigration_tbl_df
#' @format A tibble with 910 observations and 2 variables:
#' \describe{
#'   \item{response}{Factor indicating the response to immigration-related questions, with 4 levels.}
#'   \item{political}{Factor indicating the political alignment associated with the responses, with 3 levels.}
#' }
#' @source Data from surveys on immigration attitudes
#' @usage data(immigration_tbl_df)
#' @export
load("data/immigration_tbl_df.rda")
NULL




#' Legalization of Marijuana Support in 2010 California Survey
#'
#' The dataset name has been changed to 'leg_mari_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name leg_mari_tbl_df
#' @format A tibble with 119 observations and 1 variable:
#' \describe{
#'   \item{response}{Factor indicating responses related to legal marijuana, with 2 levels.}
#' }
#' @source Data from surveys on attitudes towards legal marijuana
#' @usage data(leg_mari_tbl_df)
#' @export
load("data/leg_mari_tbl_df.rda")
NULL


#' New York City Marathon Times (outdated)
#'
#' The dataset name has been changed to 'marathon_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name marathon_tbl_df
#' @format A tibble with 59 observations and 3 variables:
#' \describe{
#'   \item{year}{Integer indicating the year of the marathon event.}
#'   \item{gender}{Factor indicating the gender of the participants, with 2 levels.}
#'   \item{time}{Numeric value representing the marathon completion time in hours.}
#' }
#' @source Data from marathon event results
#' @usage data(marathon_tbl_df)
#' @export
load("data/marathon_tbl_df.rda")
NULL


#' Minnesota High School Graduates of 1938
#'
#' The dataset name has been changed to 'minn38_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a data frame. The original content of the dataset has not been modified.
#'
#' @name minn38_df
#' @format A data frame with 168 observations and 5 variables:
#' \describe{
#'   \item{hs}{Factor indicating the high school status, with 3 levels.}
#'   \item{phs}{Factor indicating the post-high school status, with 4 levels.}
#'   \item{fol}{Factor indicating the field of study, with 7 levels.}
#'   \item{sex}{Factor indicating the gender of the participants, with 2 levels.}
#'   \item{f}{Integer representing the associated numerical value for the participants.}
#' }
#' @source Data from the Minnesota 1938 study
#' @usage data(minn38_df)
#' @export
load("data/minn38_df.rda")
NULL


#' US Military Demographics
#'
#' The dataset name has been changed to 'military_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name military_tbl_df
#' @format A tibble with an unspecified number of observations and 6 variables:
#' \describe{
#'   \item{grade}{Factor indicating the military grade, with 3 levels.}
#'   \item{branch}{Factor indicating the branch of the military, with 4 levels.}
#'   \item{gender}{Factor indicating the gender of the participants, with 2 levels.}
#'   \item{race}{Factor indicating the race of the participants, with 7 levels.}
#'   \item{hisp}{Logical indicating whether the participants identify as Hispanic.}
#'   \item{rank}{Integer representing the rank of the participants.}
#' }
#' @source Data from military personnel demographics
#' @usage data(military_tbl_df)
#' @export
load("data/military_tbl_df.rda")
NULL


#' Batter Statistics for 2018 Major League Baseball (MLB) Season
#'
#' The dataset name has been changed to 'mlb_players_18_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name mlb_players_18_tbl_df
#' @format A tibble with 1270 observations and 19 variables:
#' \describe{
#'   \item{name}{Character string representing the name of the player.}
#'   \item{team}{Character string indicating the team the player belongs to.}
#'   \item{position}{Character string indicating the position played by the player.}
#'   \item{games}{Integer representing the number of games played.}
#'   \item{AB}{Integer indicating the number of at-bats.}
#'   \item{R}{Integer representing the number of runs scored.}
#'   \item{H}{Integer representing the number of hits.}
#'   \item{doubles}{Integer indicating the number of doubles hit.}
#'   \item{triples}{Integer indicating the number of triples hit.}
#'   \item{HR}{Integer representing the number of home runs hit.}
#'   \item{RBI}{Integer indicating the number of runs batted in.}
#'   \item{walks}{Integer indicating the number of walks received.}
#'   \item{strike_outs}{Integer indicating the number of strikeouts.}
#'   \item{stolen_bases}{Integer representing the number of stolen bases.}
#'   \item{caught_stealing_base}{Integer indicating the number of times caught stealing.}
#'   \item{AVG}{Numeric representing the batting average.}
#'   \item{OBP}{Numeric representing the on-base percentage.}
#'   \item{SLG}{Numeric representing the slugging percentage.}
#'   \item{OPS}{Numeric representing the on-base plus slugging percentage.}
#' }
#' @source Data from Major League Baseball (MLB) player statistics for the 2018 season
#' @usage data(mlb_players_18_tbl_df)
#' @export
load("data/mlb_players_18_tbl_df.rda")
NULL


#' Minneapolis police use of force data.
#'
#' The dataset name has been changed to 'mn_police_use_of_force_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a data frame. The original content of the dataset has not been modified.
#'
#' @name mn_police_use_of_force_df
#' @format A data frame with 12925 observations and 13 variables:
#' \describe{
#'   \item{response_datetime}{Character string representing the date and time of the response.}
#'   \item{problem}{Character string describing the nature of the problem.}
#'   \item{is_911_call}{Character string indicating whether the incident was initiated by a 911 call.}
#'   \item{primary_offense}{Character string indicating the primary offense involved in the incident.}
#'   \item{subject_injury}{Character string describing the injuries sustained by the subject, if any.}
#'   \item{force_type}{Character string describing the type of force used by the police.}
#'   \item{force_type_action}{Character string describing the specific actions related to the use of force.}
#'   \item{race}{Character string indicating the race of the subject involved in the incident.}
#'   \item{sex}{Character string indicating the sex of the subject.}
#'   \item{age}{Integer representing the age of the subject.}
#'   \item{type_resistance}{Character string describing the type of resistance offered by the subject.}
#'   \item{precinct}{Character string indicating the precinct in which the incident occurred.}
#'   \item{neighborhood}{Character string representing the neighborhood where the incident occurred.}
#' }
#' @source Data from police use of force reports in Minnesota
#' @usage data(mn_police_use_of_force_df)
#' @export
load("data/mn_police_use_of_force_df.rda")
NULL


#' NBA Players for the 2018-2019 season
#'
#' The dataset name has been changed to 'nba_players_19_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name nba_players_19_tbl_df
#' @format A tibble with 494 observations and 7 variables:
#' \describe{
#'   \item{first_name}{Character string representing the player's first name.}
#'   \item{last_name}{Character string representing the player's last name.}
#'   \item{team}{Character string indicating the name of the team.}
#'   \item{team_abbr}{Character string representing the team's abbreviation.}
#'   \item{position}{Character string indicating the player's position on the team.}
#'   \item{number}{Character string representing the player's jersey number.}
#'   \item{height}{Numeric value representing the player's height.}
#' }
#' @source Data from NBA players' statistics in 2019
#' @usage data(nba_players_19_tbl_df)
#' @export
load("data/nba_players_19_tbl_df.rda")
NULL



#' North Carolina births, 1000 cases
#'
#' The dataset name has been changed to 'ncbirths_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name ncbirths_tbl_df
#' @format A tibble with 1000 observations and 13 variables:
#' \describe{
#'   \item{fage}{Integer representing the father's age.}
#'   \item{mage}{Integer representing the mother's age.}
#'   \item{mature}{Factor with 2 levels indicating if the mother is mature (>=35 years).}
#'   \item{weeks}{Integer representing the number of gestation weeks.}
#'   \item{premie}{Factor with 2 levels indicating if the baby was born prematurely.}
#'   \item{visits}{Integer representing the number of prenatal visits.}
#'   \item{marital}{Factor with 2 levels indicating the marital status of the mother.}
#'   \item{gained}{Integer representing the mother's weight gain during pregnancy (in pounds).}
#'   \item{weight}{Numeric value representing the baby's birth weight (in grams).}
#'   \item{lowbirthweight}{Factor with 2 levels indicating if the baby was born with low birth weight.}
#'   \item{gender}{Factor with 2 levels indicating the baby's gender.}
#'   \item{habit}{Factor with 2 levels indicating if the mother has a smoking habit.}
#'   \item{whitemom}{Factor with 2 levels indicating if the mother is white.}
#' }
#' @source Data from birth records in North Carolina
#' @usage data(ncbirths_tbl_df)
#' @export
load("data/ncbirths_tbl_df.rda")
NULL



#' New York City Marathon Times
#'
#' The dataset name has been changed to 'nyc_marathon_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name nyc_marathon_tbl_df
#' @format A tibble with 102 observations and 7 variables:
#' \describe{
#'   \item{year}{Numeric value representing the year the marathon took place.}
#'   \item{name}{Character value representing the name of the runner.}
#'   \item{country}{Character value indicating the country of origin of the runner.}
#'   \item{time}{Time variable in 'hms' format representing the finish time of the runner.}
#'   \item{time_hrs}{Numeric value representing the finish time of the runner in hours.}
#'   \item{division}{Character value indicating the division (category) the runner participated in.}
#'   \item{note}{Character value containing additional notes, if any, about the runner or the race.}
#' }
#' @source Data from the New York City Marathon records
#' @usage data(nyc_marathon_tbl_df)
#' @export
load("data/nyc_marathon_tbl_df.rda")
NULL


#' Thefts of motor vehicles 2014 to 2017
#'
#' The dataset name has been changed to 'nycvehiclethefts_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name nycvehiclethefts_tbl_df
#' @format A tibble with 35,746 observations and 9 variables:
#' \describe{
#'   \item{uid}{Integer value representing a unique identifier for each vehicle theft incident.}
#'   \item{date_single}{Character value representing the single date of the theft incident.}
#'   \item{date_start}{Character value representing the start date of the theft incident.}
#'   \item{date_end}{Character value representing the end date of the theft incident.}
#'   \item{longitude}{Numeric value indicating the longitude where the incident occurred.}
#'   \item{latitude}{Numeric value indicating the latitude where the incident occurred.}
#'   \item{location_type}{Character value representing the type of location where the theft took place.}
#'   \item{location_category}{Character value indicating the category of the location.}
#'   \item{census_block}{Character value indicating the census block where the incident took place.}
#' }
#' @source Data from the New York City Vehicle Thefts records
#' @usage data(nycvehiclethefts_tbl_df)
#' @export
load("data/nycvehiclethefts_tbl_df.rda")
NULL



#' California poll on drilling off the California coast
#'
#' The dataset name has been changed to 'offshore_drilling_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name offshore_drilling_tbl_df
#' @format A tibble with 828 observations and 2 variables:
#' \describe{
#'   \item{v1}{Factor with 4 levels, representing different responses or categories related to offshore drilling.}
#'   \item{v2}{Factor with 3 levels, representing secondary categories or classifications related to the responses in \code{v1}.}
#' }
#' @source Data related to offshore drilling opinions or classifications
#' @usage data(offshore_drilling_tbl_df)
#' @export
load("data/offshore_drilling_tbl_df.rda")
NULL


#' 1986 Challenger disaster and O-rings
#'
#' The dataset name has been changed to 'orings_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name orings_tbl_df
#' @format A tibble with 23 observations and 4 variables:
#' \describe{
#'   \item{mission}{Integer representing the mission number.}
#'   \item{temperature}{Integer representing the launch temperature in Fahrenheit.}
#'   \item{damaged}{Integer representing the number of damaged O-rings in the mission.}
#'   \item{undamaged}{Numeric representing the number of undamaged O-rings in the mission.}
#' }
#' @source Data from NASA missions related to O-ring performance.
#' @usage data(orings_tbl_df)
#' @export
load("data/orings_tbl_df.rda")
NULL


#' Oscar winners, 1929 to 2018
#'
#' The dataset name has been changed to 'oscars_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name oscars_tbl_df
#' @format A tibble with 184 observations and 11 variables:
#' \describe{
#'   \item{oscar_no}{Numeric indicating the Oscar number.}
#'   \item{oscar_yr}{Numeric representing the year the Oscar was awarded.}
#'   \item{award}{Character string indicating the category of the award.}
#'   \item{name}{Character string with the name of the recipient.}
#'   \item{movie}{Character string indicating the movie for which the award was given.}
#'   \item{age}{Numeric indicating the age of the recipient at the time of the award.}
#'   \item{birth_pl}{Character string indicating the birthplace of the recipient.}
#'   \item{birth_date}{Date representing the birthdate of the recipient.}
#'   \item{birth_mo}{Numeric indicating the birth month.}
#'   \item{birth_d}{Numeric indicating the birth day.}
#'   \item{birth_y}{Numeric indicating the birth year.}
#' }
#' @source Data from historical Oscar award records.
#' @usage data(oscars_tbl_df)
#' @export
load("data/oscars_tbl_df.rda")
NULL


#' Piracy and PIPA/SOPA
#'
#' The dataset name has been changed to 'piracy_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name piracy_tbl_df
#' @format A tibble with 534 observations and 8 variables:
#' \describe{
#'   \item{name}{Character string indicating the name of the politician.}
#'   \item{party}{Factor with 3 levels representing the politician's party affiliation.}
#'   \item{state}{Factor with 50 levels indicating the U.S. state the politician represents.}
#'   \item{money_pro}{Numeric representing the amount of pro-piracy funding received.}
#'   \item{money_con}{Numeric representing the amount of anti-piracy funding received.}
#'   \item{years}{Integer indicating the number of years in office.}
#'   \item{stance}{Factor with 5 levels indicating the politician's stance on piracy.}
#'   \item{chamber}{Factor with 2 levels indicating the chamber of the U.S. Congress (House or Senate).}
#' }
#' @source Data on political stances and funding related to piracy.
#' @usage data(piracy_tbl_df)
#' @export
load("data/piracy_tbl_df.rda")
NULL


#' Annual Precipitation in US Cities
#'
#' The dataset name has been changed to 'precip_numeric' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a numeric vector. The original content of the dataset has not been modified.
#'
#' @name precip_numeric
#' @format A numeric vector with 70 observations representing average annual precipitation (in inches)
#' for various cities in the United States.
#' \describe{
#'   \item{Mobile}{Numeric value representing the average annual precipitation in Mobile.}
#'   \item{Juneau}{Numeric value representing the average annual precipitation in Juneau.}
#'   \item{Phoenix}{Numeric value representing the average annual precipitation in Phoenix.}
#'   \item{Los Angeles}{Numeric value representing the average annual precipitation in Los Angeles.}
#'   \item{...}{Additional cities included in the dataset.}
#' }
#' @source Data on precipitation for various U.S. cities.
#' @usage data(precip_numeric)
#' @export
load("data/precip_numeric.rda")
NULL

#' Quarterly Approval Ratings of US Presidents
#'
#' The dataset name has been changed to 'presidents_ts' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a time series object. The original content of the dataset has not been modified.
#'
#' @name presidents_ts
#' @format A time series object with 120 observations, covering quarterly data from 1945 to 1975.
#' Each observation represents the number of presidents' approval ratings during a given quarter.
#' The data is structured as follows:
#' \describe{
#'   \item{Qtr1}{Numeric values representing the approval ratings for the first quarter.}
#'   \item{Qtr2}{Numeric values representing the approval ratings for the second quarter.}
#'   \item{Qtr3}{Numeric values representing the approval ratings for the third quarter.}
#'   \item{Qtr4}{Numeric values representing the approval ratings for the fourth quarter.}
#' }
#' @source Data on presidential approval ratings from 1945 to 1975.
#' @usage data(presidents_ts)
#' @export
load("data/presidents_ts.rda")
NULL



#' Election results for the 2008 U.S. Presidential race
#'
#' The dataset name has been changed to 'prrace08_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name prrace08_tbl_df
#' @format A tibble with 51 observations and 7 variables:
#' \describe{
#'   \item{state}{Factor indicating the U.S. state (including Washington D.C.) where the election took place.}
#'   \item{state_full}{Factor providing the full name of the U.S. state corresponding to the abbreviation.}
#'   \item{n_obama}{Integer representing the number of votes received by Barack Obama in the state.}
#'   \item{p_obama}{Numeric representing the percentage of total votes received by Barack Obama in the state.}
#'   \item{n_mc_cain}{Integer representing the number of votes received by John McCain in the state.}
#'   \item{p_mc_cain}{Numeric representing the percentage of total votes received by John McCain in the state.}
#'   \item{el_votes}{Integer indicating the number of electoral votes allocated to the state.}
#' }
#' @source Data on the 2008 U.S. presidential race results by state.
#' @usage data(prrace08_tbl_df)
#' @export
load("data/prrace08_tbl_df.rda")
NULL


#' Road Accident Deaths in US States
#'
#' The dataset name has been changed to 'road_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a data frame. The original content of the dataset has not been modified.
#'
#' @name road_df
#' @format A data frame with 26 observations and 6 variables:
#' \describe{
#'   \item{deaths}{Integer indicating the number of road deaths.}
#'   \item{drivers}{Integer representing the number of licensed drivers.}
#'   \item{popden}{Numeric indicating the population density (people per square mile).}
#'   \item{rural}{Numeric indicating the percentage of rural roads.}
#'   \item{temp}{Integer representing the average temperature (in degrees Fahrenheit).}
#'   \item{fuel}{Numeric indicating the fuel consumption per capita (in gallons).}
#' }
#' @source Data on road safety statistics, including deaths, drivers, population density, and environmental factors.
#' @usage data(road_df)
#' @export
load("data/road_df.rda")
NULL



#' Election results for the 2010 U.S. Senate races
#'
#' The dataset name has been changed to 'senaterace10_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name senaterace10_tbl_df
#' @format A tibble with 38 observations and 23 variables:
#' \describe{
#'   \item{id}{Numeric identifier for the election race.}
#'   \item{state}{Character string indicating the U.S. state where the election took place.}
#'   \item{abbr}{Character string representing the state abbreviation.}
#'   \item{name1}{Character string indicating the name of the first candidate.}
#'   \item{perc1}{Numeric indicating the percentage of votes received by the first candidate.}
#'   \item{party1}{Character string indicating the party affiliation of the first candidate.}
#'   \item{votes1}{Numeric indicating the total votes received by the first candidate.}
#'   \item{name2}{Character string indicating the name of the second candidate.}
#'   \item{perc2}{Numeric indicating the percentage of votes received by the second candidate.}
#'   \item{party2}{Character string indicating the party affiliation of the second candidate.}
#'   \item{votes2}{Numeric indicating the total votes received by the second candidate.}
#'   \item{name3}{Character string indicating the name of the third candidate.}
#'   \item{perc3}{Numeric indicating the percentage of votes received by the third candidate.}
#'   \item{party3}{Character string indicating the party affiliation of the third candidate.}
#'   \item{votes3}{Numeric indicating the total votes received by the third candidate.}
#'   \item{name4}{Character string indicating the name of the fourth candidate.}
#'   \item{perc4}{Numeric indicating the percentage of votes received by the fourth candidate.}
#'   \item{party4}{Character string indicating the party affiliation of the fourth candidate.}
#'   \item{votes4}{Numeric indicating the total votes received by the fourth candidate.}
#'   \item{name5}{Character string indicating the name of the fifth candidate.}
#'   \item{perc5}{Numeric indicating the percentage of votes received by the fifth candidate.}
#'   \item{party5}{Character string indicating the party affiliation of the fifth candidate.}
#'   \item{votes5}{Numeric indicating the total votes received by the fifth candidate.}
#' }
#' @source Data on U.S. Senate races held in 2010, including candidates' names, vote percentages, and party affiliations.
#' @usage data(senaterace10_tbl_df)
#' @export
load("data/senaterace10_tbl_df.rda")
NULL


#' Financial information for 50 S&P 500 companies
#'
#' The dataset name has been changed to 'sp500_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name sp500_tbl_df
#' @format A tibble with 50 observations and 12 variables:
#' \describe{
#'   \item{stock}{Factor indicating the stock ticker symbol of the company.}
#'   \item{market_cap}{Numeric representing the market capitalization of the company.}
#'   \item{ent_value}{Numeric representing the enterprise value of the company.}
#'   \item{trail_pe}{Numeric representing the trailing price-to-earnings ratio.}
#'   \item{forward_pe}{Numeric representing the forward price-to-earnings ratio.}
#'   \item{ev_over_rev}{Numeric representing the enterprise value to revenue ratio.}
#'   \item{profit_margin}{Numeric representing the profit margin of the company.}
#'   \item{revenue}{Numeric representing the total revenue generated by the company.}
#'   \item{growth}{Numeric representing the growth rate of the company.}
#'   \item{earn_before}{Numeric representing the earnings before interest and taxes (EBIT).}
#'   \item{cash}{Numeric representing the cash holdings of the company.}
#'   \item{debt}{Numeric representing the total debt of the company.}
#' }
#' @source Data on S&P 500 companies, including financial metrics and ratios.
#' @usage data(sp500_tbl_df)
#' @export
load("data/sp500_tbl_df.rda")
NULL


#' Daily observations for the S&P 500 - Historical Data (1950-2018)
#'
#' The dataset name has been changed to 'sp500_1950_2018_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name sp500_1950_2018_tbl_df
#' @format A tibble with 17346 observations and 7 variables:
#' \describe{
#'   \item{Date}{Factor indicating the date of the recorded stock prices.}
#'   \item{Open}{Numeric representing the opening price of the stock.}
#'   \item{High}{Numeric representing the highest price of the stock during the day.}
#'   \item{Low}{Numeric representing the lowest price of the stock during the day.}
#'   \item{Close}{Numeric representing the closing price of the stock.}
#'   \item{Adj.Close}{Numeric representing the adjusted closing price of the stock.}
#'   \item{Volume}{Numeric representing the trading volume of the stock.}
#' }
#' @source Historical data on S&P 500 stock prices from 1950 to 2018.
#' @usage data(sp500_1950_2018_tbl_df)
#' @export
load("data/sp500_1950_2018_tbl_df.rda")
NULL


#' US State Facts and Figures - U.S. State Abbreviations
#'
#' The dataset name has been changed to 'state_abb_character' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a character vector. The original content of the dataset has not been modified.
#'
#' @name state_abb_character
#' @format A character vector with 50 elements representing U.S. state abbreviations:
#' \describe{
#'   \item{state_abb}{Character vector of state abbreviations, e.g., "AL" for Alabama, "CA" for California.}
#' }
#' @source U.S. state abbreviations.
#' @usage data(state_abb_character)
#' @export
load("data/state_abb_character.rda")
NULL


#' US State Facts and Figures - US State Areas
#'
#' The dataset name has been changed to 'state_area_numeric' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a numeric dataset. The original content of the dataset has not been modified.
#'
#' @name state_area_numeric
#' @format A numeric dataset with 50 elements representing the area of U.S. states in square kilometers:
#' \describe{
#'   \item{state_area}{Numeric values indicating the area of each state, measured in square kilometers.}
#' }
#' @source U.S. state areas.
#' @usage data(state_area_numeric)
#' @export
load("data/state_area_numeric.rda")
NULL


#' US State Facts and Figures - US State Centers
#'
#' The dataset name has been changed to 'state_center_list' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a list. The original content of the dataset has not been modified.
#'
#' @name state_center_list
#' @format A list with 2 elements, each containing numeric values representing the geographical center coordinates
#' of U.S. states:
#' \describe{
#'   \item{x}{Numeric vector of length 50 representing the x-coordinates (longitude) of the state centers.}
#'   \item{y}{Numeric vector of length 50 representing the y-coordinates (latitude) of the state centers.}
#' }
#' @source Geographical data for U.S. state centers.
#' @usage data(state_center_list)
#' @export
load("data/state_center_list.rda")
NULL



#' US State Facts and Figures - US State Divisions
#'
#' The dataset name has been changed to 'state_division_factor' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a factor. The original content of the dataset has not been modified.
#'
#' @name state_division_factor
#' @format A factor with 50 observations representing the divisions of U.S. states. It contains 9 levels:
#' \describe{
#'   \item{East South Central}{Region including Alabama, Kentucky, Mississippi, and Tennessee.}
#'   \item{Pacific}{Region including California, Oregon, and Washington.}
#'   \item{Mountain}{Region including Colorado, Idaho, Montana, Nevada, Utah, and Wyoming.}
#'   \item{West South Central}{Region including Arkansas, Louisiana, Oklahoma, and Texas.}
#'   \item{New England}{Region including Connecticut, Maine, Massachusetts, New Hampshire, Rhode Island, and Vermont.}
#'   \item{South Atlantic}{Region including Delaware, Florida, Georgia, Maryland, North Carolina, South Carolina, Virginia, Washington, D.C., and West Virginia.}
#'   \item{East North Central}{Region including Illinois, Indiana, Michigan, Ohio, and Wisconsin.}
#'   \item{West North Central}{Region including Iowa, Kansas, Minnesota, Missouri, Nebraska, North Dakota, and South Dakota.}
#'   \item{Middle Atlantic}{Region including New Jersey, New York, and Pennsylvania.}
#' }
#' @source U.S. Census Bureau regional divisions.
#' @usage data(state_division_factor)
#' @export
load("data/state_division_factor.rda")
NULL



#' US State Facts and Figures - US State Names
#'
#' The dataset name has been changed to 'state_name_character' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a character vector. The original content of the dataset has not been modified.
#'
#' @name state_name_character
#' @format A character vector with 50 observations representing the names of U.S. states.
#' \describe{
#'   \item{"Alabama"}{Name of the state.}
#'   \item{"Alaska"}{Name of the state.}
#'   \item{"Arizona"}{Name of the state.}
#'   \item{"Arkansas"}{Name of the state.}
#'   \item{"California"}{Name of the state.}
#'   \item{"Colorado"}{Name of the state.}
#'   \item{"Connecticut"}{Name of the state.}
#'   \item{"Delaware"}{Name of the state.}
#'   \item{"Florida"}{Name of the state.}
#'   \item{"Georgia"}{Name of the state.}
#'   \item{"Hawaii"}{Name of the state.}
#'   \item{"Idaho"}{Name of the state.}
#'   \item{"Illinois"}{Name of the state.}
#'   \item{"Indiana"}{Name of the state.}
#'   \item{"Iowa"}{Name of the state.}
#'   \item{"Kansas"}{Name of the state.}
#'   \item{"Kentucky"}{Name of the state.}
#'   \item{"Louisiana"}{Name of the state.}
#'   \item{"Maine"}{Name of the state.}
#'   \item{"Maryland"}{Name of the state.}
#'   \item{"Massachusetts"}{Name of the state.}
#'   \item{"Michigan"}{Name of the state.}
#'   \item{"Minnesota"}{Name of the state.}
#'   \item{"Mississippi"}{Name of the state.}
#'   \item{"Missouri"}{Name of the state.}
#'   \item{"Montana"}{Name of the state.}
#'   \item{"Nebraska"}{Name of the state.}
#'   \item{"Nevada"}{Name of the state.}
#'   \item{"New Hampshire"}{Name of the state.}
#'   \item{"New Jersey"}{Name of the state.}
#'   \item{"New Mexico"}{Name of the state.}
#'   \item{"New York"}{Name of the state.}
#'   \item{"North Carolina"}{Name of the state.}
#'   \item{"North Dakota"}{Name of the state.}
#'   \item{"Ohio"}{Name of the state.}
#'   \item{"Oklahoma"}{Name of the state.}
#'   \item{"Oregon"}{Name of the state.}
#'   \item{"Pennsylvania"}{Name of the state.}
#'   \item{"Rhode Island"}{Name of the state.}
#'   \item{"South Carolina"}{Name of the state.}
#'   \item{"South Dakota"}{Name of the state.}
#'   \item{"Tennessee"}{Name of the state.}
#'   \item{"Texas"}{Name of the state.}
#'   \item{"Utah"}{Name of the state.}
#'   \item{"Vermont"}{Name of the state.}
#'   \item{"Virginia"}{Name of the state.}
#'   \item{"Washington"}{Name of the state.}
#'   \item{"West Virginia"}{Name of the state.}
#'   \item{"Wisconsin"}{Name of the state.}
#'   \item{"Wyoming"}{Name of the state.}
#' }
#' @source U.S. Census Bureau.
#' @usage data(state_name_character)
#' @export
load("data/state_name_character.rda")
NULL


#' US State Facts and Figures - US State Regions
#'
#' The dataset name has been changed to 'state_region_factor' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a factor variable representing U.S. state regions.
#'
#' @name state_region_factor
#' @format A factor variable with 50 observations, representing the region of each U.S. state.
#' The regions are classified into four levels:
#' \describe{
#'   \item{"Northeast"}{States located in the Northeast region.}
#'   \item{"South"}{States located in the Southern region.}
#'   \item{"North Central"}{States located in the North Central region.}
#'   \item{"West"}{States located in the Western region.}
#' }
#' @source U.S. Census Bureau.
#' @usage data(state_region_factor)
#' @export
load("data/state_region_factor.rda")
NULL



#' US State Facts and Figures - US State Demographics and Statistics (1977)
#'
#' The dataset name has been changed to 'state_x77_matrix' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a matrix variable representing various demographic and statistical
#' attributes of U.S. states in 1977.
#'
#' @name state_x77_matrix
#' @format A matrix with 50 rows and 8 columns representing various demographic and statistical
#' characteristics of U.S. states. The columns include:
#' \describe{
#'   \item{Population}{Population of the state.}
#'   \item{Income}{Median income of the state's residents.}
#'   \item{Illiteracy}{Illiteracy rate (percentage).}
#'   \item{Life Exp}{Life expectancy (in years).}
#'   \item{Murder}{Murder rate (per 100,000 inhabitants).}
#'   \item{HS Grad}{High school graduation rate (percentage).}
#'   \item{Frost}{Number of days with frost.}
#'   \item{Area}{Total area of the state (in square miles).}
#' }
#' @source U.S. Census Bureau (1977).
#' @usage data(state_x77_matrix)
#' @export
load("data/state_x77_matrix.rda")
NULL


#' US Crime Rates
#'
#' The dataset 'us_crime_rates_spec_tbl_df' contains crime statistics for the United States,
#' including various types of crimes and population data for each year. This dataset is
#' structured as a tibble for ease of use within the R ecosystem. This naming convention helps
#' distinguish this dataset as part of the 'usdatasets' package.
#'
#' @name us_crime_rates_spec_tbl_df
#' @format A tibble with 60 rows and 12 columns:
#' \describe{
#'   \item{year}{Numeric year of the recorded data, e.g., 2000, 2001.}
#'   \item{population}{Numeric population total for the respective year.}
#'   \item{total}{Numeric total number of crimes reported.}
#'   \item{violent}{Numeric total number of violent crimes.}
#'   \item{property}{Numeric total number of property crimes.}
#'   \item{murder}{Numeric total number of murders.}
#'   \item{forcible_rape}{Numeric total number of forcible rapes.}
#'   \item{robbery}{Numeric total number of robberies.}
#'   \item{aggravated_assault}{Numeric total number of aggravated assaults.}
#'   \item{burglary}{Numeric total number of burglaries.}
#'   \item{larceny_theft}{Numeric total number of larcenies.}
#'   \item{vehicle_theft}{Numeric total number of vehicle thefts.}
#' }
#' @source Federal Bureau of Investigation (FBI) Uniform Crime Reporting (UCR) Program.
#' @usage data(us_crime_rates_spec_tbl_df)
#' @export
load("data/us_crime_rates_spec_tbl_df.rda")
NULL


#' US Temperature Data
#'
#' The dataset 'us_temp_tbl_df' contains temperature records from various weather stations
#' across the United States, providing both maximum and minimum temperature readings.
#' This dataset is structured as a tibble for ease of use within the R ecosystem. This naming
#' convention helps distinguish this dataset as part of the 'usdatasets' package.
#'
#' @name us_temp_tbl_df
#' @format A tibble with 10,118 rows and 9 columns:
#' \describe{
#'   \item{station}{Character string representing the weather station identifier.}
#'   \item{name}{Character string for the name of the weather station.}
#'   \item{latitude}{Numeric value for the latitude of the weather station.}
#'   \item{longitude}{Numeric value for the longitude of the weather station.}
#'   \item{elevation}{Numeric value for the elevation of the weather station in meters.}
#'   \item{date}{Date of the recorded temperature data.}
#'   \item{tmax}{Numeric value for the maximum temperature recorded (in degrees Celsius).}
#'   \item{tmin}{Numeric value for the minimum temperature recorded (in degrees Celsius).}
#'   \item{year}{Factor representing the year of the recorded data.}
#' }
#' @source National Oceanic and Atmospheric Administration (NOAA).
#' @usage data(us_temp_tbl_df)
#' @export
load("data/us_temp_tbl_df.rda")
NULL


#' American Time Survey 2009 - 2019
#'
#' The dataset name has been changed to 'us_time_survey_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a tibble. The original content of the dataset has not been modified.
#'
#' @name us_time_survey_tbl_df
#' @format A tibble with 11 observations and 8 variables representing time use in various activities:
#' \describe{
#'   \item{year}{Numeric value representing the year of the survey.}
#'   \item{household_activities}{Numeric value representing time spent on household activities (in hours).}
#'   \item{eating_and_drinking}{Numeric value representing time spent on eating and drinking (in hours).}
#'   \item{leisure_and_sports}{Numeric value representing time spent on leisure and sports activities (in hours).}
#'   \item{sleeping}{Numeric value representing time spent sleeping (in hours).}
#'   \item{caring_children}{Numeric value representing time spent caring for children (in hours).}
#'   \item{working_employed}{Numeric value representing time spent working while employed (in hours).}
#'   \item{working_employed_days_worked}{Numeric value representing the number of days worked while employed.}
#' }
#' @source U.S. Bureau of Labor Statistics.
#' @usage data(us_time_survey_tbl_df)
#' @export
load("data/us_time_survey_tbl_df.rda")
NULL



#' Populations Recorded by the US Census
#'
#' The dataset name has been changed to 'uspop_ts' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a time series object. The original content of the dataset has not been modified.
#'
#' @name uspop_ts
#' @format A time series object with 19 observations representing the U.S. population from 1790 to 1970:
#' \describe{
#'   \item{values}{Numeric vector containing the population values in millions.}
#' }
#' @source U.S. Census Bureau.
#' @usage data(uspop_ts)
#' @export
load("data/uspop_ts.rda")
NULL


#' Student Admissions at UC Berkeley
#'
#' The dataset name has been changed to 'UCBAdmissions_table' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a table object. The original content of the dataset has not been modified.
#'
#' @name UCBAdmissions_table
#' @format A table object with 24 entries representing the admissions data at U.C. Berkeley:
#' \describe{
#'   \item{Admit}{A factor with levels "Admitted" and "Rejected".}
#'   \item{Gender}{A factor with levels "Male" and "Female".}
#'   \item{Dept}{A factor representing the department with levels "A", "B", "C", "D", "E", and "F".}
#'   \item{values}{Numeric counts of admissions based on gender and department.}
#' }
#' @source U.C. Berkeley admissions data from 1973.
#' @usage data(UCBAdmissions_table)
#' @export
load("data/UCBAdmissions_table.rda")
NULL


#' Accidental Deaths in the US 1973-1978
#'
#' The dataset name has been changed to 'USAccDeaths_ts' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a time series object. The original content of the dataset has not been modified.
#'
#' @name USAccDeaths_ts
#' @format A time series object with 72 observations representing monthly accidental deaths in the U.S.
#' from 1973 to 1979:
#' \describe{
#'   \item{years}{A numeric vector representing the years from 1973 to 1979.}
#'   \item{months}{A character vector representing the months from January to December.}
#'   \item{deaths}{Numeric values representing the number of accidental deaths for each month.}
#' }
#' @source U.S. accidental deaths data.
#' @usage data(USAccDeaths_ts)
#' @export
load("data/USAccDeaths_ts.rda")
NULL



#' Violent Crime Rates by US State
#'
#' The dataset name has been changed to 'USArrests_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a data frame. The original content of the dataset has not been modified.
#'
#' @name USArrests_df
#' @format A data frame with 50 observations and 4 variables representing the rates of arrests in the U.S.:
#' \describe{
#'   \item{Murder}{Numeric vector representing the murder rates per 100,000 residents.}
#'   \item{Assault}{Integer vector representing the assault rates per 100,000 residents.}
#'   \item{UrbanPop}{Integer vector representing the percentage of the population living in urban areas.}
#'   \item{Rape}{Numeric vector representing the rape rates per 100,000 residents.}
#' }
#' @source U.S. arrests data from 1973.
#' @usage data(USArrests_df)
#' @export
load("data/USArrests_df.rda")
NULL




#' Lawyers' Ratings of State Judges in the US Superior Court
#'
#' The dataset name has been changed to 'USJudgeRatings_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a data frame. The original content of the dataset has not been modified.
#'
#' @name USJudgeRatings_df
#' @format A data frame with 43 observations and 12 variables representing ratings for U.S. judges:
#' \describe{
#'   \item{CONT}{Numeric vector representing the judges' ratings on control.}
#'   \item{INTG}{Numeric vector representing the judges' ratings on integrity.}
#'   \item{DMNR}{Numeric vector representing the judges' ratings on demeanor.}
#'   \item{DILG}{Numeric vector representing the judges' ratings on diligence.}
#'   \item{CFMG}{Numeric vector representing the judges' ratings on communications with clients.}
#'   \item{DECI}{Numeric vector representing the judges' ratings on decisiveness.}
#'   \item{PREP}{Numeric vector representing the judges' ratings on preparation.}
#'   \item{FAMI}{Numeric vector representing the judges' ratings on family law expertise.}
#'   \item{ORAL}{Numeric vector representing the judges' ratings on oral communications.}
#'   \item{WRIT}{Numeric vector representing the judges' ratings on written communications.}
#'   \item{PHYS}{Numeric vector representing the judges' ratings on physical appearance.}
#'   \item{RTEN}{Numeric vector representing the judges' ratings on overall rating.}
#' }
#' @source U.S. judge ratings data.
#' @usage data(USJudgeRatings_df)
#' @export
load("data/USJudgeRatings_df.rda")
NULL



#' Personal Expenditure Data
#'
#' The dataset name has been changed to 'USPersonalExpenditure_matrix' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a matrix. The original content of the dataset has not been modified.
#'
#' @name USPersonalExpenditure_matrix
#' @format A matrix with 5 rows and 5 columns representing U.S. personal expenditures in different categories over selected years:
#' \describe{
#'   \item{Food and Tobacco}{Numeric values representing expenditures on food and tobacco for the years 1940, 1945, 1950, 1955, and 1960.}
#'   \item{Household Operation}{Numeric values representing expenditures on household operations for the years 1940, 1945, 1950, 1955, and 1960.}
#'   \item{Medical and Health}{Numeric values representing expenditures on medical and health services for the years 1940, 1945, 1950, 1955, and 1960.}
#'   \item{Personal Care}{Numeric values representing expenditures on personal care for the years 1940, 1945, 1950, 1955, and 1960.}
#'   \item{Private Education}{Numeric values representing expenditures on private education for the years 1940, 1945, 1950, 1955, and 1960.}
#' }
#' @source U.S. personal expenditure data.
#' @usage data(USPersonalExpenditure_matrix)
#' @export
load("data/USPersonalExpenditure_matrix.rda")
NULL


#' Distances Between European Cities and Between US Cities
#'
#' The dataset name has been changed to 'UScitiesD_dist' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a distance object. The original content of the dataset has not been modified.
#'
#' @name UScitiesD_dist
#' @format A distance object containing the distances (in miles) between selected U.S. cities:
#' \describe{
#'   \item{Atlanta}{Distance from Atlanta to other cities.}
#'   \item{Chicago}{Distance from Chicago to other cities.}
#'   \item{Denver}{Distance from Denver to other cities.}
#'   \item{Houston}{Distance from Houston to other cities.}
#'   \item{LosAngeles}{Distance from Los Angeles to other cities.}
#'   \item{Miami}{Distance from Miami to other cities.}
#'   \item{NewYork}{Distance from New York to other cities.}
#'   \item{SanFrancisco}{Distance from San Francisco to other cities.}
#'   \item{Seattle}{Distance from Seattle to other cities.}
#'   \item{Washington.DC}{Distance from Washington D.C. to other cities.}
#' }
#' @source U.S. cities distance data.
#' @usage data(UScitiesD_dist)
#' @export
load("data/UScitiesD_dist.rda")
NULL


#' Death Rates in Virginia (1940)
#'
#' The dataset name has been changed to 'VADeaths_matrix' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a matrix. The original content of the dataset has not been modified.
#'
#' @name VADeaths_matrix
#' @format A matrix containing mortality rates (per 1000) for different demographic groups in Virginia:
#' \describe{
#'   \item{Rural Male}{Mortality rates for rural males by age group.}
#'   \item{Rural Female}{Mortality rates for rural females by age group.}
#'   \item{Urban Male}{Mortality rates for urban males by age group.}
#'   \item{Urban Female}{Mortality rates for urban females by age group.}
#' }
#' @source Virginia mortality data.
#' @usage data(VADeaths_matrix)
#' @export
load("data/VADeaths_matrix.rda")
NULL


#' US Voter Turnout Data.
#'
#' The dataset name has been changed to 'voter_count_spec_tbl_df' to avoid confusion with other packages
#' in the R ecosystem. This naming convention helps distinguish this dataset as part of the 'usdatasets'
#' package and identifies it as a special tibble. The original content of the dataset has not been modified.
#'
#' @name voter_count_spec_tbl_df
#' @format A special tibble containing voting statistics across different years and regions:
#' \describe{
#'   \item{year}{Year of the election.}
#'   \item{region}{Region of the voters.}
#'   \item{voting_eligible_population}{Total population eligible to vote.}
#'   \item{total_ballots_counted}{Total number of ballots counted.}
#'   \item{highest_office}{Total votes for the highest office.}
#'   \item{percent_total_ballots_counted}{Percentage of total ballots counted.}
#'   \item{percent_highest_office}{Percentage of votes for the highest office.}
#' }
#' @source Election data from various sources.
#' @usage data(voter_count_spec_tbl_df)
#' @export
load("data/voter_count_spec_tbl_df.rda")
NULL



#' Average Heights and Weights for American Women
#'
#' The dataset name has been kept as 'women_df' to maintain consistency with other datasets
#' in the R ecosystem. This naming convention helps clearly identify this dataset within the
#' context of its application. The original content of the dataset has not been modified.
#'
#' @name women_df
#' @format A data frame containing measurements of women's height and weight:
#' \describe{
#'   \item{height}{Height of women in inches.}
#'   \item{weight}{Weight of women in pounds.}
#' }
#' @source Based on statistical data for women's height and weight.
#' @usage data(women_df)
#' @export
load("data/women_df.rda")
NULL


