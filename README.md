# SSIS_Demo

The purpose of this project is to demo SSIS packages. 

The project contains two SSIS packages, "CreateTables" and "LoadDataFromSpreadsheet". "CreateTables" creates the tables that "LoadDataFromSpreadsheet" uses and so it must be run first, or else you will encounter a metadata error.

The required SQL files and CSV are included in this repo, within the "SQL" and "Source Data" folders respectively. However, since SSIS uses absolute pathing, you will have to fix the path to those files to match your local file system.

Data credit: https://www.kaggle.com/imakash3011/customer-personality-analysis
