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

#  babies_tbl_df data set

library(testthat)

library(MedDataSets)

# Test that babies_tbl_df has the correct structure
test_that("babies_tbl_df has the correct structure", {
  expect_s3_class(babies_tbl_df, "tbl_df")
  expect_s3_class(babies_tbl_df, "data.frame")
})

# Test the data types of the columns
test_that("babies_tbl_df has correct data types", {
  expect_type(babies_tbl_df$case, "integer")
  expect_type(babies_tbl_df$bwt, "integer")
  expect_type(babies_tbl_df$gestation, "integer")
  expect_type(babies_tbl_df$parity, "integer")
  expect_type(babies_tbl_df$age, "integer")
  expect_type(babies_tbl_df$height, "integer")
  expect_type(babies_tbl_df$weight, "integer")
  expect_type(babies_tbl_df$smoke, "integer")  # Assuming 'smoke' is coded as integer (e.g., 0 and 1)
})

# If 'smoke' is meant to be a factor, create expected levels and check
test_that("babies_tbl_df has correct factor levels for smoke", {
  # Convert smoke to factor for testing purposes (if applicable)
  babies_tbl_df$smoke <- factor(babies_tbl_df$smoke, levels = c(0, 1), labels = c("No", "Yes"))

  # Check the levels
  actual_smoke_levels <- levels(babies_tbl_df$smoke)
  expected_smoke_levels <- c("No", "Yes")  # Adjust if different levels are expected

  expect_true(all(actual_smoke_levels %in% expected_smoke_levels))
})


