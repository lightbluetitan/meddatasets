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

#  covid19sf_hospital_df data set

library(testthat)

library(MedDataSets)

test_that("covid19sf_hospital_df has correct structure and types", {
  # Check class
  expect_s3_class(covid19sf_hospital_df, "data.frame")

  # Check dimensions
  expect_equal(ncol(covid19sf_hospital_df), 5)
  expect_equal(nrow(covid19sf_hospital_df), 4514)

  # Check column names
  expected_names <- c("hospital", "date", "bed_type", "status", "count")
  expect_equal(names(covid19sf_hospital_df), expected_names)

  # Check column types
  expect_type(covid19sf_hospital_df$hospital, "character")
  expect_s3_class(covid19sf_hospital_df$date, "Date")
  expect_type(covid19sf_hospital_df$bed_type, "character")
  expect_type(covid19sf_hospital_df$status, "character")
  expect_type(covid19sf_hospital_df$count, "integer")

  # Check date format
  expect_true(all(!is.na(as.Date(covid19sf_hospital_df$date, format = "%Y-%m-%d"))))

  # Check for non-empty strings in character columns
  expect_true(all(nchar(covid19sf_hospital_df$hospital) > 0))
  expect_true(all(nchar(covid19sf_hospital_df$bed_type) > 0))
  expect_true(all(nchar(covid19sf_hospital_df$status) > 0))

  # Check numeric ranges
  expect_true(all(covid19sf_hospital_df$count >= 0, na.rm = TRUE))

  # Check for expected values in categorical columns
  expect_true("All SF Acute Hospitals" %in% unique(covid19sf_hospital_df$hospital))
  expect_true(all(unique(covid19sf_hospital_df$bed_type) %in% c("Intensive Care Surge", "Acute Care Surge", "Acute Care", "Intensive Care")))
  expect_true("Available" %in% unique(covid19sf_hospital_df$status))
})
