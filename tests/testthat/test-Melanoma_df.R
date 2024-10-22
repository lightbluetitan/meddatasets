# MedDataSets - Comprehensive Medical, Disease, Treatment, and Drug Datasets
# Version 0.1.0
# Copyright (C) 2024 Renzo Caceres Rossi
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

# Melanoma_df data set

library(testthat)

library(MedDataSets)

# Test that Melanoma_df has the correct structure
test_that("Melanoma_df has the correct structure", {
  expect_s3_class(Melanoma_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Melanoma_df), 205)
  expect_equal(ncol(Melanoma_df), 7)

  # Column names test
  expected_names <- c("time", "status", "sex", "age", "year", "thickness", "ulcer")
  expect_equal(names(Melanoma_df), expected_names)
})

# Test that Melanoma_df has correct data types
test_that("Melanoma_df has correct data types", {
  # Integer columns
  expect_type(Melanoma_df$time, "integer")
  expect_type(Melanoma_df$status, "integer")
  expect_type(Melanoma_df$sex, "integer")
  expect_type(Melanoma_df$age, "integer")
  expect_type(Melanoma_df$year, "integer")
  expect_type(Melanoma_df$ulcer, "integer")

  # Numeric columns
  expect_type(Melanoma_df$thickness, "double")
})

# Test that Melanoma_df has no NA values
test_that("Melanoma_df has no NA values", {
  expect_false(any(is.na(Melanoma_df)))
})

# Test that Melanoma_df values are in valid ranges
test_that("Melanoma_df has values in valid ranges", {
  # Check if numeric values are finite
  expect_true(all(is.finite(Melanoma_df$time)))
  expect_true(all(is.finite(Melanoma_df$status)))
  expect_true(all(is.finite(Melanoma_df$sex)))
  expect_true(all(is.finite(Melanoma_df$age)))
  expect_true(all(is.finite(Melanoma_df$year)))
  expect_true(all(is.finite(Melanoma_df$thickness)))
  expect_true(all(is.finite(Melanoma_df$ulcer)))

  # Example logical ranges (you may adjust these as necessary)
  expect_true(all(Melanoma_df$time >= 0))  # Assuming time cannot be negative
  expect_true(all(Melanoma_df$age >= 0))   # Assuming age cannot be negative
  expect_true(all(Melanoma_df$thickness >= 0))  # Assuming thickness cannot be negative
})
