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

#  malaria_tbl_df data set


library(testthat)

library(MedDataSets)

test_that("malaria_tbl_df has correct structure and types", {
  expect_s3_class(malaria_tbl_df, "tbl_df")
  expect_s3_class(malaria_tbl_df, "tbl")
  expect_s3_class(malaria_tbl_df, "data.frame")

  expect_equal(length(malaria_tbl_df), 2)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(malaria_tbl_df), 20)  # Update to match the actual number of rows

  expect_equal(ncol(malaria_tbl_df), 2)

  # Check that treatment is a factor
  expect_s3_class(malaria_tbl_df$treatment, "factor")
  expect_equal(levels(malaria_tbl_df$treatment), c("placebo", "vaccine"))  # Check levels

  # Check that outcome is a factor
  expect_s3_class(malaria_tbl_df$outcome, "factor")
  expect_equal(levels(malaria_tbl_df$outcome), c("infection", "no infection"))  # Check levels
})

