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

#  diabetes2_tbl_df data set

library(testthat)

library(MedDataSets)


test_that("diabetes2_tbl_df has correct structure and types", {
  expect_s3_class(diabetes2_tbl_df, "tbl_df")
  expect_s3_class(diabetes2_tbl_df, "tbl")
  expect_s3_class(diabetes2_tbl_df, "data.frame")

  expect_equal(length(diabetes2_tbl_df), 2)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(diabetes2_tbl_df), 699)  # Update to match the actual number of rows

  expect_equal(ncol(diabetes2_tbl_df), 2)

  expect_s3_class(diabetes2_tbl_df$treatment, "factor")
  expect_s3_class(diabetes2_tbl_df$outcome, "factor")

  # Update expected levels based on actual levels in the dataset
  expect_equal(levels(diabetes2_tbl_df$treatment), c("lifestyle", "met", "rosi"))  # Update based on actual levels
  expect_equal(levels(diabetes2_tbl_df$outcome), c("failure", "success"))  # Update based on actual levels

  # Update these tests to reflect the actual levels of treatment and outcome
  expect_true(all(diabetes2_tbl_df$treatment %in% c("lifestyle", "met", "rosi")))  # Update as needed
  expect_true(all(diabetes2_tbl_df$outcome %in% c("failure", "success")))  # Update as needed
})
