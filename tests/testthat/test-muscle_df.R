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

#  muscle_df data set

library(testthat)

library(MedDataSets)

# Test that muscle_df has the correct structure
test_that("muscle_df has the correct structure", {
  expect_s3_class(muscle_df, "data.frame")
  expect_equal(nrow(muscle_df), 60)
  expect_equal(ncol(muscle_df), 3)

  expected_names <- c("Strip", "Conc", "Length")
  expect_equal(names(muscle_df), expected_names)
})

# Test that muscle_df has correct data types
test_that("muscle_df has correct data types", {
  expect_s3_class(muscle_df$Strip, "factor")
  expect_type(muscle_df$Conc, "double")
  expect_type(muscle_df$Length, "double")
})

# Test that muscle_df has no NA values
test_that("muscle_df has no NA values", {
  expect_false(any(is.na(muscle_df)))
})

# Test that muscle_df has values in valid ranges
test_that("muscle_df has values in valid ranges", {
  expect_true(all(is.finite(muscle_df$Conc)))
  expect_true(all(is.finite(muscle_df$Length)))
})

# Test that muscle_df has correct factor levels
test_that("muscle_df has correct factor levels", {
  expect_equal(length(levels(muscle_df$Strip)), 21)  # Check number of levels
})
