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

#  leuk_df data set

library(testthat)

library(MedDataSets)

# Test that leuk_df has the correct structure
test_that("leuk_df has the correct structure", {
  expect_s3_class(leuk_df, "data.frame")
  expect_equal(nrow(leuk_df), 33)
  expect_equal(ncol(leuk_df), 3)

  expected_names <- c("wbc", "ag", "time")
  expect_equal(names(leuk_df), expected_names)
})

# Test that leuk_df has correct data types
test_that("leuk_df has correct data types", {
  expect_type(leuk_df$wbc, "integer")
  expect_s3_class(leuk_df$ag, "factor")
  expect_type(leuk_df$time, "integer")
})

# Test that leuk_df has no NA values
test_that("leuk_df has no NA values", {
  expect_false(any(is.na(leuk_df)))
})

# Test that leuk_df has values in valid ranges
test_that("leuk_df has values in valid ranges", {
  expect_true(all(is.finite(leuk_df$wbc)))
  expect_true(all(leuk_df$wbc >= 0))  # Assuming WBC count should not be negative
  expect_true(all(is.finite(leuk_df$time)))
  expect_true(all(leuk_df$time >= 0))  # Assuming time should not be negative
})

# Test that leuk_df has correct factor levels
test_that("leuk_df has correct factor levels", {
  expect_equal(levels(leuk_df$ag), c("absent", "present"))  # Update to actual levels
})
