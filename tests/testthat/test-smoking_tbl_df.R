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

#  smoking_tbl_df data set

library(testthat)

library(MedDataSets)

test_that("smoking_tbl_df has correct structure and types", {
  expect_s3_class(smoking_tbl_df, "tbl_df")
  expect_s3_class(smoking_tbl_df, "tbl")
  expect_s3_class(smoking_tbl_df, "data.frame")
  expect_equal(length(smoking_tbl_df), 12)
  expect_equal(nrow(smoking_tbl_df), 1691)
  expect_equal(ncol(smoking_tbl_df), 12)

  expect_s3_class(smoking_tbl_df$gender, "factor")
  expect_equal(levels(smoking_tbl_df$gender), c("Female", "Male"))

  expect_type(smoking_tbl_df$age, "integer")

  expect_s3_class(smoking_tbl_df$marital_status, "factor")
  expect_s3_class(smoking_tbl_df$highest_qualification, "factor")
  expect_s3_class(smoking_tbl_df$nationality, "factor")
  expect_s3_class(smoking_tbl_df$ethnicity, "factor")
  expect_s3_class(smoking_tbl_df$gross_income, "factor")
  expect_s3_class(smoking_tbl_df$region, "factor")
  expect_s3_class(smoking_tbl_df$smoke, "factor")
  expect_equal(levels(smoking_tbl_df$smoke), c("No", "Yes"))

  expect_type(smoking_tbl_df$amt_weekends, "integer")
  expect_true(all(is.na(smoking_tbl_df$amt_weekends) | smoking_tbl_df$amt_weekends == floor(smoking_tbl_df$amt_weekends), na.rm = TRUE))

  expect_type(smoking_tbl_df$amt_weekdays, "integer")
  expect_true(all(is.na(smoking_tbl_df$amt_weekdays) | smoking_tbl_df$amt_weekdays == floor(smoking_tbl_df$amt_weekdays), na.rm = TRUE))

  expect_s3_class(smoking_tbl_df$type, "factor")
})
