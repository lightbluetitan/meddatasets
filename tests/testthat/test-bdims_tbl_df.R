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

#  bdims_tbl_df data set

library(testthat)

library(MedDataSets)



test_that("bdims_tbl_df has correct data types", {
  expect_type(bdims_tbl_df$bia_di, "double") # or "numeric" based on your preference
  expect_type(bdims_tbl_df$bii_di, "double")
  expect_type(bdims_tbl_df$bit_di, "double")
  expect_type(bdims_tbl_df$che_de, "double")
  expect_type(bdims_tbl_df$che_di, "double")
  expect_type(bdims_tbl_df$elb_di, "double")
  expect_type(bdims_tbl_df$wri_di, "double")
  expect_type(bdims_tbl_df$kne_di, "double")
  expect_type(bdims_tbl_df$ank_di, "double")
  expect_type(bdims_tbl_df$sho_gi, "double")
  expect_type(bdims_tbl_df$che_gi, "double")
  expect_type(bdims_tbl_df$wai_gi, "double")
  expect_type(bdims_tbl_df$nav_gi, "double")
  expect_type(bdims_tbl_df$hip_gi, "double")
  expect_type(bdims_tbl_df$thi_gi, "double")
  expect_type(bdims_tbl_df$bic_gi, "double")
  expect_type(bdims_tbl_df$for_gi, "double")
  expect_type(bdims_tbl_df$kne_gi, "double")
  expect_type(bdims_tbl_df$cal_gi, "double")
})

