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

#  smallpox_tbl_df data set

library(testthat)

library(MedDataSets)

test_that("smallpox_tbl_df has correct structure and types", {
  expect_s3_class(smallpox_tbl_df, "tbl_df")
  expect_s3_class(smallpox_tbl_df, "tbl")
  expect_s3_class(smallpox_tbl_df, "data.frame")

  expect_equal(length(smallpox_tbl_df), 2)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(smallpox_tbl_df), 6224)  # Actual number of rows

  expect_equal(ncol(smallpox_tbl_df), 2)

  # Check that result is a factor
  expect_s3_class(smallpox_tbl_df$result, "factor")
  expect_equal(levels(smallpox_tbl_df$result), c("died", "lived"))  # Expected levels for result

  # Check that inoculated is a factor
  expect_s3_class(smallpox_tbl_df$inoculated, "factor")
  expect_equal(levels(smallpox_tbl_df$inoculated), c("no", "yes"))  # Expected levels for inoculated
})
