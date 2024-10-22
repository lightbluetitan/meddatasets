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

#  transplant_tbl_df data set

library(testthat)

library(MedDataSets)

test_that("transplant_tbl_df has correct structure and types", {
  # Check class
  expect_s3_class(transplant_tbl_df, "tbl_df")
  expect_s3_class(transplant_tbl_df, "tbl")
  expect_s3_class(transplant_tbl_df, "data.frame")

  # Check dimensions
  expect_equal(ncol(transplant_tbl_df), 1)
  expect_equal(nrow(transplant_tbl_df), 62)

  # Check column name
  expect_equal(names(transplant_tbl_df), "outcome")

  # Check column type
  expect_s3_class(transplant_tbl_df$outcome, "factor")

  # Check factor levels
  expect_equal(levels(transplant_tbl_df$outcome), c("complications", "okay"))

  # Check that all values in the outcome column are either 1 or 2
  expect_true(all(as.numeric(transplant_tbl_df$outcome) %in% c(1, 2)))
})
