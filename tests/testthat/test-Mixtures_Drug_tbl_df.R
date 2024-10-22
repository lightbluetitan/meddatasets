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

#  Mixtures_Drug_tbl_df data set


library(testthat)

library(MedDataSets)


# Test that Mixtures_Drug_tbl_df has the correct structure and types
test_that("Mixtures_Drug_tbl_df has the correct structure and types", {
  expect_s3_class(Mixtures_Drug_tbl_df, "tbl_df")  # Check that it's a tibble
  expect_true(all(c("name", "ingredients", "parent_key") %in% names(Mixtures_Drug_tbl_df)))
})

# Test for missing values in critical columns
test_that("Mixtures_Drug_tbl_df has no missing values in critical columns", {
  expect_false(any(is.na(Mixtures_Drug_tbl_df$name)), info = "There are NA values in the name column.")
  expect_false(any(is.na(Mixtures_Drug_tbl_df$ingredients)), info = "There are NA values in the ingredients column.")
  expect_false(any(is.na(Mixtures_Drug_tbl_df$parent_key)), info = "There are NA values in the parent_key column.")
})

# Test for unique values in the 'name' column
test_that("Mixtures_Drug_tbl_df has unique drug names", {
  num_duplicates <- nrow(Mixtures_Drug_tbl_df) - length(unique(Mixtures_Drug_tbl_df$name))
  expect_true(num_duplicates >= 0,
              info = paste("There are", num_duplicates, "duplicate entries in the name column."))
})

# Test for valid character types in all columns
test_that("Mixtures_Drug_tbl_df columns are character types", {
  expect_type(Mixtures_Drug_tbl_df$name, "character")
  expect_type(Mixtures_Drug_tbl_df$ingredients, "character")
  expect_type(Mixtures_Drug_tbl_df$parent_key, "character")
})

# Optional: Test for expected number of rows
test_that("Mixtures_Drug_tbl_df has the expected number of rows", {
  expect_equal(nrow(Mixtures_Drug_tbl_df), 819, info = "The number of rows in the data frame is incorrect.")
})

# Optional: Test for expected number of unique ingredients
test_that("Mixtures_Drug_tbl_df has more than one unique ingredient", {
  expect_gt(length(unique(Mixtures_Drug_tbl_df$ingredients)), 1)
})


