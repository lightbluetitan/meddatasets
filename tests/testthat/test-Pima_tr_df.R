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

# Pima_tr_df data set

library(testthat)

library(MedDataSets)

# Test that Pima_tr_df has the correct structure
test_that("Pima_tr_df has the correct structure", {
  expect_s3_class(Pima_tr_df, "data.frame")

  # Dimensions test
  expect_equal(nrow(Pima_tr_df), 200)
  expect_equal(ncol(Pima_tr_df), 8)

  # Column names test
  expected_names <- c("npreg", "glu", "bp", "skin", "bmi", "ped", "age", "type")
  expect_equal(names(Pima_tr_df), expected_names)
})

# Test that Pima_tr_df has correct data types
test_that("Pima_tr_df has correct data types", {
  # Integer columns
  expect_type(Pima_tr_df$npreg, "integer")
  expect_type(Pima_tr_df$glu, "integer")
  expect_type(Pima_tr_df$bp, "integer")
  expect_type(Pima_tr_df$skin, "integer")
  expect_type(Pima_tr_df$age, "integer")

  # Numeric columns
  expect_type(Pima_tr_df$bmi, "double")
  expect_type(Pima_tr_df$ped, "double")

  # Factor column
  expect_s3_class(Pima_tr_df$type, "factor")
})

# Test that Pima_tr_df has no NA values
test_that("Pima_tr_df has no NA values", {
  expect_false(any(is.na(Pima_tr_df)))
})

# Test that Pima_tr_df values are in valid ranges
test_that("Pima_tr_df has values in valid ranges", {
  # Check if numeric values are finite
  expect_true(all(is.finite(Pima_tr_df$npreg)))
  expect_true(all(is.finite(Pima_tr_df$glu)))
  expect_true(all(is.finite(Pima_tr_df$bp)))
  expect_true(all(is.finite(Pima_tr_df$skin)))
  expect_true(all(is.finite(Pima_tr_df$bmi)))
  expect_true(all(is.finite(Pima_tr_df$ped)))
  expect_true(all(is.finite(Pima_tr_df$age)))

  # Example logical ranges (you may adjust these as necessary)
  expect_true(all(Pima_tr_df$npreg >= 0))   # Number of pregnancies cannot be negative
  expect_true(all(Pima_tr_df$glu >= 0))      # Glucose level cannot be negative
  expect_true(all(Pima_tr_df$bp >= 0))       # Blood pressure cannot be negative
  expect_true(all(Pima_tr_df$skin >= 0))     # Skin thickness cannot be negative
  expect_true(all(Pima_tr_df$bmi >= 0))       # BMI cannot be negative
  expect_true(all(Pima_tr_df$ped >= 0))       # Pedigree function cannot be negative
  expect_true(all(Pima_tr_df$age >= 0))       # Age cannot be negative
})
