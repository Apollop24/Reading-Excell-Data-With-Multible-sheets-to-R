#loading the requires file to import excell data into R
library(readxl)
#defining the file path containing the excell data in my loacal computer.
my_file_path<- c("C:/Users/TOO/Downloads/BI_Analyst_Assessment_Data_2023.xlsx")
#Read all thed excell sheet present in the excell file
E_sheets <- excel_sheets(my_file_path)
#itarate through all the sheets and read the data into a list
Business_Inteligence_Dataset <- list()#this is the list to store data from each sheet.
for (sheet_name in E_sheets) {
  #read the data in the sheets
  sheet_data <- read_excel(my_file_path,sheet = sheet_name)
  Business_Inteligence_Dataset[[sheet_name]] <- sheet_data
}
#Acess data from the specific sheet
Data_from_sheet1 <- Business_Inteligence_Dataset[["Visit Tbl"]]

# Load the required package
library(readxl)

# Define the file path containing the Excel data
my_file_path <- "C:/Users/TOO/Downloads/BI_Analyst_Assessment_Data_2023.xlsx"

# Read all the Excel sheets in the file
E_sheets <- excel_sheets(my_file_path)

# Iterate through each sheet and read the data into a list
Business_Inteligence_Dataset <- list()  # List to store data from each sheet

for (sheet_name in E_sheets) {
  # Read the sheet data
  sheet_data <- read_excel(my_file_path, sheet = sheet_name)
  Business_Inteligence_Dataset[[sheet_name]] <- sheet_data
}

# Access data from a specific sheet
Data_from_sheet1 <- Business_Inteligence_Dataset[["Visit Tbl"]]  # Replace "Visit Tbl" with the actual sheet name

# Print the data from a specific sheet
print(Data_from_sheet1)

