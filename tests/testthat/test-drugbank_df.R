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

#   drugbank_df data set



library(testthat)


library(MedDataSets)


# Test that drugbank_df has the correct structure and types
test_that("drugbank_df has the correct structure and types", {
  expect_s3_class(drugbank_df, "data.frame")
  expect_true(all(c("gene", "disease") %in% names(drugbank_df)))
})

# Test for missing values in critical columns
test_that("drugbank_df has no missing values in critical columns", {
  expect_false(any(is.na(drugbank_df$gene)), info = "There are NA values in the gene column.")
  expect_false(any(is.na(drugbank_df$disease)), info = "There are NA values in the disease column.")
})

# Optional: Test for unique factor levels (this can be adjusted based on your requirements)
test_that("drugbank_df has the expected number of factor levels", {
  expect_equal(length(levels(drugbank_df$gene)), 1376)
  expect_equal(length(levels(drugbank_df$disease)), 888)
})



