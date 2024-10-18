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

#  genotype_df data set

library(testthat)

library(MedDataSets)

# Test that genotype_df has the correct structure
test_that("genotype_df has the correct structure", {
  expect_s3_class(genotype_df, "data.frame")
  expect_equal(nrow(genotype_df), 61)
  expect_equal(ncol(genotype_df), 3)

  expected_names <- c("Litter", "Mother", "Wt")
  expect_equal(names(genotype_df), expected_names)
})

# Test that genotype_df has correct data types
test_that("genotype_df has correct data types", {
  expect_s3_class(genotype_df$Litter, "factor")
  expect_s3_class(genotype_df$Mother, "factor")
  expect_type(genotype_df$Wt, "double")  # Assuming Wt is numeric
})

# Test that genotype_df has no NA values
test_that("genotype_df has no NA values", {
  expect_false(any(is.na(genotype_df)))
})

# Test that genotype_df has values in valid ranges
test_that("genotype_df has values in valid ranges", {
  expect_true(all(is.finite(genotype_df$Wt)))
  expect_true(all(genotype_df$Wt >= 0))  # Assuming weight should not be negative
})

# Test that genotype_df has correct factor levels
test_that("genotype_df has correct factor levels", {
  expect_equal(levels(genotype_df$Litter), c("A", "B", "I", "J"))  # Updated to match actual levels
  expect_equal(levels(genotype_df$Mother), c("A", "B", "I", "J"))  # Updated to match actual levels
})
