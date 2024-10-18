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

#  wtloss_df data set

library(testthat)

library(MedDataSets)

# Test that wtloss_df has the correct structure
test_that("wtloss_df has the correct structure", {
  expect_s3_class(wtloss_df, "data.frame")
  expect_equal(nrow(wtloss_df), 52)
  expect_equal(ncol(wtloss_df), 2)

  expected_names <- c("Days", "Weight")
  expect_equal(names(wtloss_df), expected_names)
})

# Test that wtloss_df has correct data types
test_that("wtloss_df has correct data types", {
  expect_type(wtloss_df$Days, "integer")
  expect_type(wtloss_df$Weight, "double")
})

# Test that wtloss_df has no NA values
test_that("wtloss_df has no NA values", {
  expect_false(any(is.na(wtloss_df)))
})

# Test that wtloss_df has values in valid ranges
test_that("wtloss_df has values in valid ranges", {
  expect_true(all(is.finite(wtloss_df$Days)))
  expect_true(all(is.finite(wtloss_df$Weight)))
})
