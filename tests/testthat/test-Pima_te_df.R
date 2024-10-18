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

# Pima_te_df data set


library(testthat)

library(MedDataSets)

# Test that Pima_te_df has the correct structure
test_that("Pima_te_df has the correct structure", {
  expect_s3_class(Pima_te_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Pima_te_df), 332)
  expect_equal(ncol(Pima_te_df), 8)

  # Column names test
  expected_names <- c("npreg", "glu", "bp", "skin", "bmi", "ped", "age", "type")
  expect_equal(names(Pima_te_df), expected_names)
})

# Test that Pima_te_df has correct data types
test_that("Pima_te_df has correct data types", {
  # Integer columns
  expect_type(Pima_te_df$npreg, "integer")
  expect_type(Pima_te_df$glu, "integer")
  expect_type(Pima_te_df$bp, "integer")
  expect_type(Pima_te_df$skin, "integer")
  expect_type(Pima_te_df$age, "integer")

  # Numeric columns
  expect_type(Pima_te_df$bmi, "double")
  expect_type(Pima_te_df$ped, "double")

  # Factor column
  expect_s3_class(Pima_te_df$type, "factor")
})

# Test that Pima_te_df has no NA values
test_that("Pima_te_df has no NA values", {
  expect_false(any(is.na(Pima_te_df)))
})

# Test that Pima_te_df values are in valid ranges
test_that("Pima_te_df has values in valid ranges", {
  # Check if numeric values are finite
  expect_true(all(is.finite(Pima_te_df$npreg)))
  expect_true(all(is.finite(Pima_te_df$glu)))
  expect_true(all(is.finite(Pima_te_df$bp)))
  expect_true(all(is.finite(Pima_te_df$skin)))
  expect_true(all(is.finite(Pima_te_df$bmi)))
  expect_true(all(is.finite(Pima_te_df$ped)))
  expect_true(all(is.finite(Pima_te_df$age)))

  # Example logical ranges (you may adjust these as necessary)
  expect_true(all(Pima_te_df$npreg >= 0))   # Number of pregnancies cannot be negative
  expect_true(all(Pima_te_df$glu >= 0))      # Glucose level cannot be negative
  expect_true(all(Pima_te_df$bp >= 0))       # Blood pressure cannot be negative
  expect_true(all(Pima_te_df$skin >= 0))     # Skin thickness cannot be negative
  expect_true(all(Pima_te_df$bmi >= 0))       # BMI cannot be negative
  expect_true(all(Pima_te_df$ped >= 0))       # Pedigree function cannot be negative
  expect_true(all(Pima_te_df$age >= 0))       # Age cannot be negative
})




