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

#  birthwt_df data set

library(testthat)

library(MedDataSets)

# Test that birthwt_df has the correct structure
test_that("birthwt_df has the correct structure", {
  expect_s3_class(birthwt_df, "data.frame")
  expect_equal(nrow(birthwt_df), 189)
  expect_equal(ncol(birthwt_df), 10)

  expected_names <- c("low", "age", "lwt", "race", "smoke", "ptl", "ht", "ui", "ftv", "bwt")
  expect_equal(names(birthwt_df), expected_names)
})

# Test that birthwt_df has correct data types
test_that("birthwt_df has correct data types", {
  expect_type(birthwt_df$low, "integer")
  expect_type(birthwt_df$age, "integer")
  expect_type(birthwt_df$lwt, "integer")
  expect_type(birthwt_df$race, "integer")
  expect_type(birthwt_df$smoke, "integer")
  expect_type(birthwt_df$ptl, "integer")
  expect_type(birthwt_df$ht, "integer")
  expect_type(birthwt_df$ui, "integer")
  expect_type(birthwt_df$ftv, "integer")
  expect_type(birthwt_df$bwt, "integer")
})

# Test that birthwt_df has no NA values
test_that("birthwt_df has no NA values", {
  expect_false(any(is.na(birthwt_df)))
})

# Test that birthwt_df has values in valid ranges
test_that("birthwt_df has values in valid ranges", {
  expect_true(all(is.finite(birthwt_df$age)))
  expect_true(all(birthwt_df$age >= 0))

  expect_true(all(is.finite(birthwt_df$bwt)))
  expect_true(all(birthwt_df$bwt >= 0))
})
