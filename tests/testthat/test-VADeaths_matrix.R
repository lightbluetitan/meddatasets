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

# VADeaths_matrix data set


library(testthat)

library(MedDataSets)


# Test that VADeaths_matrix has the correct structure
test_that("VADeaths_matrix has the correct structure", {
  # VADeaths_matrix is a matrix, not an S3 object
  expect_true(is.matrix(VADeaths_matrix))

  # Check that VADeaths_matrix has the correct dimensions
  expect_equal(dim(VADeaths_matrix), c(5, 4))

  # Column and row names test (corrected to match actual structure)
  expected_rownames <- c("50-54", "55-59", "60-64", "65-69", "70-74")
  expected_colnames <- c("Rural Male", "Rural Female", "Urban Male", "Urban Female")

  expect_equal(rownames(VADeaths_matrix), expected_rownames)
  expect_equal(colnames(VADeaths_matrix), expected_colnames)
})

# Check data types in the matrix
test_that("VADeaths_matrix contains correct data types", {
  # Ensure the matrix contains numeric values
  expect_true(is.numeric(VADeaths_matrix))
})

# Ensure there are no missing values
test_that("VADeaths_matrix has no NA values", {
  # Verify that there are no NA's in the matrix
  expect_false(any(is.na(VADeaths_matrix)))
})

# Check that the matrix values are in a valid range
test_that("VADeaths_matrix has values in valid ranges", {
  # Check that all values are finite and positive (assuming death rates)
  expect_true(all(is.finite(VADeaths_matrix)))
  expect_true(all(VADeaths_matrix >= 0))
})
