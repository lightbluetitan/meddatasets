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

#  sinusitis_tbl_df data set

library(testthat)

library(MedDataSets)

test_that("sinusitis_tbl_df has correct structure and types", {
  expect_s3_class(sinusitis_tbl_df, "tbl_df")
  expect_s3_class(sinusitis_tbl_df, "tbl")
  expect_s3_class(sinusitis_tbl_df, "data.frame")

  expect_equal(length(sinusitis_tbl_df), 2)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(sinusitis_tbl_df), 166)  # Update to match the actual number of rows

  expect_equal(ncol(sinusitis_tbl_df), 2)

  # Check that group is a factor
  expect_s3_class(sinusitis_tbl_df$group, "factor")
  expect_equal(levels(sinusitis_tbl_df$group), c("control", "treatment"))  # Check levels

  # Check that self_reported_improvement is a factor
  expect_s3_class(sinusitis_tbl_df$self_reported_improvement, "factor")
  expect_equal(levels(sinusitis_tbl_df$self_reported_improvement), c("no", "yes"))  # Check levels
})
