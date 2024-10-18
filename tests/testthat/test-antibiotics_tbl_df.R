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

#  antibiotics_tbl_df data set

library(testthat)

library(MedDataSets)

# Test that antibiotics_tbl_df has correct data type
test_that("antibiotics_tbl_df has correct data type", {
  expect_s3_class(antibiotics_tbl_df, "tbl_df")
  expect_s3_class(antibiotics_tbl_df, "data.frame")
})

# Test that antibiotics_tbl_df has valid factor levels
test_that("antibiotics_tbl_df has valid factor levels", {
  # Get actual levels from the dataset
  actual_levels <- levels(antibiotics_tbl_df$condition)

  # Define the expected valid levels based on the dataset
  expected_levels <- c("Cardiovascular", "Gastrointestinal", "Genetic/metabolic",
                       "Immunocompromised", "Neuromuscular", "Prematurity",
                       "Respiratory", "Trauma")

  # Check if all actual levels are included in expected levels
  expect_true(all(actual_levels %in% expected_levels))

  # Optionally, check if the length of actual levels matches the expected
  expect_equal(length(actual_levels), length(expected_levels))
})


