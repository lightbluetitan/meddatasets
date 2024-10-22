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

# Aids2_df data set


library(testthat)

library(MedDataSets)

# Test that Aids2_df has the correct structure
test_that("Aids2_df has the correct structure", {
  expect_s3_class(Aids2_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Aids2_df), 2843)
  expect_equal(ncol(Aids2_df), 7)

  # Column names test
  expected_names <- c("state", "sex", "diag", "death", "status", "T.categ", "age")
  expect_equal(names(Aids2_df), expected_names)
})

# Test that Aids2_df has correct data types
test_that("Aids2_df has correct data types", {
  # Factor columns
  expect_s3_class(Aids2_df$state, "factor")
  expect_s3_class(Aids2_df$sex, "factor")
  expect_s3_class(Aids2_df$status, "factor")
  expect_s3_class(Aids2_df$T.categ, "factor")

  # Integer columns
  expect_type(Aids2_df$diag, "integer")
  expect_type(Aids2_df$death, "integer")
  expect_type(Aids2_df$age, "integer")
})

# Test that Aids2_df has no NA values
test_that("Aids2_df has no NA values", {
  expect_false(any(is.na(Aids2_df)))
})

# Test that Aids2_df values are in valid ranges
test_that("Aids2_df has values in valid ranges", {
  # Check if age values are non-negative
  expect_true(all(Aids2_df$age >= 0))

  # Check if diagnosis and death counts are non-negative
  expect_true(all(Aids2_df$diag >= 0))
  expect_true(all(Aids2_df$death >= 0))
})





