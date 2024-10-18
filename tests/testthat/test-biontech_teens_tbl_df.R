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

#  biontech_teens_tbl_df data set

library(testthat)

library(MedDataSets)


test_that("biontech_teens_tbl_df has correct structure and types", {
  expect_s3_class(biontech_teens_tbl_df, "tbl_df")
  expect_s3_class(biontech_teens_tbl_df, "tbl")
  expect_s3_class(biontech_teens_tbl_df, "data.frame")

  expect_equal(length(biontech_teens_tbl_df), 2)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(biontech_teens_tbl_df), 2260)  # Updated to match the actual number of rows

  expect_equal(ncol(biontech_teens_tbl_df), 2)

  expect_s3_class(biontech_teens_tbl_df$group, "factor")
  expect_s3_class(biontech_teens_tbl_df$outcome, "factor")

  expect_equal(levels(biontech_teens_tbl_df$group), c("vaccine", "placebo"))
  expect_equal(levels(biontech_teens_tbl_df$outcome), c("COVID-19", "no COVID-19"))

  expect_true(all(biontech_teens_tbl_df$group %in% c("vaccine", "placebo")))
  expect_true(all(biontech_teens_tbl_df$outcome %in% c("COVID-19", "no COVID-19")))
})
