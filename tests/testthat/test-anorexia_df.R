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

#  anorexia_df data set

library(testthat)

library(MedDataSets)

# Test that anorexia_df has the correct structure
test_that("anorexia_df has the correct structure", {
  expect_s3_class(anorexia_df, "data.frame")
  expect_equal(nrow(anorexia_df), 72)
  expect_equal(ncol(anorexia_df), 3)

  expected_names <- c("Treat", "Prewt", "Postwt")
  expect_equal(names(anorexia_df), expected_names)
})

# Test that anorexia_df has correct data types
test_that("anorexia_df has correct data types", {
  expect_s3_class(anorexia_df$Treat, "factor")
  expect_type(anorexia_df$Prewt, "double")
  expect_type(anorexia_df$Postwt, "double")
})

# Test that anorexia_df has no NA values
test_that("anorexia_df has no NA values", {
  expect_false(any(is.na(anorexia_df)))
})

# Test that anorexia_df has values in valid ranges
test_that("anorexia_df has values in valid ranges", {
  expect_true(all(is.finite(anorexia_df$Prewt)))
  expect_true(all(is.finite(anorexia_df$Postwt)))

  expect_true(all(anorexia_df$Prewt >= 0))
  expect_true(all(anorexia_df$Postwt >= 0))
})

# Test that anorexia_df has correct factor levels
test_that("anorexia_df has correct factor levels", {
  expect_equal(levels(anorexia_df$Treat), c("CBT", "Cont", "FT"))
})
