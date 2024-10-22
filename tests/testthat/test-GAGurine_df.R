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

# GAGurine_df data seet

library(testthat)

library(MedDataSets)

# Test that GAGurine_df has the correct structure
test_that("GAGurine_df has the correct structure", {
  expect_s3_class(GAGurine_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(GAGurine_df), 314)
  expect_equal(ncol(GAGurine_df), 2)

  # Column names test
  expected_names <- c("Age", "GAG")
  expect_equal(names(GAGurine_df), expected_names)
})

# Test that GAGurine_df has correct data types
test_that("GAGurine_df has correct data types", {
  # Numeric columns
  expect_type(GAGurine_df$Age, "double")
  expect_type(GAGurine_df$GAG, "double")
})

# Test that GAGurine_df has no NA values
test_that("GAGurine_df has no NA values", {
  expect_false(any(is.na(GAGurine_df)))
})

# Test that GAGurine_df values are in valid ranges
test_that("GAGurine_df has values in valid ranges", {
  # Check if numeric values are finite
  expect_true(all(is.finite(GAGurine_df$Age)))
  expect_true(all(is.finite(GAGurine_df$GAG)))

  # Example logical ranges (you may adjust these as necessary)
  expect_true(all(GAGurine_df$Age >= 0))  # Assuming age cannot be negative
  expect_true(all(GAGurine_df$GAG >= 0))  # Assuming GAG values cannot be negative
})

