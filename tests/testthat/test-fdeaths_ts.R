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

# fdeaths_ts data set

library(testthat)

library(MedDataSets)

# Test that the object 'fdeaths_ts' has the correct class
test_that("fdeaths_ts has the correct class of object", {
  # Check if 'fdeaths_ts' is of class 'ts'
  expect_equal(class(fdeaths_ts), "ts")
})

# Test that 'fdeaths_ts' has the correct number of observations
test_that("fdeaths_ts has the correct number of observations", {
  # Verify that the length of 'fdeaths_ts' matches the expected number of observations
  expect_equal(length(fdeaths_ts), 72)
})

# Test that 'fdeaths_ts' has the correct frequency
test_that("fdeaths_ts has the correct frequency", {
  # Check if the frequency of 'fdeaths_ts' is 12 (monthly data)
  expect_equal(frequency(fdeaths_ts), 12)
})

# Test that 'fdeaths_ts' has the correct start and end times
test_that("fdeaths_ts has the correct start and end", {
  # Verify that 'fdeaths_ts' starts in January 1974
  expect_equal(start(fdeaths_ts), c(1974, 1))

  # Verify that 'fdeaths_ts' ends in December 1979
  expect_equal(end(fdeaths_ts), c(1979, 12))
})

# Test that 'fdeaths_ts' does not contain missing values
test_that("fdeaths_ts does not contain missing values", {
  # Check for NA values in the dataset
  expect_false(any(is.na(fdeaths_ts)))
})

