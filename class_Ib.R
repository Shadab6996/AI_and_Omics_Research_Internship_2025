# Set working directory to project folder
setwd("~/Desktop/AI_Omics_Internship_2025/Module_I")  # Change if needed

# Create subfolders
dir.create("raw_data", showWarnings = FALSE)
dir.create("clean_data", showWarnings = FALSE)
dir.create("scripts", showWarnings = FALSE)
dir.create("results", showWarnings = FALSE)
dir.create("plots", showWarnings = FALSE)

# Load libraries
library(tidyverse)  # for data manipulation
# Download dataset from GitHub
url <- "https://github.com/AI-Biotechnology-Bioinformatics/AI_and_Omics_Research_Internship_2025/blob/main/patient_info.csv"
download.file(url, destfile = "raw_data/patient_info.csv", method = "curl")

setwd("/home/shadab22300/Desktop/AI_Omics_Internship_2025/Module_I")
# Read dataset
getwd()
list.files()

patient_info <- read.csv("raw_data/patient_info.csv", stringsAsFactors = FALSE)

# Structure and summary
str("patient_info.csv")
summary("patient_info.csv")
patient_info <- read.csv("raw_data/patient_info.csv", stringsAsFactors = FALSE)

# Example conversions (adjust based on actual data)
patient_info$age <- as.numeric(patient_info$age)
patient_info$gender <- as.factor(patient_info$gender)
patient_info$smoking <- as.factor(patient_info$smoking)  # assuming this is Yes/No

# Create binary variable
patient_info$smoking_binary <- ifelse(tolower(patient_info$smoking) == "yes", 1, 0)

colnames(patient_info)
head(patient_info)

# Convert smoker column to factor
patient_info$smoker <- as.factor(patient_info$smoker)

# Create binary variable: 1 if "Yes", 0 if "No"
patient_info$smoking_binary <- ifelse(tolower(patient_info$smoker) == "yes", 1, 0)
# Save cleaned dataset
write.csv(patient_info, "clean_data/patient_info_clean.csv", row.names = FALSE)

scripts/class_Ib.R


