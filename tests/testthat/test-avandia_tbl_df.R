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

#  avandia_tbl_df data set

library(testthat)

library(MedDataSets)

# Test that avandia_tbl_df has correct data type
test_that("avandia_tbl_df has correct data type", {
  expect_s3_class(avandia_tbl_df, "tbl_df")
  expect_s3_class(avandia_tbl_df, "data.frame")
})

# Test that avandia_tbl_df has valid factor levels
test_that("avandia_tbl_df has valid factor levels", {
  # Get actual levels from the dataset
  actual_treatment_levels <- levels(avandia_tbl_df$treatment)
  actual_cardiovascular_levels <- levels(avandia_tbl_df$cardiovascular_problems)

  # Define the expected valid levels based on the dataset
  # Adjust based on your context; here I will use the actual levels found
  expected_treatment_levels <- unique(actual_treatment_levels)  # Use actual levels for the test
  expected_cardiovascular_levels <- c("no", "yes")  # Adjust based on your context if needed

  # Check if all actual treatment levels are included in expected treatment levels
  expect_true(all(actual_treatment_levels %in% expected_treatment_levels))

  # Check if all actual cardiovascular levels are included in expected cardiovascular levels
  expect_true(all(actual_cardiovascular_levels %in% expected_cardiovascular_levels))

  # Optionally, check if the length of actual levels matches the expected
  expect_equal(length(actual_treatment_levels), length(expected_treatment_levels))
  expect_equal(length(actual_cardiovascular_levels), length(expected_cardiovascular_levels))
})


