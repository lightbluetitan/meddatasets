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

# Cushings_df data set

library(testthat)

library(MedDataSets)

# Test that Cushings_df has the correct structure
test_that("Cushings_df has the correct structure", {
  expect_s3_class(Cushings_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Cushings_df), 27)
  expect_equal(ncol(Cushings_df), 3)

  # Column names test
  expected_names <- c("Tetrahydrocortisone", "Pregnanetriol", "Type")
  expect_equal(names(Cushings_df), expected_names)
})

# Test that Cushings_df has correct data types
test_that("Cushings_df has correct data types", {
  # Numeric columns
  expect_type(Cushings_df$Tetrahydrocortisone, "double")
  expect_type(Cushings_df$Pregnanetriol, "double")

  # Factor column
  expect_s3_class(Cushings_df$Type, "factor")
})

# Test that Cushings_df has no NA values
test_that("Cushings_df has no NA values", {
  expect_false(any(is.na(Cushings_df)))
})

# Test that Cushings_df values are in valid ranges
test_that("Cushings_df has values in valid ranges", {
  # Check if numeric values are finite
  expect_true(all(is.finite(Cushings_df$Tetrahydrocortisone)))
  expect_true(all(is.finite(Cushings_df$Pregnanetriol)))

  # Example logical ranges (you may adjust these as necessary)
  expect_true(all(Cushings_df$Tetrahydrocortisone >= 0))  # Assuming values cannot be negative
  expect_true(all(Cushings_df$Pregnanetriol >= 0))        # Assuming values cannot be negative
})

