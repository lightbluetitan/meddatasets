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

#  heart_transplant_tbl_df  data set

library(testthat)

library(MedDataSets)

test_that("heart_transplant_tbl_df has correct structure and types", {
  expect_s3_class(heart_transplant_tbl_df, "tbl_df")
  expect_s3_class(heart_transplant_tbl_df, "tbl")
  expect_s3_class(heart_transplant_tbl_df, "data.frame")

  expect_equal(length(heart_transplant_tbl_df), 8)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(heart_transplant_tbl_df), 103)  # Update to match the actual number of rows

  expect_equal(ncol(heart_transplant_tbl_df), 8)

  # Check that id is integer
  expect_type(heart_transplant_tbl_df$id, "integer")  # Check for integer type

  # Check that acceptyear is integer
  expect_type(heart_transplant_tbl_df$acceptyear, "integer")  # Check for integer type

  # Check that age is integer
  expect_type(heart_transplant_tbl_df$age, "integer")  # Check for integer type

  # Check that survived is a factor
  expect_s3_class(heart_transplant_tbl_df$survived, "factor")
  expect_equal(levels(heart_transplant_tbl_df$survived), c("alive", "dead"))  # Check levels

  # Check that survtime is integer
  expect_type(heart_transplant_tbl_df$survtime, "integer")  # Check for integer type

  # Check that prior is a factor
  expect_s3_class(heart_transplant_tbl_df$prior, "factor")
  expect_equal(levels(heart_transplant_tbl_df$prior), c("no", "yes"))  # Check levels

  # Check that transplant is a factor
  expect_s3_class(heart_transplant_tbl_df$transplant, "factor")
  expect_equal(levels(heart_transplant_tbl_df$transplant), c("control", "treatment"))  # Check levels

  # Check that wait is integer (allowing for NA values)
  expect_type(heart_transplant_tbl_df$wait, "integer")  # Check for integer type
})
