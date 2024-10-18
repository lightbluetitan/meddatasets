# MedDataSets - Comprehensive Medical, Disease, Treatment, and Drug Datasets
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

# Puromycin_df data set

library(testthat)

library(MedDataSets)

test_that("Puromycin_df has the correct structure", {
  # Class test
  expect_s3_class(Puromycin_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Puromycin_df), 23)
  expect_equal(ncol(Puromycin_df), 3)

  # Column names test
  expected_names <- c("conc", "rate", "state")
  expect_equal(names(Puromycin_df), expected_names)
})

test_that("Puromycin_df has correct data types", {
  # Numeric columns
  expect_type(Puromycin_df$conc, "double")
  expect_type(Puromycin_df$rate, "double")

  # Factor column
  expect_s3_class(Puromycin_df$state, "factor")
})

test_that("Puromycin_df factors have correct levels", {
  # State levels
  expect_equal(nlevels(Puromycin_df$state), 2)
})

test_that("Puromycin_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(Puromycin_df)))
})

test_that("Puromycin_df has correct attributes", {
  # Check for 'reference' attribute
  expect_true(!is.null(attr(Puromycin_df, "reference")))

  # Verify the 'reference' attribute is a character
  expect_type(attr(Puromycin_df, "reference"), "character")
})

test_that("Puromycin_df has values in valid ranges", {
  # Verify all numeric values are finite
  expect_true(all(is.finite(Puromycin_df$conc)))
  expect_true(all(is.finite(Puromycin_df$rate)))

  # Verify conc and rate are positive
  expect_true(all(Puromycin_df$conc > 0))
  expect_true(all(Puromycin_df$rate > 0))
})
