Welcome to Module I of the AI & Omics Research Internship 2025! This module introduces basic data handling and cleaning using R. You’ll work with patient metadata to explore variables and prepare datasets for further analysis.
📁 Project Structure

Module_I/
│
├── raw_data/           # Original data files (as downloaded)
├── clean_data/         # Cleaned and processed datasets
├── scripts/            # R scripts for data cleaning and analysis
├── results/            # Output results from analysis (e.g., tables)
├── plots/              # Visualizations and plots
├── patient_info.csv    # (Downloaded automatically)
└── README.md           # Project overview

📦 Requirements

Make sure you have R and the following packages installed:

install.packages("tidyverse")

🔄 How to Run

    Set working directory
    Adjust the setwd() command in the script to your local project path:

setwd("~/Desktop/AI_Omics_Internship_2025/Module_I")

Create project folders
Folders for raw data, cleaned data, scripts, results, and plots will be created automatically.

Download and read the dataset
The patient metadata CSV is downloaded from GitHub and read into R.

Data cleaning steps

    Convert age to numeric

    Convert gender and smoking to factors

    Create a binary column smoking_binary (1 = Yes, 0 = No)

    Save cleaned data to clean_data/patient_info_clean.csv
