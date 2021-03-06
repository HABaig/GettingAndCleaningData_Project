---
output:
  pdf_document: default
  html_document: default
---
# GettingAndCleaningData_Project
This repository contains analysis conducted for the final project for 'Getting and cleaning data' course on coursera.

The purpose of this project was to collect and clean a data set to attain a tidy data set ready to be used for further analysis. 

The reposiroty contains the following files.
 * README.md      : Markdown file (this file) with description and                          outline for analysis and data.
 * Run_analysis.R : R code for downloading and cleaning data.
 * TidyData.txt   : Text file containing resultant 'tidy' data.
 * CodeBook.md    : Markdown file containing the details for data, variables and the analysis.

## Data
The data for this project contains data collected from the accelerometers from the Samsung Galaxy S smartphone, acquired from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The dataset contains various files that would be needed for analysis.
 * 'README.txt' : File that contains the details on dataset, variables and units etc.
 
Note : The following description of files and their contents is copied from the aforemenationed README.txt file
 
* 'features_info.txt': Shows information about the variables used on the feature vector.

* 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


## Analysis and Code
The goal of the project is to create a tidy dataset, create a code that gets the following deliverables as given in the course instruction. 

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement.
3) Uses descriptive activity names to name the activities in the data set.
4) Appropriately labels the data set with descriptive variable names.
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
