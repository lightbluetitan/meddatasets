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

# infert_df data set


library(testthat)

library(MedDataSets)

# Test that infert_df has the correct structure
test_that("infert_df has the correct structure", {
  expect_s3_class(infert_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(infert_df), 248)
  expect_equal(ncol(infert_df), 8)

  # Column names test
  expected_names <- c("education", "age", "parity", "induced", "case", "spontaneous", "stratum", "pooled.stratum")
  expect_equal(names(infert_df), expected_names)
})

# Test that infert_df has correct data types
test_that("infert_df has correct data types", {
  # Factor column
  expect_s3_class(infert_df$education, "factor")

  # Numeric columns
  expect_type(infert_df$age, "double")
  expect_type(infert_df$parity, "double")
  expect_type(infert_df$induced, "double")
  expect_type(infert_df$case, "double")
  expect_type(infert_df$spontaneous, "double")
  expect_type(infert_df$pooled.stratum, "double")

  # Integer column
  expect_type(infert_df$stratum, "integer")
})

# Test that infert_df has no NA values
test_that("infert_df has no NA values", {
  expect_false(any(is.na(infert_df)))
})

# Test that infert_df values are in valid ranges
test_that("infert_df has values in valid ranges", {
  # Example logical ranges (adjust these based on the dataset's context)
  expect_true(all(infert_df$age > 0))
  expect_true(all(infert_df$parity >= 0))
  expect_true(all(infert_df$induced >= 0))
  expect_true(all(infert_df$case >= 0))
  expect_true(all(infert_df$spontaneous >= 0))
})




