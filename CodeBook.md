This codebook contains the description of data and details on various steps of analysis to attain the required dataset.

## Data
The data is present in the following files

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'activity_labels.txt' : Labels for various acvities.

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

- 'features.txt' : list of features in the dataset

The set of variables that were estimated from these signals are: 
 mean(): Mean value
 std(): Standard deviation
 mad(): Median absolute deviation 
 max(): Largest value in array
 min(): Smallest value in array
 sma(): Signal magnitude area
 energy(): Energy measure. Sum of the squares divided by the number of  values. 
 iqr(): Interquartile range 
 entropy(): Signal entropy
 arCoeff(): Autorregresion coefficients with Burg order equal to 4 
 correlation(): correlation coefficient between two signals
 maxInds(): index of the frequency component with largest magnitude
 meanFreq(): Weighted average of the frequency components to obtain a   mean frequency
 skewness(): skewness of the frequency domain signal 
 kurtosis(): kurtosis of the frequency domain signal 
 bandsEnergy(): Energy of a frequency interval within the 64 bins of    the FFT of each window.
 angle(): Angle between to vectors.

### Analysis
1- The first part of the analysis downloads the data from source, loads the data in active environment and merges the train and test data to get one data set.

2- The second part extracts the measurements on mean and standard deviation from the various measures listed above.Data in dataset contains 180 rows and 68 columns for
• mean(): Mean value
• std(): Standard deviation

3- This part of analysis uses descriptive activity names to name the activities in the data set.

The activity lables are loaded from the 'activity_lables.txt' file. Activity type is replaced with activity code in the working data set. Eaxh activity/activity code describes the activity subject was doing when the mesauremnts were taken. The description is as follows. 

1.WALKING
2.WALKING_UPSTAIRS
3.WALKING_DOWNSTAIRS
4.SITTING
5.STANDING
6.LAYING

The subjects are numbered sequentially from 1 to 30.

4- This part lables the dataset (columns in the working dataset). This involves cleaning up and simplifying the names so that the column headers are descriptive ans self explanatory.

5- The last part creates and independent tidy data set with the average of each variable for each activity and each subject.

