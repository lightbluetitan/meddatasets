# MedDataSets

The `MedDataSets` package provides a comprehensive collection of datasets related to medicine, diseases, 
treatments, drugs, and public health. This package covers key topics such as drug effectiveness,
vaccine trials, survival rates, infectious disease outbreaks, and medical treatments.

## Overview

The `MedDataSets` package includes datasets from various fields of medical research, 
ranging from clinical trials to public health data. 
Each dataset in this package is identified with a suffix to indicate its format or structure, 
such as time series (_ts), tibble (_tbl), or data frame (_df).

## Installation

You can install the `MedDataSets` package from CRAN with the following R function:

```R

install.packages("MedDataSets")

```

## Usage

To use the datasets provided by the `MedDataSets` package:

```R

library(MedDataSets)

# Load a dataset
data("anorexia_df")

# View the dataset
head(anorexia_df)

```

## Example Datasets


Here are a few of the datasets included in the `MedDataSets` package:

**malaria_tbl_df**: A tibble containing vaccine trial data about Malaria. 

**anorexia_df**: A data frame covering Anorexia Data on Weight Change. 

**fdeaths_ts**: A time series on  Monthly Deaths Lung Diseases in the UK (Females) 



<div class="tocify-extend-page" data-unique="tocify-extend-page" style="height: 0;"></div>
