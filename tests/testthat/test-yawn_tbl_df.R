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

#   yawn_tbl_df  data set

library(testthat)

library(MedDataSets)

test_that("yawn_tbl_df has correct structure and types", {
  # Check class
  expect_s3_class(yawn_tbl_df, "tbl_df")
  expect_s3_class(yawn_tbl_df, "tbl")
  expect_s3_class(yawn_tbl_df, "data.frame")

  # Check dimensions
  expect_equal(ncol(yawn_tbl_df), 2)
  expect_equal(nrow(yawn_tbl_df), 50)

  # Check column names
  expect_equal(names(yawn_tbl_df), c("result", "group"))

  # Check column types
  expect_s3_class(yawn_tbl_df$result, "factor")
  expect_s3_class(yawn_tbl_df$group, "factor")

  # Check factor levels for result column
  expect_equal(levels(yawn_tbl_df$result), c("not yawn", "yawn"))

  # Check factor levels for group column
  expect_equal(levels(yawn_tbl_df$group), c("ctrl", "trmt"))

  # Check that all values in the result column are either 1 or 2
  expect_true(all(as.numeric(yawn_tbl_df$result) %in% c(1, 2)))

  # Check that all values in the group column are either 1 or 2
  expect_true(all(as.numeric(yawn_tbl_df$group) %in% c(1, 2)))
})

