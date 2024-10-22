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

#  colmozzie_tbl_df data set

library(testthat)

library(MedDataSets)

# Test that colmozzie_tbl_df has the correct structure and types
test_that("colmozzie_tbl_df has the correct structure and types", {
  expect_s3_class(colmozzie_tbl_df, "tbl_df")
  expect_true(all(c("Cases", "Year", "Week", "TEM", "TMAX", "Tm", "SLP", "H", "PP", "VV", "V", "VM") %in% names(colmozzie_tbl_df)))
})

# Test for missing values in critical columns
test_that("colmozzie_tbl_df has no missing values in critical columns", {
  expect_false(any(is.na(colmozzie_tbl_df$Cases)), info = "There are NA values in the Cases column.")
  expect_false(any(is.na(colmozzie_tbl_df$Year)), info = "There are NA values in the Year column.")
  expect_false(any(is.na(colmozzie_tbl_df$Week)), info = "There are NA values in the Week column.")
})

# Test for data types of critical columns
test_that("colmozzie_tbl_df has the correct data types in critical columns", {
  expect_type(colmozzie_tbl_df$Cases, "integer")
  expect_type(colmozzie_tbl_df$Year, "integer")
  expect_type(colmozzie_tbl_df$Week, "integer")
  expect_type(colmozzie_tbl_df$TEM, "double")
  expect_type(colmozzie_tbl_df$TMAX, "double")
  expect_type(colmozzie_tbl_df$Tm, "double")
  expect_type(colmozzie_tbl_df$H, "double")
  expect_type(colmozzie_tbl_df$PP, "double")
  expect_type(colmozzie_tbl_df$VV, "double")
  expect_type(colmozzie_tbl_df$V, "double")
  expect_type(colmozzie_tbl_df$VM, "double")
  expect_type(colmozzie_tbl_df$SLP, "character")
})






