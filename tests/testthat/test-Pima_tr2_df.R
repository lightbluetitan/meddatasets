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

# Pima_tr2_df data set

library(testthat)

library(MedDataSets)

test_that("Pima_tr2_df has correct structure and properties", {
  # Structure tests
  expect_s3_class(Pima_tr2_df, "data.frame")
  expect_equal(dim(Pima_tr2_df), c(300, 8))
  expect_named(Pima_tr2_df, c("npreg", "glu", "bp", "skin", "bmi", "ped", "age", "type"))

  # Data type tests
  expect_type(Pima_tr2_df$npreg, "integer")
  expect_type(Pima_tr2_df$glu, "integer")
  expect_type(Pima_tr2_df$bp, "integer")
  expect_type(Pima_tr2_df$skin, "integer")
  expect_type(Pima_tr2_df$bmi, "double")
  expect_type(Pima_tr2_df$ped, "double")
  expect_type(Pima_tr2_df$age, "integer")
  expect_s3_class(Pima_tr2_df$type, "factor")

  # NA value tests
  expect_equal(sum(is.na(Pima_tr2_df$npreg)), 0)
  expect_equal(sum(is.na(Pima_tr2_df$glu)), 0)
  expect_equal(sum(is.na(Pima_tr2_df$bp)), 13)
  expect_equal(sum(is.na(Pima_tr2_df$skin)), 98)
  expect_equal(sum(is.na(Pima_tr2_df$bmi)), 3)
  expect_equal(sum(is.na(Pima_tr2_df$ped)), 0)
  expect_equal(sum(is.na(Pima_tr2_df$age)), 0)
  expect_equal(sum(is.na(Pima_tr2_df$type)), 0)

  # Value range tests
  expect_true(all(Pima_tr2_df$npreg[!is.na(Pima_tr2_df$npreg)] >= 0))
  expect_true(all(Pima_tr2_df$glu[!is.na(Pima_tr2_df$glu)] >= 0))
  expect_true(all(Pima_tr2_df$bp[!is.na(Pima_tr2_df$bp)] >= 0))
  expect_true(all(Pima_tr2_df$skin[!is.na(Pima_tr2_df$skin)] >= 0))
  expect_true(all(Pima_tr2_df$bmi[!is.na(Pima_tr2_df$bmi)] >= 0))
  expect_true(all(Pima_tr2_df$ped[!is.na(Pima_tr2_df$ped)] >= 0))
  expect_true(all(Pima_tr2_df$age[!is.na(Pima_tr2_df$age)] >= 0))

  # Factor level test
  expect_true(all(levels(Pima_tr2_df$type) %in% c("Yes", "No")))
})
