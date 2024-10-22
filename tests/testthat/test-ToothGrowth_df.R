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

# ToothGrowth_df data set



library(testthat)

library(MedDataSets)

# Test that ToothGrowth_df has the correct structure
test_that("ToothGrowth_df has the correct structure", {
  expect_s3_class(ToothGrowth_df, "data.frame")
  # Remove expectations for tbl_df and tbl classes

  # Dimensions test
  expect_equal(nrow(ToothGrowth_df), 60)
  expect_equal(ncol(ToothGrowth_df), 3)

  # Column names test
  expected_names <- c("len", "supp", "dose")
  expect_equal(names(ToothGrowth_df), expected_names)
})

test_that("ToothGrowth_df has correct data types", {
  # Numeric columns
  expect_type(ToothGrowth_df$len, "double")
  expect_type(ToothGrowth_df$dose, "double")

  # Factor column
  expect_s3_class(ToothGrowth_df$supp, "factor")
})

test_that("ToothGrowth_df factors have correct levels", {
  # Check levels of the 'supp' factor
  expect_equal(nlevels(ToothGrowth_df$supp), 2)
})

test_that("ToothGrowth_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(ToothGrowth_df)))
})

test_that("ToothGrowth_df has values in valid ranges", {
  # Verify all numeric values are finite
  expect_true(all(is.finite(ToothGrowth_df$len)))
  expect_true(all(is.finite(ToothGrowth_df$dose)))

  # Verify logical ranges
  expect_true(all(ToothGrowth_df$len >= 0))  # Assuming length cannot be negative
  expect_true(all(ToothGrowth_df$dose >= 0))  # Assuming dose cannot be negative
})
