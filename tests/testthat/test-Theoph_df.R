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

# Theoph_df data set

library(testthat)

library(MedDataSets)

# Test that Theoph_df has the correct structure
test_that("Theoph_df has the correct structure", {
  expect_s3_class(Theoph_df, "data.frame")
  expect_s3_class(Theoph_df, "nfnGroupedData")
  expect_s3_class(Theoph_df, "nfGroupedData")
  expect_s3_class(Theoph_df, "groupedData")

  # Dimensions test
  expect_equal(nrow(Theoph_df), 132)
  expect_equal(ncol(Theoph_df), 5)

  # Column names test
  expected_names <- c("Subject", "Wt", "Dose", "Time", "conc")
  expect_equal(names(Theoph_df), expected_names)
})

test_that("Theoph_df has correct data types", {
  # Factor columns
  expect_s3_class(Theoph_df$Subject, "ordered")

  # Numeric columns
  expect_type(Theoph_df$Wt, "double")
  expect_type(Theoph_df$Dose, "double")
  expect_type(Theoph_df$Time, "double")
  expect_type(Theoph_df$conc, "double")
})

test_that("Theoph_df has correct attributes", {
  # Check the formula attribute
  formula <- attr(Theoph_df, "formula")
  expect_s3_class(formula, "formula")

  formula_parts <- as.character(formula)
  expect_equal(formula_parts[1], "~")
  expect_equal(formula_parts[2], "conc")
  expect_equal(formula_parts[3], "Time | Subject")
})

test_that("Theoph_df has no NA values", {
  # Verify there are no NA's in any column
  expect_false(any(is.na(Theoph_df)))
})

test_that("Theoph_df has values in valid ranges", {
  # Verify all numeric values are finite
  expect_true(all(is.finite(Theoph_df$Wt)))
  expect_true(all(is.finite(Theoph_df$Dose)))
  expect_true(all(is.finite(Theoph_df$Time)))
  expect_true(all(is.finite(Theoph_df$conc)))

  # Example logical ranges
  expect_true(all(Theoph_df$Wt > 0))  # Assuming weight cannot be negative
  expect_true(all(Theoph_df$Dose > 0))  # Assuming dose cannot be negative
  expect_true(all(Theoph_df$Time >= 0))  # Assuming time cannot be negative
  expect_true(all(Theoph_df$conc >= 0))  # Assuming concentration cannot be negative
})
