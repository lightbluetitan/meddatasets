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

#  babies_crawl_tbl_df data set

library(testthat)

library(MedDataSets)


test_that("babies_crawl_tbl_df has correct structure and types", {
  expect_s3_class(babies_crawl_tbl_df, "tbl_df")
  expect_s3_class(babies_crawl_tbl_df, "tbl")
  expect_s3_class(babies_crawl_tbl_df, "data.frame")

  expect_equal(length(babies_crawl_tbl_df), 5)

  # Ensure the number of rows matches the actual dataset
  expect_equal(nrow(babies_crawl_tbl_df), 12)  # Update to match the actual number of rows

  expect_equal(ncol(babies_crawl_tbl_df), 5)

  expect_s3_class(babies_crawl_tbl_df$birth_month, "factor")

  # Check the levels of the birth_month factor
  expect_equal(levels(babies_crawl_tbl_df$birth_month),
               c("April", "August", "December", "February",
                 "January", "July", "June", "March",
                 "May", "November", "October", "September"))  # Update based on actual levels

  # Check that avg_crawling_age is numeric
  expect_type(babies_crawl_tbl_df$avg_crawling_age, "double")  # Use expect_type instead of expect_s3_class

  # Check that sd is numeric
  expect_type(babies_crawl_tbl_df$sd, "double")  # Use expect_type instead of expect_s3_class

  # Check that n is integer
  expect_type(babies_crawl_tbl_df$n, "integer")  # Use expect_type instead of expect_s3_class

  # Check that temperature is integer
  expect_type(babies_crawl_tbl_df$temperature, "integer")  # Use expect_type instead of expect_s3_class
})
