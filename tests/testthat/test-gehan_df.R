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

#  gehan_df data set

library(testthat)

library(MedDataSets)

# Test that gehan_df has the correct structure
test_that("gehan_df has the correct structure", {
  expect_s3_class(gehan_df, "data.frame")
  expect_equal(nrow(gehan_df), 42)
  expect_equal(ncol(gehan_df), 4)

  expected_names <- c("pair", "time", "cens", "treat")
  expect_equal(names(gehan_df), expected_names)
})

# Test that gehan_df has correct data types
test_that("gehan_df has correct data types", {
  expect_type(gehan_df$pair, "integer")
  expect_type(gehan_df$time, "integer")
  expect_type(gehan_df$cens, "integer")
  expect_s3_class(gehan_df$treat, "factor")
})

# Test that gehan_df has no NA values
test_that("gehan_df has no NA values", {
  expect_false(any(is.na(gehan_df)))
})

# Test that gehan_df has values in valid ranges
test_that("gehan_df has values in valid ranges", {
  expect_true(all(is.finite(gehan_df$pair)))
  expect_true(all(gehan_df$pair >= 0))

  expect_true(all(is.finite(gehan_df$time)))
  expect_true(all(gehan_df$time >= 0))
})

# Corrected test for factor levels of treat
test_that("gehan_df has correct factor levels", {
  expect_equal(levels(gehan_df$treat), c("6-MP", "control"))
})
