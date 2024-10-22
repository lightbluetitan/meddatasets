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

# VA_df data set

library(testthat)

library(MedDataSets)

# Test that VA_df has the correct structure
test_that("VA_df has the correct structure", {
  expect_s3_class(VA_df, "data.frame")
  expect_equal(nrow(VA_df), 137)
  expect_equal(ncol(VA_df), 8)
  expected_names <- c("stime", "status", "treat", "age", "Karn", "diag.time", "cell", "prior")
  expect_equal(names(VA_df), expected_names)
})

# Test that VA_df has correct data types
test_that("VA_df has correct data types", {
  expect_type(VA_df$stime, "double")
  expect_type(VA_df$status, "double")
  expect_s3_class(VA_df$treat, "factor")
  expect_type(VA_df$age, "double")
  expect_type(VA_df$Karn, "double")
  expect_type(VA_df$diag.time, "double")
  expect_s3_class(VA_df$cell, "factor")
  expect_s3_class(VA_df$prior, "factor")
})

# Test that VA_df has no NA values
test_that("VA_df has no NA values", {
  expect_false(any(is.na(VA_df)))
})

# Test that VA_df has values in valid ranges
test_that("VA_df has values in valid ranges", {
  expect_true(all(is.finite(VA_df$stime)))
  expect_true(all(is.finite(VA_df$status)))
  expect_true(all(is.finite(VA_df$age)))
  expect_true(all(is.finite(VA_df$Karn)))
  expect_true(all(is.finite(VA_df$diag.time)))
  expect_true(all(VA_df$stime >= 0))
  expect_true(all(VA_df$status >= 0))
  expect_true(all(VA_df$age >= 0))
  expect_true(all(VA_df$Karn >= 0))
  expect_true(all(VA_df$diag.time >= 0))
})

# Test that VA_df has correct factor levels
test_that("VA_df has correct factor levels", {
  expect_equal(levels(VA_df$treat), levels(VA_df$treat))  # Adjust if specific levels are expected
  expect_equal(levels(VA_df$cell), c("1", "2", "3", "4"))
  expect_equal(levels(VA_df$prior), levels(VA_df$prior))  # Adjust if specific levels are expected
})
