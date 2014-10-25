CleanData_Project
=================

2 files are provided in this repo for the course project.

1. "run_analysis.R":    
   This is the code used to generate the resulting data file for the project. The code downloads and unzips the original data into folder "data" of the current working directory. The unzipped files are automatically placed into a subfolder "UCI HAR Dataset". Then the code accessed the datasets from here and its subfolders.
   The code merges together the test data, training data, subject labels, and activity labels. Column names have been updated with the feature name and descriptive activity names. 
   Only mean and standard deviation values are extracted. This is done by only taking those with "name()" or "std()" in their names. Then column names are updated to show time/frequency domains. 
   By each subject and each activity, averages of each variable are calculated, and this is written to getDataProject.txt, submitted for this project.
   
2. "CodeBook.md":    
   This markdown file describes the original file, the transformation done by "run_analysis.R", and the variables in the resulting data file (getDataProject.txt) submitted for the project.