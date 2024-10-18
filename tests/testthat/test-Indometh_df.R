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

# Indometh_df data set

library(testthat)
library(MedDataSets)

test_that("Indometh_df has the correct structure", {
  # Class tests
  expect_s3_class(Indometh_df, "nfnGroupedData")
  expect_s3_class(Indometh_df, "nfGroupedData")
  expect_s3_class(Indometh_df, "groupedData")
  expect_s3_class(Indometh_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Indometh_df), 66)
  expect_equal(ncol(Indometh_df), 3)

  # Column names test
  expected_names <- c("Subject", "time", "conc")
  expect_equal(names(Indometh_df), expected_names)
})

test_that("Indometh_df has correct data types", {
  # Ordered factor columns
  expect_s3_class(Indometh_df$Subject, "ordered")

  # Numeric columns
  expect_type(Indometh_df$time, "double")
  expect_type(Indometh_df$conc, "double")
})

test_that("Indometh_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(Indometh_df)))
})

test_that("Indometh_df has correct attributes", {
  # Formula attribute
  expect_s3_class(attr(Indometh_df, "formula"), "formula")

  # Verify the formula structure
  formula_actual <- attr(Indometh_df, "formula")
  expect_equal(deparse(formula_actual), "conc ~ time | Subject")

  # Labels and units attributes
  labels <- attr(Indometh_df, "labels")
  expect_equal(labels$x, "Time since drug administration")
  expect_equal(labels$y, "Indomethacin concentration")

  units <- attr(Indometh_df, "units")
  expect_equal(units$x, "(hr)")
  expect_equal(units$y, "(mcg/ml)")
})

test_that("Indometh_df has values in valid ranges", {
  # Verify all numeric values are finite
  expect_true(all(is.finite(Indometh_df$time)))
  expect_true(all(is.finite(Indometh_df$conc)))

  # Verify time is positive
  expect_true(all(Indometh_df$time >= 0))

  # Verify concentration is non-negative
  expect_true(all(Indometh_df$conc >= 0))
})
