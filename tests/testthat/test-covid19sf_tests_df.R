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

#  covid19sf_tests_df data set

library(testthat)

library(MedDataSets)

test_that("covid19sf_tests_df has correct structure and types", {
  # Check class
  expect_s3_class(covid19sf_tests_df, "data.frame")

  # Check dimensions
  expect_equal(ncol(covid19sf_tests_df), 6)
  expect_equal(nrow(covid19sf_tests_df), 652)

  # Check column names
  expected_names <- c("specimen_collection_date", "tests", "pos", "pct", "neg", "indeterminate")
  expect_equal(names(covid19sf_tests_df), expected_names)

  # Check column types
  expect_s3_class(covid19sf_tests_df$specimen_collection_date, "Date")
  expect_type(covid19sf_tests_df$tests, "integer")
  expect_type(covid19sf_tests_df$pos, "integer")
  expect_type(covid19sf_tests_df$pct, "double")
  expect_type(covid19sf_tests_df$neg, "integer")
  expect_type(covid19sf_tests_df$indeterminate, "integer")

  # Check date format
  expect_true(all(!is.na(as.Date(covid19sf_tests_df$specimen_collection_date, format = "%Y-%m-%d"))))

  # Check numeric ranges
  expect_true(all(covid19sf_tests_df$tests >= 0, na.rm = TRUE))
  expect_true(all(covid19sf_tests_df$pos >= 0, na.rm = TRUE))
  expect_true(all(covid19sf_tests_df$pct >= 0 & covid19sf_tests_df$pct <= 1, na.rm = TRUE))
  expect_true(all(covid19sf_tests_df$neg >= 0, na.rm = TRUE))
  expect_true(all(covid19sf_tests_df$indeterminate >= 0, na.rm = TRUE))

  # Check consistency
  expect_equal(covid19sf_tests_df$tests,
               covid19sf_tests_df$pos + covid19sf_tests_df$neg + covid19sf_tests_df$indeterminate)
})
