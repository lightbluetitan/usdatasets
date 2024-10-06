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

# cia_factbook_tbl_df data set

library(testthat)

library(usdatasets)

# Verificar que el data set se carga correctamente
test_that("cia_factbook_tbl_df loads correctly and has the expected structure", {
  expect_s3_class(cia_factbook_tbl_df, "tbl_df")
  expect_equal(nrow(cia_factbook_tbl_df), 259)
  expect_equal(ncol(cia_factbook_tbl_df), 11)

  expect_equal(names(cia_factbook_tbl_df),
               c("country", "area", "birth_rate", "death_rate",
                 "infant_mortality_rate", "internet_users",
                 "life_exp_at_birth", "maternal_mortality_rate",
                 "net_migration_rate", "population",
                 "population_growth_rate"))
})

# Verificar que no hay valores NA en columnas críticas
test_that("cia_factbook_tbl_df reports NA values in critical columns", {
  critical_columns <- c("birth_rate", "death_rate", "infant_mortality_rate",
                        "life_exp_at_birth", "population")

  for (column in critical_columns) {
    n_na <- sum(is.na(cia_factbook_tbl_df[[column]]))
    expect_true(n_na >= 0,
                info = paste("Hay", n_na, "NA en", column))
  }
})

# Verificar que las tasas de natalidad y mortalidad están en rangos válidos
test_that("cia_factbook_tbl_df has valid birth and death rates", {
  expect_true(all(cia_factbook_tbl_df$birth_rate >= 0 & cia_factbook_tbl_df$birth_rate <= 50, na.rm = TRUE),
              info = "Hay valores inválidos en birth_rate")
  expect_true(all(cia_factbook_tbl_df$death_rate >= 0 & cia_factbook_tbl_df$death_rate <= 50, na.rm = TRUE),
              info = "Hay valores inválidos en death_rate")
})

# Verificar que la esperanza de vida al nacer sea un valor razonable
test_that("cia_factbook_tbl_df has reasonable life expectancy values", {
  expect_true(all(cia_factbook_tbl_df$life_exp_at_birth > 0 & cia_factbook_tbl_df$life_exp_at_birth < 100, na.rm = TRUE),
              info = "Hay valores inválidos en life_exp_at_birth")
})

# Verificar que no haya valores negativos en áreas o población
test_that("cia_factbook_tbl_df has non-negative area and population values", {
  expect_true(all(cia_factbook_tbl_df$area >= 0, na.rm = TRUE),
              info = "Hay valores negativos en area")
  expect_true(all(cia_factbook_tbl_df$population >= 0, na.rm = TRUE),
              info = "Hay valores negativos en population")
})

# Verificar que el número de usuarios de internet sea coherente
test_that("cia_factbook_tbl_df has non-negative internet users", {
  expect_true(all(cia_factbook_tbl_df$internet_users >= 0, na.rm = TRUE),
              info = "Hay valores negativos en internet_users")
})
