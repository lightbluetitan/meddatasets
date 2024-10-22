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


#' Reaction Velocity of an Enzymatic Reaction
#'
#' The dataset name has been changed to 'Puromycin_df' to avoid confusion with datasets from other
#' packages in the R ecosystem and to follow the naming convention in the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, distinguishing it both within the
#' package and from similar datasets in other R packages. The original content of the dataset has not been
#' modified in any way.
#'
#' This dataset contains data from an experiment on the reaction velocity of an enzymatic reaction
#' with and without the use of Puromycin, an antibiotic that inhibits protein synthesis.
#'
#' @name Puromycin_df
#' @format A data frame with 23 observations and 3 variables:
#' \describe{
#'   \item{conc}{Substrate concentration (numeric).}
#'   \item{rate}{Reaction velocity (numeric).}
#'   \item{state}{A factor with two levels: \code{treated} and \code{untreated}, indicating whether Puromycin was present.}
#' }
#' The dataset contains additional metadata:
#' \describe{
#'   \item{reference}{The reference for this dataset: \code{"A1.3, p. 269"}.}
#' }
#' @source Experimental data on the effects of Puromycin on enzyme reaction rates.
#' @usage data(Puromycin_df)
#' @export
load("data/Puromycin_df.rda")
NULL


#' The Effect of Vitamin C on Tooth Growth in Guinea Pigs
#'
#' The dataset name has been changed to 'ToothGrowth_df' to avoid confusion with datasets from other
#' packages in the R ecosystem and to align with the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from other
#' datasets within the package and from datasets in the broader R ecosystem. The original content of the dataset
#' has not been modified in any way.
#'
#' This dataset explores the effect of Vitamin C on tooth growth in guinea pigs. It includes data on
#' tooth length as a response to different doses of Vitamin C, administered through two delivery methods.
#'
#' @name ToothGrowth_df
#' @format A data frame with 60 observations and 3 variables:
#' \describe{
#'   \item{len}{Tooth length (numeric).}
#'   \item{supp}{Type of supplement: either "VC" (Vitamin C) or "OJ" (Orange Juice) (factor).}
#'   \item{dose}{Dose of Vitamin C administered in milligrams per day (numeric).}
#' }
#' @source Experimental data on the effect of Vitamin C on tooth growth in guinea pigs.
#' @usage data(ToothGrowth_df)
#' @export
load("data/ToothGrowth_df.rda")
NULL

#' Death Rates in Virginia (1940)
#'
#' The dataset name has been changed to 'VADeaths_matrix' to avoid confusion with datasets from other
#' packages in the R ecosystem and to align with the naming conventions of the 'MedDataSets' package.
#' The suffix '_matrix' indicates that this dataset is a matrix, helping to distinguish it from other
#' datasets within the package and from datasets in the broader R ecosystem. The original content of the dataset
#' has not been modified in any way.
#'
#' This dataset contains death rates per 1,000 individuals in various population groups in Virginia in 1940,
#' classified by age group and rural/urban residency.
#'
#' @name VADeaths_matrix
#' @format A matrix with 5 rows and 4 columns:
#' \describe{
#'   \item{[,1]}{Death rates for Rural Male (numeric).}
#'   \item{[,2]}{Death rates for Rural Female (numeric).}
#'   \item{[,3]}{Death rates for Urban Male (numeric).}
#'   \item{[,4]}{Death rates for Urban Female (numeric).}
#'   \item{Row labels}{Age groups: 50-54, 55-59, 60-64, 65-69, 70-74.}
#' }
#' @source U.S. Census Bureau, Virginia (1940) Death Records.
#' @usage data(VADeaths_matrix)
#' @export
load("data/VADeaths_matrix.rda")
NULL

#' Smoking, Alcohol and (O)esophageal Cancer
#'
#' The dataset name has been changed to 'esoph_df' to avoid confusion with datasets from other packages
#' in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package. The suffix '_df'
#' indicates that this dataset is a data frame, helping to distinguish it from other datasets within the package
#' and from those in the broader R ecosystem. The original content of the dataset has not been modified in any way.
#'
#' This dataset contains data from a case-control study investigating the association between smoking, alcohol consumption,
#' and esophageal cancer. It includes the number of cancer cases and controls for various age, alcohol consumption, and smoking groups.
#'
#' @name esoph_df
#' @format A data frame with 88 observations and 5 variables:
#' \describe{
#'   \item{agegp}{Age group of the individuals (ordered factor).}
#'   \item{alcgp}{Alcohol consumption group (ordered factor).}
#'   \item{tobgp}{Tobacco consumption group (ordered factor).}
#'   \item{ncases}{Number of cases (numeric).}
#'   \item{ncontrols}{Number of controls (numeric).}
#' }
#' @source Data from a case-control study on esophageal cancer.
#' @usage data(esoph_df)
#' @export
load("data/esoph_df.rda")
NULL


#' Monthly Deaths from Lung Diseases in the UK (Females)
#'
#' The dataset name has been changed to 'fdeaths_ts' to avoid confusion with datasets from other packages
#' in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package. The suffix '_ts'
#' indicates that this dataset is a time series object, helping to distinguish it from other datasets within the package
#' and from those in the broader R ecosystem. The original content of the dataset has not been modified in any way.
#'
#' This dataset contains the number of monthly deaths from lung diseases in the UK, specifically for females,
#' from 1974 to 1980.
#'
#' @name fdeaths_ts
#' @format A time series object with 72 observations, from 1974 to 1980:
#' \describe{
#'   \item{fdeaths}{A numeric vector representing the number of monthly deaths due to lung diseases in females.}
#' }
#' @source UK Health Authority data on lung disease deaths.
#' @usage data(fdeaths_ts)
#' @export
load("data/fdeaths_ts.rda")
NULL

#' Infertility after Spontaneous and Induced Abortion
#'
#' The dataset name has been changed to 'infert_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset examines the relationship between various factors such as education level, age,
#' parity, and the incidence of infertility after spontaneous and induced abortion.
#'
#' @name infert_df
#' @format A data frame with 248 observations and 8 variables:
#' \describe{
#'   \item{education}{A factor representing the education level of the subjects, with 3 levels.}
#'   \item{age}{A numeric vector indicating the age of the subjects.}
#'   \item{parity}{A numeric vector representing the number of previous pregnancies.}
#'   \item{induced}{A numeric vector indicating the number of induced abortions.}
#'   \item{case}{A numeric vector indicating the case status (infertile or not).}
#'   \item{spontaneous}{A numeric vector indicating the number of spontaneous abortions.}
#'   \item{stratum}{An integer representing the stratum in the study.}
#'   \item{pooled.stratum}{A numeric vector representing the pooled stratum values.}
#' }
#' @source Data collected from clinical studies on infertility.
#' @usage data(infert_df)
#' @export
load("data/infert_df.rda")
NULL


#' Monthly Deaths from Lung Diseases in the UK
#'
#' The dataset name has been changed to 'ldeaths_ts' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_ts' indicates that this dataset is a time series, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset provides information on the monthly deaths from lung diseases in the UK, recorded
#' from 1974 to 1980.
#'
#' @name ldeaths_ts
#' @format A time series object with 72 observations:
#' \describe{
#'   \item{ldeaths}{A numeric vector containing the number of monthly deaths from lung diseases in the UK.}
#' }
#' @source Office for National Statistics, UK.
#' @usage data(ldeaths_ts)
#' @export
load("data/ldeaths_ts.rda")
NULL

#' Monthly Deaths from Lung Diseases in the UK
#'
#' The dataset name has been changed to 'mdeaths_ts' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_ts' indicates that this dataset is a time series, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset provides information on the monthly deaths from lung diseases in the UK, recorded
#' from 1974 to 1980.
#'
#' @name mdeaths_ts
#' @format A time series object with 72 observations:
#' \describe{
#'   \item{mdeaths}{A numeric vector containing the number of monthly deaths from lung diseases in the UK.}
#' }
#' @source Office for National Statistics, UK.
#' @usage data(mdeaths_ts)
#' @export
load("data/mdeaths_ts.rda")
NULL

#' Australian AIDS Survival Data
#'
#' The dataset name has been changed to 'Aids2_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset provides information on the survival rates and characteristics of AIDS patients in
#' Australia, including their demographic details and clinical data.
#'
#' @name Aids2_df
#' @format A data frame with 2843 observations and 7 variables:
#' \describe{
#'   \item{state}{A factor indicating the state of residence of the patient (4 levels).}
#'   \item{sex}{A factor indicating the sex of the patient (2 levels).}
#'   \item{diag}{An integer indicating the year of diagnosis.}
#'   \item{death}{An integer indicating the year of death.}
#'   \item{status}{A factor indicating the status of the patient (2 levels: alive or deceased).}
#'   \item{T.categ}{A factor indicating the T-cell category of the patient (8 levels).}
#'   \item{age}{An integer indicating the age of the patient at diagnosis.}
#' }
#' @source Australian Department of Health.
#' @usage data(Aids2_df)
#' @export
load("data/Aids2_df.rda")
NULL


#' Diagnostic Tests on Patients with Cushing's Syndrome
#'
#' The dataset name has been changed to 'Cushings_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains results from diagnostic tests conducted on patients suspected of having
#' Cushing's Syndrome, focusing on the measurement of specific hormonal metabolites.
#'
#' @name Cushings_df
#' @format A data frame with 27 observations and 3 variables:
#' \describe{
#'   \item{Tetrahydrocortisone}{A numeric vector representing the levels of Tetrahydrocortisone.}
#'   \item{Pregnanetriol}{A numeric vector representing the levels of Pregnanetriol.}
#'   \item{Type}{A factor indicating the type of test conducted (4 levels).}
#' }
#' @source Data collected from clinical trials and patient records.
#' @usage data(Cushings_df)
#' @export
load("data/Cushings_df.rda")
NULL

#' Level of GAG in Urine of Children
#'
#' The dataset name has been changed to 'GAGurine_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains measurements of glycosaminoglycan (GAG) levels in urine samples collected
#' from children, aimed at studying potential health implications associated with abnormal GAG levels.
#'
#' @name GAGurine_df
#' @format A data frame with 314 observations and 2 variables:
#' \describe{
#'   \item{Age}{A numeric vector representing the age of the children in years.}
#'   \item{GAG}{A numeric vector representing the levels of glycosaminoglycans (GAG) in urine (in some
#'   appropriate unit).}
#' }
#' @source Data collected from pediatric health studies.
#' @usage data(GAGurine_df)
#' @export
load("data/GAGurine_df.rda")
NULL


#' Survival from Malignant Melanoma
#'
#' The dataset name has been changed to 'Melanoma_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on survival rates of patients diagnosed with malignant melanoma,
#' including various clinical factors that may affect prognosis.
#'
#' @name Melanoma_df
#' @format A data frame with 205 observations and 7 variables:
#' \describe{
#'   \item{time}{An integer representing the survival time of the patients (in months).}
#'   \item{status}{An integer indicating the status of the patient at the end of the study;
#'   typically coded as 1 for dead and 0 for alive.}
#'   \item{sex}{An integer representing the sex of the patient; usually coded as 1 for male
#'   and 0 for female.}
#'   \item{age}{An integer indicating the age of the patient at diagnosis (in years).}
#'   \item{year}{An integer representing the year of diagnosis.}
#'   \item{thickness}{A numeric value indicating the thickness of the melanoma (in millimeters).}
#'   \item{ulcer}{An integer indicating the presence of ulceration; usually coded as 1 for yes
#'   and 0 for no.}
#' }
#' @source Data collected from clinical studies on malignant melanoma.
#' @usage data(Melanoma_df)
#' @export
load("data/Melanoma_df.rda")
NULL


#' Diabetes in Pima Indian Women
#'
#' The dataset name has been changed to 'Pima_te_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains medical examination data for Pima Indian women, including various health
#' metrics that may be related to diabetes.
#'
#' @name Pima_te_df
#' @format A data frame with 332 observations and 8 variables:
#' \describe{
#'   \item{npreg}{An integer representing the number of pregnancies.}
#'   \item{glu}{An integer indicating the plasma glucose concentration (mg/dL) 2 hours
#'   after an oral glucose tolerance test.}
#'   \item{bp}{An integer representing the diastolic blood pressure (mm Hg).}
#'   \item{skin}{An integer indicating the skin thickness (mm).}
#'   \item{bmi}{A numeric value indicating the body mass index (BMI).}
#'   \item{ped}{A numeric value representing the diabetes pedigree function.}
#'   \item{age}{An integer indicating the age of the individual (in years).}
#'   \item{type}{A factor indicating whether the individual has diabetes (1) or not (0).}
#' }
#' @source Data collected from medical examinations of Pima Indian women.
#' @usage data(Pima_te_df)
#' @export
load("data/Pima_te_df.rda")
NULL

#' Diabetes in Pima Indian Women
#'
#' The dataset name has been changed to 'Pima_tr_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains medical examination data for Pima Indian women, including various health
#' metrics that may be related to diabetes.
#'
#' @name Pima_tr_df
#' @format A data frame with 200 observations and 8 variables:
#' \describe{
#'   \item{npreg}{An integer representing the number of pregnancies.}
#'   \item{glu}{An integer indicating the plasma glucose concentration (mg/dL) 2 hours
#'   after an oral glucose tolerance test.}
#'   \item{bp}{An integer representing the diastolic blood pressure (mm Hg).}
#'   \item{skin}{An integer indicating the skin thickness (mm).}
#'   \item{bmi}{A numeric value indicating the body mass index (BMI).}
#'   \item{ped}{A numeric value representing the diabetes pedigree function.}
#'   \item{age}{An integer indicating the age of the individual (in years).}
#'   \item{type}{A factor indicating whether the individual has diabetes (1) or not (0).}
#' }
#' @source Data collected from medical examinations of Pima Indian women.
#' @usage data(Pima_tr_df)
#' @export
load("data/Pima_tr_df.rda")
NULL

#' Diabetes in Pima Indian Women
#'
#' The dataset name has been changed to 'Pima_tr2_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains medical examination data for Pima Indian women, including various health
#' metrics that may be related to diabetes.
#'
#' @name Pima_tr2_df
#' @format A data frame with 300 observations and 8 variables:
#' \describe{
#'   \item{npreg}{An integer representing the number of pregnancies.}
#'   \item{glu}{An integer indicating the plasma glucose concentration (mg/dL) 2 hours
#'   after an oral glucose tolerance test.}
#'   \item{bp}{An integer representing the diastolic blood pressure (mm Hg).}
#'   \item{skin}{An integer indicating the skin thickness (mm).}
#'   \item{bmi}{A numeric value indicating the body mass index (BMI).}
#'   \item{ped}{A numeric value representing the diabetes pedigree function.}
#'   \item{age}{An integer indicating the age of the individual (in years).}
#'   \item{type}{A factor indicating whether the individual has diabetes (1) or not (0).}
#' }
#' @source Data collected from medical examinations of Pima Indian women.
#' @usage data(Pima_tr2_df)
#' @export
load("data/Pima_tr2_df.rda")
NULL


#' Veteran's Administration Lung Cancer Trial
#'
#' The dataset name has been changed to 'VA_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains data from the Veteran's Administration Lung Cancer Trial, which includes
#' information on patients diagnosed with lung cancer, their treatment, and other relevant variables.
#'
#' @name VA_df
#' @format A data frame with 137 observations and 8 variables:
#' \describe{
#'   \item{stime}{A numeric value representing the survival time (in days).}
#'   \item{status}{A numeric value indicating the status of the patient (1 if the patient died, 0 otherwise).}
#'   \item{treat}{A factor indicating the treatment group (e.g., treatment A or B).}
#'   \item{age}{A numeric value representing the age of the patient (in years).}
#'   \item{Karn}{A numeric value representing the Karnofsky performance status score.}
#'   \item{diag.time}{A numeric value indicating the time since diagnosis (in days).}
#'   \item{cell}{A factor indicating the cell type of the lung cancer (with 4 possible levels).}
#'   \item{prior}{A factor indicating prior treatment (yes/no).}
#' }
#' @source Data collected from the Veteran's Administration Lung Cancer Trial.
#' @usage data(VA_df)
#' @export
load("data/VA_df.rda")
NULL


#' Anorexia Data on Weight Change
#'
#' The dataset name has been changed to 'anorexia_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on weight changes among patients diagnosed with anorexia,
#' including their treatment and weight measurements before and after treatment.
#'
#' @name anorexia_df
#' @format A data frame with 72 observations and 3 variables:
#' \describe{
#'   \item{Treat}{A factor indicating the treatment group (with 3 possible levels).}
#'   \item{Prewt}{A numeric value representing the weight of the patient before treatment (in pounds).}
#'   \item{Postwt}{A numeric value representing the weight of the patient after treatment (in pounds).}
#' }
#' @source Data collected from clinical studies on anorexia treatment and weight change.
#' @usage data(anorexia_df)
#' @export
load("data/anorexia_df.rda")
NULL

#' Presence of Bacteria after Drug Treatments
#'
#' The dataset name has been changed to 'bacteria_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on the presence of bacteria in patients after receiving
#' various drug treatments, including the treatment group and duration of treatment.
#'
#' @name bacteria_df
#' @format A data frame with 220 observations and 6 variables:
#' \describe{
#'   \item{y}{A factor indicating the presence (1) or absence (0) of bacteria.}
#'   \item{ap}{A factor indicating the result of an antibiotic susceptibility test (yes/no).}
#'   \item{hilo}{A factor indicating a high or low bacterial load (high/low).}
#'   \item{week}{An integer representing the week of treatment.}
#'   \item{ID}{A factor representing the unique identifier for each patient (with 50 possible levels).}
#'   \item{trt}{A factor indicating the treatment group (with 3 possible levels).}
#' }
#' @source Data collected from clinical trials on antibiotic treatments and their effects on bacterial presence.
#' @usage data(bacteria_df)
#' @export
load("data/bacteria_df.rda")
NULL


#' Risk Factors Associated with Low Infant Birth Weight
#'
#' The dataset name has been changed to 'birthwt_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on risk factors associated with low infant birth weight,
#' including maternal characteristics and behaviors during pregnancy.
#'
#' @name birthwt_df
#' @format A data frame with 189 observations and 10 variables:
#' \describe{
#'   \item{low}{An integer indicating whether the infant's birth weight is low (1) or not (0).}
#'   \item{age}{An integer representing the age of the mother (in years).}
#'   \item{lwt}{An integer indicating the mother's weight at last menstrual period (in pounds).}
#'   \item{race}{An integer indicating the race of the mother (coded as 1, 2, or 3).}
#'   \item{smoke}{An integer indicating whether the mother smoked during pregnancy (1 for yes, 0 for no).}
#'   \item{ptl}{An integer indicating the number of premature labors.}
#'   \item{ht}{An integer indicating whether the mother had a history of hypertension (1 for yes, 0 for no).}
#'   \item{ui}{An integer indicating whether the mother had a history of uterine irritability (1 for yes, 0 for no).}
#'   \item{ftv}{An integer indicating the number of physician visits during the first trimester.}
#'   \item{bwt}{An integer representing the infant's birth weight (in grams).}
#' }
#' @source Data collected from maternal health studies related to infant birth weight.
#' @usage data(birthwt_df)
#' @export
load("data/birthwt_df.rda")
NULL


#' Remission Times of Leukaemia Patients
#'
#' The dataset name has been changed to 'gehan_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on the remission times of leukaemia patients, including treatment
#' information and whether the remission time was censored.
#'
#' @name gehan_df
#' @format A data frame with 42 observations and 4 variables:
#' \describe{
#'   \item{pair}{An integer representing the patient pair identifier.}
#'   \item{time}{An integer indicating the time to remission (in days).}
#'   \item{cens}{An integer indicating whether the observation was censored (1 for censored, 0 for not censored).}
#'   \item{treat}{A factor indicating the treatment group (with 2 possible levels).}
#' }
#' @source Data collected from clinical studies on leukaemia treatment and remission.
#' @usage data(gehan_df)
#' @export
load("data/gehan_df.rda")
NULL


#' Rat Genotype Data
#'
#' The dataset name has been changed to 'genotype_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains genotype data from rats, including information on litter, maternal lineage,
#' and weight measurements.
#'
#' @name genotype_df
#' @format A data frame with 61 observations and 3 variables:
#' \describe{
#'   \item{Litter}{A factor indicating the litter group (with 4 possible levels).}
#'   \item{Mother}{A factor indicating the mother of the rats (with 4 possible levels).}
#'   \item{Wt}{A numeric value representing the weight of the rats (in grams).}
#' }
#' @source Data collected from genetic studies involving rat populations.
#' @usage data(genotype_df)
#' @export
load("data/genotype_df.rda")
NULL


#' Survival Times and White Blood Counts for Leukaemia Patients
#'
#' The dataset name has been changed to 'leuk_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains survival times and white blood cell counts for leukaemia patients,
#' providing insights into the relationship between blood counts and survival outcomes.
#'
#' @name leuk_df
#' @format A data frame with 33 observations and 3 variables:
#' \describe{
#'   \item{wbc}{An integer representing the white blood cell count (in thousands per microliter).}
#'   \item{ag}{A factor indicating the treatment group (with 2 possible levels).}
#'   \item{time}{An integer indicating the survival time (in days).}
#' }
#' @source Data collected from clinical studies on leukaemia patients.
#' @usage data(leuk_df)
#' @export
load("data/leuk_df.rda")
NULL


#' Effect of Calcium Chloride on Muscle Contraction in Rat Hearts
#'
#' The dataset name has been changed to 'muscle_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains experimental data on the effect of calcium chloride on muscle contraction
#' in rat hearts, including measurements of muscle strip length and calcium concentration.
#'
#' @name muscle_df
#' @format A data frame with 60 observations and 3 variables:
#' \describe{
#'   \item{Strip}{A factor indicating the specific muscle strip (with 21 possible levels).}
#'   \item{Conc}{A numeric value representing the concentration of calcium chloride (in mM).}
#'   \item{Length}{A numeric value indicating the length of the muscle strip (in millimeters).}
#' }
#' @source Data collected from experiments assessing the impact of calcium chloride on muscle contraction.
#' @usage data(muscle_df)
#' @export
load("data/muscle_df.rda")
NULL



#' Weight Loss Data from an Obese Patient
#'
#' The dataset name has been changed to 'wtloss_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains weight loss data from an obese patient, detailing the weight changes over a
#' specified number of days during a weight loss program.
#'
#' @name wtloss_df
#' @format A data frame with 52 observations and 2 variables:
#' \describe{
#'   \item{Days}{An integer representing the number of days in the weight loss program.}
#'   \item{Weight}{A numeric value indicating the weight of the patient (in kilograms).}
#' }
#' @source Data collected from a clinical study on weight loss in obese patients.
#' @usage data(wtloss_df)
#' @export
load("data/wtloss_df.rda")
NULL


#' Pre-existing Conditions in Children
#'
#' The dataset name has been changed to 'antibiotics_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information about pre-existing conditions in 92 children, providing insights
#' into the prevalence of different conditions in the sample.
#'
#' @name antibiotics_tbl_df
#' @format A tibble with 92 observations and 1 variable:
#' \describe{
#'   \item{condition}{A factor indicating the pre-existing condition of the children (with 8 possible levels).}
#' }
#' @source Data collected from a clinical study assessing children's health conditions.
#' @usage data(antibiotics_tbl_df)
#' @export
load("data/antibiotics_tbl_df.rda")
NULL


#' Cardiovascular Problems for Two Types of Diabetes Medicines
#'
#' The dataset name has been changed to 'avandia_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on cardiovascular problems associated with two types of diabetes
#' medicines, providing insights into the safety and efficacy of these treatments.
#'
#' @name avandia_tbl_df
#' @format A tibble with 227,571 observations and 2 variables:
#' \describe{
#'   \item{treatment}{A factor indicating the type of diabetes medicine (with 2 possible levels).}
#'   \item{cardiovascular_problems}{A factor indicating the presence of cardiovascular problems (with 2 possible levels).}
#' }
#' @source Data collected from clinical trials assessing the cardiovascular effects of diabetes medications.
#' @usage data(avandia_tbl_df)
#' @export
load("data/avandia_tbl_df.rda")
NULL


#' The Child Health and Development Studies
#'
#' The dataset name has been changed to 'babies_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information from the Child Health and Development Studies, focusing on various
#' factors associated with infant health outcomes.
#'
#' @name babies_tbl_df
#' @format A tibble with 1,236 observations and 8 variables:
#' \describe{
#'   \item{case}{An integer indicating the case number.}
#'   \item{bwt}{An integer representing the birth weight of the infant (in grams).}
#'   \item{gestation}{An integer indicating the gestation period (in weeks).}
#'   \item{parity}{An integer representing the number of previous births.}
#'   \item{age}{An integer indicating the age of the mother (in years).}
#'   \item{height}{An integer indicating the height of the mother (in cm).}
#'   \item{weight}{An integer indicating the weight of the mother (in kg).}
#'   \item{smoke}{An integer indicating whether the mother smoked during pregnancy (1 = yes, 0 = no).}
#' }
#' @source Data collected from the Child Health and Development Studies.
#' @usage data(babies_tbl_df)
#' @export
load("data/babies_tbl_df.rda")
NULL



#' Crawling Age
#'
#' The dataset name has been changed to 'babies_crawl_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on the average crawling age of infants based on the month of birth,
#' as well as associated factors such as temperature.
#'
#' @name babies_crawl_tbl_df
#' @format A tibble with 12 observations and 5 variables:
#' \describe{
#'   \item{birth_month}{A factor indicating the month of birth (January to December).}
#'   \item{avg_crawling_age}{A numeric value representing the average crawling age (in months).}
#'   \item{sd}{A numeric value indicating the standard deviation of crawling age.}
#'   \item{n}{An integer representing the number of infants included in the calculation.}
#'   \item{temperature}{An integer indicating the average temperature (in degrees Celsius) during the month.}
#' }
#' @source Data collected on the crawling age of infants based on birth month and temperature.
#' @usage data(babies_crawl_tbl_df)
#' @export
load("data/babies_crawl_tbl_df.rda")
NULL


#' Body measurements of 507 physically active individuals.
#'
#' The dataset name has been changed to 'bdims_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains body measurements of 507 physically active individuals, including various
#' dimensions and physical attributes.
#'
#' @name bdims_tbl_df
#' @format A tibble with 507 observations and 25 variables:
#' \describe{
#'   \item{bia_di}{Numerical value of body measurement (in cm).}
#'   \item{bii_di}{Numerical value of body measurement (in cm).}
#'   \item{bit_di}{Numerical value of body measurement (in cm).}
#'   \item{che_de}{Numerical value of body measurement (in cm).}
#'   \item{che_di}{Numerical value of body measurement (in cm).}
#'   \item{elb_di}{Numerical value of body measurement (in cm).}
#'   \item{wri_di}{Numerical value of body measurement (in cm).}
#'   \item{kne_di}{Numerical value of body measurement (in cm).}
#'   \item{ank_di}{Numerical value of body measurement (in cm).}
#'   \item{sho_gi}{Numerical value of body measurement (in cm).}
#'   \item{che_gi}{Numerical value of body measurement (in cm).}
#'   \item{wai_gi}{Numerical value of body measurement (in cm).}
#'   \item{nav_gi}{Numerical value of body measurement (in cm).}
#'   \item{hip_gi}{Numerical value of body measurement (in cm).}
#'   \item{thi_gi}{Numerical value of body measurement (in cm).}
#'   \item{bic_gi}{Numerical value of body measurement (in cm).}
#'   \item{for_gi}{Numerical value of body measurement (in cm).}
#'   \item{kne_gi}{Numerical value of body measurement (in cm).}
#'   \item{cal_gi}{Numerical value of body measurement (in cm).}
#'   \item{ank_gi}{Numerical value of body measurement (in cm).}
#'   \item{wri_gi}{Numerical value of body measurement (in cm).}
#'   \item{age}{An integer indicating the age of the individual (in years).}
#'   \item{wgt}{A numeric value indicating the weight of the individual (in kg).}
#'   \item{hgt}{A numeric value indicating the height of the individual (in cm).}
#'   \item{sex}{An integer indicating the sex of the individual (1 = male, 2 = female).}
#' }
#' @source Data collected from physically active individuals to analyze body measurements.
#' @usage data(bdims_tbl_df)
#' @export
load("data/bdims_tbl_df.rda")
NULL


#' Pfizer-BioNTech COVID-19 Vaccine Efficacy in Adolescents
#'
#' The dataset name has been changed to 'biontech_teens_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on the efficacy of the Pfizer-BioNTech COVID-19 vaccine among adolescents,
#' detailing the outcomes based on different groups.
#'
#' @name biontech_teens_tbl_df
#' @format A tibble with 2,260 observations and 2 variables:
#' \describe{
#'   \item{group}{A factor indicating the group (e.g., vaccinated vs. unvaccinated).}
#'   \item{outcome}{A factor indicating the outcome (e.g., infection status).}
#' }
#' @source Data collected during clinical trials to evaluate vaccine efficacy in adolescents.
#' @usage data(biontech_teens_tbl_df)
#' @export
load("data/biontech_teens_tbl_df.rda")
NULL



#' Type 2 Diabetes Clinical Trial for Patients Aged 10-17
#'
#' The dataset name has been changed to 'diabetes2_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information from a clinical trial focusing on Type 2 diabetes in patients aged 10 to 17 years,
#' detailing the treatment approaches and their outcomes.
#'
#' @name diabetes2_tbl_df
#' @format A tibble with 699 observations and 2 variables:
#' \describe{
#'   \item{treatment}{A factor indicating the type of treatment administered (e.g., different medication types).}
#'   \item{outcome}{A factor indicating the outcome of the treatment (e.g., improvement or no improvement).}
#' }
#' @source Data collected from clinical trials assessing treatment efficacy for Type 2 diabetes in adolescents.
#' @usage data(diabetes2_tbl_df)
#' @export
load("data/diabetes2_tbl_df.rda")
NULL



#' Survey on Ebola Quarantine
#'
#' The dataset name has been changed to 'ebola_survey_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains survey responses regarding quarantine measures during the Ebola outbreak,
#' focusing on public perceptions and behaviors.
#'
#' @name ebola_survey_tbl_df
#' @format A tibble with 1,042 observations and 1 variable:
#' \describe{
#'   \item{quarantine}{A factor indicating the responses related to quarantine measures (e.g., yes or no).}
#' }
#' @source Data collected from surveys conducted during the Ebola outbreak to assess public sentiment towards quarantine.
#' @usage data(ebola_survey_tbl_df)
#' @export
load("data/ebola_survey_tbl_df.rda")
NULL



#' Heart Transplant Data
#'
#' The dataset name has been changed to 'heart_transplant_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on heart transplant patients, including demographics, survival outcomes,
#' and wait times.
#'
#' @name heart_transplant_tbl_df
#' @format A tibble with 103 observations and 8 variables:
#' \describe{
#'   \item{id}{An integer identifier for each patient.}
#'   \item{acceptyear}{The year the patient was accepted for transplantation.}
#'   \item{age}{The age of the patient at the time of transplantation.}
#'   \item{survived}{A factor indicating whether the patient survived post-transplant (e.g., yes or no).}
#'   \item{survtime}{The time (in months) the patient survived after the transplant.}
#'   \item{prior}{A factor indicating whether the patient had prior heart conditions (e.g., yes or no).}
#'   \item{transplant}{A factor indicating the type of transplant (e.g., heart only, heart-lung).}
#'   \item{wait}{The wait time (in days) for the transplant.}
#' }
#' @source Data collected from heart transplant records to study patient outcomes and factors influencing survival.
#' @usage data(heart_transplant_tbl_df)
#' @export
load("data/heart_transplant_tbl_df.rda")
NULL


#' Malaria Vaccine Trial
#'
#' The dataset name has been changed to 'malaria_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information from a malaria vaccine trial, focusing on the treatment administered
#' and the outcomes observed in the participants.
#'
#' @name malaria_tbl_df
#' @format A tibble with 20 observations and 2 variables:
#' \describe{
#'   \item{treatment}{A factor indicating the type of treatment administered (e.g., vaccine or placebo).}
#'   \item{outcome}{A factor indicating the outcome of the treatment (e.g., success or failure).}
#' }
#' @source Data collected from a clinical trial assessing the efficacy of a malaria vaccine.
#' @usage data(malaria_tbl_df)
#' @export
load("data/malaria_tbl_df.rda")
NULL


#' Stents for the Treatment of Stroke
#'
#' The dataset name has been changed to 'stent30_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information regarding the use of stents for the treatment of stroke, focusing
#' on the group assignments and the outcomes observed in the participants.
#'
#' @name stent30_tbl_df
#' @format A tibble with 451 observations and 2 variables:
#' \describe{
#'   \item{group}{A factor indicating the treatment group (e.g., stent vs. control).}
#'   \item{outcome}{A factor indicating the outcome of the treatment (e.g., success or failure).}
#' }
#' @source Data collected from a clinical trial assessing the efficacy of stents in stroke treatment.
#' @usage data(stent30_tbl_df)
#' @export
load("data/stent30_tbl_df.rda")
NULL


#' Sinusitis and Antibiotic Experiment
#'
#' The dataset name has been changed to 'sinusitis_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information from an experiment assessing the effects of antibiotics on
#' patients with sinusitis, focusing on the group assignments and the self-reported improvement
#' outcomes observed in the participants.
#'
#' @name sinusitis_tbl_df
#' @format A tibble with 166 observations and 2 variables:
#' \describe{
#'   \item{group}{A factor indicating the treatment group (e.g., antibiotic vs. placebo).}
#'   \item{self_reported_improvement}{A factor indicating the participants' self-reported improvement (e.g., yes or no).}
#' }
#' @source Data collected from a clinical trial investigating the efficacy of antibiotics in treating sinusitis.
#' @usage data(sinusitis_tbl_df)
#' @export
load("data/sinusitis_tbl_df.rda")
NULL


#' Survey on Sleep Deprivation and Transportation Workers
#'
#' The dataset name has been changed to 'sleep_deprivation_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information from a survey conducted on transportation workers, focusing on
#' the relationship between sleep deprivation and their professional roles. It includes variables
#' on the amount of sleep reported and the professions of the respondents.
#'
#' @name sleep_deprivation_tbl_df
#' @format A tibble with 1,087 observations and 2 variables:
#' \describe{
#'   \item{sleep}{A factor indicating the reported sleep deprivation level (e.g., low, moderate, high).}
#'   \item{profession}{A factor indicating the profession of the participants (e.g., truck driver, pilot, etc.).}
#' }
#' @source Data collected from a survey targeting transportation workers to assess the impact of sleep
#' deprivation on their performance and well-being.
#' @usage data(sleep_deprivation_tbl_df)
#' @export
load("data/sleep_deprivation_tbl_df.rda")
NULL



#' Smallpox Vaccine Results
#'
#' The dataset name has been changed to 'smallpox_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains the results of a study on the efficacy of the smallpox vaccine. It includes
#' information on the vaccination outcomes of individuals who were inoculated, providing insight into
#' the effectiveness of the vaccine in preventing the disease.
#'
#' @name smallpox_tbl_df
#' @format A tibble with 6,224 observations and 2 variables:
#' \describe{
#'   \item{result}{A factor indicating the outcome of the vaccination (e.g., successful, unsuccessful).}
#'   \item{inoculated}{A factor indicating whether the individual was inoculated with the smallpox vaccine.}
#' }
#' @source Data collected from studies on smallpox vaccination and its outcomes.
#' @usage data(smallpox_tbl_df)
#' @export
load("data/smallpox_tbl_df.rda")
NULL



#' UK Smoking Data
#'
#' The dataset name has been changed to 'smoking_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on smoking habits in the UK, focusing on various demographic
#' factors and smoking behaviors. It provides insights into smoking patterns among different groups
#' of people, helping to inform public health strategies.
#'
#' @name smoking_tbl_df
#' @format A tibble with 1,691 observations and 12 variables:
#' \describe{
#'   \item{gender}{A factor indicating the gender of the respondent (e.g., male, female).}
#'   \item{age}{An integer representing the age of the respondent.}
#'   \item{marital_status}{A factor indicating the marital status of the respondent (e.g., single, married).}
#'   \item{highest_qualification}{A factor indicating the highest qualification attained by the respondent.}
#'   \item{nationality}{A factor indicating the nationality of the respondent.}
#'   \item{ethnicity}{A factor indicating the ethnicity of the respondent.}
#'   \item{gross_income}{A factor indicating the gross income level of the respondent.}
#'   \item{region}{A factor indicating the geographical region of the respondent.}
#'   \item{smoke}{A factor indicating whether the respondent is a smoker (e.g., yes, no).}
#'   \item{amt_weekends}{An integer representing the amount smoked on weekends.}
#'   \item{amt_weekdays}{An integer representing the amount smoked on weekdays.}
#'   \item{type}{A factor indicating the type of smoking behavior (e.g., occasional, regular).}
#' }
#' @source Data collected from UK health surveys focusing on smoking behavior.
#' @usage data(smoking_tbl_df)
#' @export
load("data/smoking_tbl_df.rda")
NULL


#' Transplant consultant success rate (fake data)
#'
#' The dataset name has been changed to 'transplant_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains fake data representing the success rates of transplant consultants. It provides
#' insights into the outcomes of transplant procedures performed by different consultants, useful for
#' evaluating consultant performance and patient outcomes.
#'
#' @name transplant_tbl_df
#' @format A tibble with 62 observations and 1 variable:
#' \describe{
#'   \item{outcome}{A factor indicating the outcome of the transplant procedure (e.g., success, failure).}
#' }
#' @source Synthetic data created for educational purposes.
#' @usage data(transplant_tbl_df)
#' @export
load("data/transplant_tbl_df.rda")
NULL



#' Contagiousness of Yawning
#'
#' The dataset name has been changed to 'yawn_tbl_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset investigates the contagiousness of yawning. It includes results from an experiment that
#' examines whether individuals yawn more when they are in the presence of someone else who is yawning,
#' providing insights into social behaviors and contagion phenomena.
#'
#' @name yawn_tbl_df
#' @format A tibble with 50 observations and 2 variables:
#' \describe{
#'   \item{result}{A factor indicating the result of the yawning observation (e.g., yawned, did not yawn).}
#'   \item{group}{A factor representing the group to which the participants belong (e.g., control, experimental).}
#' }
#' @source Data collected from a study on yawning contagion.
#' @usage data(yawn_tbl_df)
#' @export
load("data/yawn_tbl_df.rda")
NULL


#' San Francisco COVID-19 Tests
#'
#' The dataset name has been changed to 'covid19sf_tests_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset contains information on COVID-19 tests conducted in San Francisco, detailing the number
#' of tests performed, the number of positive and negative results, as well as other related metrics.
#' It provides insights into the testing patterns and results during the COVID-19 pandemic.
#'
#' @name covid19sf_tests_df
#' @format A data frame with 652 observations and 6 variables:
#' \describe{
#'   \item{specimen_collection_date}{The date when the specimen was collected (Date).}
#'   \item{tests}{The total number of tests conducted (integer).}
#'   \item{pos}{The number of positive test results (integer).}
#'   \item{pct}{The percentage of positive tests (numeric).}
#'   \item{neg}{The number of negative test results (integer).}
#'   \item{indeterminate}{The number of indeterminate test results (integer).}
#' }
#' @source San Francisco Department of Public Health COVID-19 testing data.
#' @usage data(covid19sf_tests_df)
#' @export
load("data/covid19sf_tests_df.rda")
NULL



#' San Francisco COVID-19 Hospital Capacity
#'
#' The dataset name has been changed to 'covid19sf_hospital_df' to avoid confusion with other datasets from
#' packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from
#' other datasets within the package and from those in the broader R ecosystem. The original content
#' of the dataset has not been modified in any way.
#'
#' This dataset provides information on hospital capacity in San Francisco during the COVID-19 pandemic.
#' It details the number of available hospital beds categorized by type and status, along with the respective
#' hospitals and dates. The dataset is crucial for understanding the hospital system's response and capacity
#' to handle COVID-19 cases.
#'
#' @name covid19sf_hospital_df
#' @format A data frame with 4,514 observations and 5 variables:
#' \describe{
#'   \item{hospital}{The name of the hospital (character).}
#'   \item{date}{The date of the reported data (Date).}
#'   \item{bed_type}{The type of bed (character), such as ICU, general, etc.}
#'   \item{status}{The status of the beds (character), indicating if they are occupied, available, etc.}
#'   \item{count}{The number of beds reported (integer).}
#' }
#' @source San Francisco Department of Public Health COVID-19 hospital capacity data.
#' @usage data(covid19sf_hospital_df)
#' @export
load("data/covid19sf_hospital_df.rda")
NULL



#' Drug Mixture
#'
#' The dataset name has been changed to 'Mixtures_Drug_tbl_df' to avoid confusion with other datasets
#' from packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset provides information about various drug mixtures, including their names and ingredients.
#'
#' @name Mixtures_Drug_tbl_df
#' @format A tibble with 819 observations and 3 variables:
#' \describe{
#'   \item{name}{Name of the drug mixture (character).}
#'   \item{ingredients}{Ingredients that make up the drug mixture (character).}
#'   \item{parent_key}{Identifier linking the mixture to its parent compound or category (character).}
#' }
#' @source The dataset is derived from publicly available pharmaceutical databases and research studies.
#' @usage data(Mixtures_Drug_tbl_df)
#' @export
load("data/Mixtures_Drug_tbl_df.rda")
NULL



#' Weekly Notified Dengue Cases in Sri Lanka
#'
#' The dataset name has been changed to 'colmozzie_tbl_df' to avoid confusion with other datasets
#' from packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_tbl_df' indicates that this dataset is a tibble, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset contains weekly reported cases of dengue fever in Sri Lanka, along with various
#' meteorological variables that may be associated with the incidence of the disease.
#'
#' @name colmozzie_tbl_df
#' @format A tibble with 279 observations and 12 variables:
#' \describe{
#'   \item{Cases}{Number of dengue cases reported during the week (integer).}
#'   \item{Year}{Year of the reported cases (integer).}
#'   \item{Week}{Week of the year (integer).}
#'   \item{TEM}{Average temperature (numeric).}
#'   \item{TMAX}{Maximum temperature recorded (numeric).}
#'   \item{Tm}{Minimum temperature recorded (numeric).}
#'   \item{SLP}{Sea level pressure (character).}
#'   \item{H}{Humidity levels (numeric).}
#'   \item{PP}{Precipitation levels (numeric).}
#'   \item{VV}{Wind velocity (numeric).}
#'   \item{V}{Another wind variable (numeric).}
#'   \item{VM}{Yet another wind variable (numeric).}
#' }
#' @source The dataset is based on public health records and meteorological data from Sri Lanka.
#' @usage data(colmozzie_tbl_df)
#' @export
load("data/colmozzie_tbl_df.rda")
NULL



#' Relationship Between Gene and Disease
#'
#' The dataset name has been changed to 'drugbank_df' to avoid confusion with other datasets
#' from packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset contains information about the relationships between genes and diseases, providing
#' insights into how specific genes may be associated with various diseases.
#'
#' @name drugbank_df
#' @format A data frame with 27,728 observations and 2 variables:
#' \describe{
#'   \item{gene}{Gene associated with the disease (factor).}
#'   \item{disease}{Disease associated with the gene (factor).}
#' }
#' @source The dataset is derived from drug interaction databases and gene-disease relationships.
#' @usage data(drugbank_df)
#' @export
load("data/drugbank_df.rda")
NULL



#' Relationship Between Gene and Disease in Edgar
#'
#' The dataset name has been changed to 'edgar_df' to avoid confusion with other datasets
#' from packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset contains information about the relationships between genes and diseases, specifically
#' focusing on data sourced from the Edgar database, providing insights into how specific genes may
#' be associated with various diseases.
#'
#' @name edgar_df
#' @format A data frame with 1,038,340 observations and 2 variables:
#' \describe{
#'   \item{Gene}{Gene associated with the disease (factor).}
#'   \item{Disease}{Disease associated with the gene (factor).}
#' }
#' @source The dataset is derived from the Edgar database and focuses on gene-disease relationships.
#' @usage data(edgar_df)
#' @export
load("data/edgar_df.rda")
NULL



#' The Relationship Between Gene and Disease
#'
#' The dataset name has been changed to 'mala_df' to avoid confusion with other datasets
#' from packages in the R ecosystem and to follow the naming conventions of the 'MedDataSets' package.
#' The suffix '_df' indicates that this dataset is a data frame, helping to distinguish it from other
#' datasets within the package and from those in the broader R ecosystem. The original content of the
#' dataset has not been modified in any way.
#'
#' This dataset contains information about the relationships between genes and diseases, providing
#' insights into how specific genes are associated with various diseases. It offers a comprehensive
#' view of gene-disease associations.
#'
#' @name mala_df
#' @format A data frame with 241,306 observations and 2 variables:
#' \describe{
#'   \item{disease}{Disease associated with the gene (factor).}
#'   \item{gene}{Gene associated with the disease (factor).}
#' }
#' @source The dataset contains gene-disease relationship data from various scientific studies and databases.
#' @usage data(mala_df)
#' @export
load("data/mala_df.rda")
NULL











