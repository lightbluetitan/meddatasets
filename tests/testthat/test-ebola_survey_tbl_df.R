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

#  ebola_survey_tbl_df data set

library(testthat)

library(MedDataSets)

test_that("ebola_survey_tbl_df has correct structure and types", {
  expect_s3_class(ebola_survey_tbl_df, "tbl_df")
  expect_s3_class(ebola_survey_tbl_df, "tbl")
  expect_s3_class(ebola_survey_tbl_df, "data.frame")

  expect_equal(length(ebola_survey_tbl_df), 1)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(ebola_survey_tbl_df), 1042)  # Update to match the actual number of rows

  expect_equal(ncol(ebola_survey_tbl_df), 1)

  expect_s3_class(ebola_survey_tbl_df$quarantine, "factor")

  # Update expected levels based on actual levels in the dataset
  expect_equal(levels(ebola_survey_tbl_df$quarantine), c("against", "favor"))  # Update based on actual levels

  # Verify that all levels are as expected
  expect_true(all(ebola_survey_tbl_df$quarantine %in% c("against", "favor")))  # Update as needed
})
