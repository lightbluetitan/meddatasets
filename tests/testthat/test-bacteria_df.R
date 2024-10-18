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

#  bacteria_df data set


library(testthat)

library(MedDataSets)

# Test that bacteria_df has the correct structure
test_that("bacteria_df has the correct structure", {
  expect_s3_class(bacteria_df, "data.frame")
  expect_equal(nrow(bacteria_df), 220)
  expect_equal(ncol(bacteria_df), 6)

  expected_names <- c("y", "ap", "hilo", "week", "ID", "trt")
  expect_equal(names(bacteria_df), expected_names)
})

# Test that bacteria_df has correct data types
test_that("bacteria_df has correct data types", {
  expect_s3_class(bacteria_df$y, "factor")
  expect_s3_class(bacteria_df$ap, "factor")
  expect_s3_class(bacteria_df$hilo, "factor")
  expect_type(bacteria_df$week, "integer")
  expect_s3_class(bacteria_df$ID, "factor")
  expect_s3_class(bacteria_df$trt, "factor")
})

# Test that bacteria_df has no NA values
test_that("bacteria_df has no NA values", {
  expect_false(any(is.na(bacteria_df)))
})

# Test that bacteria_df has values in valid ranges
test_that("bacteria_df has values in valid ranges", {
  expect_true(all(is.finite(bacteria_df$week)))
  expect_true(all(bacteria_df$week >= 0))
})

# Test that bacteria_df has correct factor levels
test_that("bacteria_df has correct factor levels", {
  expect_equal(levels(bacteria_df$y), c("n", "y"))  # Adjusted to match actual levels
  expect_equal(levels(bacteria_df$ap), c("a", "p"))
  expect_equal(levels(bacteria_df$hilo), c("hi", "lo"))
  expect_equal(levels(bacteria_df$trt), c("placebo", "drug", "drug+"))
})
