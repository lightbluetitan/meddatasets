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

# esoph_df data set

library(testthat)

library(MedDataSets)


# Test that esoph_df has the correct structure
test_that("esoph_df has the correct structure", {
  expect_s3_class(esoph_df, "data.frame")
  expect_equal(nrow(esoph_df), 88)
  expect_equal(ncol(esoph_df), 5)

  expected_names <- c("agegp", "alcgp", "tobgp", "ncases", "ncontrols")
  expect_equal(names(esoph_df), expected_names)
})

test_that("esoph_df has correct data types", {
  expect_s3_class(esoph_df$agegp, "ordered")
  expect_s3_class(esoph_df$alcgp, "ordered")
  expect_s3_class(esoph_df$tobgp, "ordered")

  expect_type(esoph_df$ncases, "double")
  expect_type(esoph_df$ncontrols, "double")
})

test_that("esoph_df has no NA values", {
  expect_false(any(is.na(esoph_df)))
})

test_that("esoph_df has values in valid ranges", {
  expect_true(all(is.finite(esoph_df$ncases)))
  expect_true(all(is.finite(esoph_df$ncontrols)))

  expect_true(all(esoph_df$ncases >= 0))
  expect_true(all(esoph_df$ncontrols >= 0))
})

# Adjusted to match actual levels in esoph_df
test_that("esoph_df has correct factor levels", {
  expect_equal(levels(esoph_df$agegp), c("25-34", "35-44", "45-54", "55-64", "65-74", "75+"))
  expect_equal(levels(esoph_df$alcgp), c("0-39g/day", "40-79", "80-119", "120+"))
  expect_equal(levels(esoph_df$tobgp), c("0-9g/day", "10-19", "20-29", "30+"))
})
