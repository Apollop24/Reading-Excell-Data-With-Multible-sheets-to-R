# Reading Excell Data With-Multiple Sheets to R


This repository contains scripts for importing and analyzing Excel data in R. The data is loaded from multiple sheets of an Excel file into a list structure, allowing for easy access and manipulation of the data.

## Table of Contents
1. [Introduction](#introduction)
2. [Data Source](#data-source)
3. [Installation](#installation)
4. [Data Preparation](#data-preparation)
5. [Attribute Information](#attribute-information)
6. [Accessing Data](#accessing-data)
7. [Conclusion](#conclusion)

## Introduction

This project aims to import and analyze data from an Excel file using R. The data is read from multiple sheets of the Excel file and stored in a list for easy access. This approach is useful for handling complex datasets spread across multiple sheets.

## Data Source

The data used in this project is stored in an Excel file named `BI_Analyst_Assessment_Data_2023.xlsx`. The file contains multiple sheets, each with different datasets relevant to business intelligence analysis.

## Installation

Ensure you have the following R packages installed:
```r
install.packages("readxl")
```

## Data Preparation

Load the required package and define the file path to the Excel data on your local computer:
```r
# Load the required package
library(readxl)

# Define the file path containing the Excel data
my_file_path <- "C:/Users/TOO/Downloads/BI_Analyst_Assessment_Data_2023.xlsx"
```

Read all the Excel sheets in the file:
```r
# Read all the Excel sheets in the file
E_sheets <- excel_sheets(my_file_path)
```

Iterate through each sheet and read the data into a list:
```r
# Iterate through each sheet and read the data into a list
Business_Inteligence_Dataset <- list()  # List to store data from each sheet

for (sheet_name in E_sheets) {
  # Read the sheet data
  sheet_data <- read_excel(my_file_path, sheet = sheet_name)
  Business_Inteligence_Dataset[[sheet_name]] <- sheet_data
}
```



## Accessing Data

To access data from a specific sheet, use the sheet name as the key in the list:
```r
# Access data from a specific sheet
Data_from_sheet1 <- Business_Inteligence_Dataset[["Visit Tbl"]]  # Replace "Visit Tbl" with the actual sheet name

# Print the data from a specific sheet
print(Data_from_sheet1)
```

## Conclusion

This project demonstrates how to import and analyze data from multiple sheets of an Excel file using R. By storing the data in a list structure, it becomes easy to access and manipulate the data from different sheets. This approach is particularly useful for complex datasets spread across multiple sheets in an Excel file.

