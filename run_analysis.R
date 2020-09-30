
#create a placeholder for data dataset
file <- "getdata_dataset.zip"

## Download and unzip the dataset from the given site
if (!file.exists(file)){
  fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip "
  download.file(fileURL, file, method="curl")
}  

if (!file.exists("UCI HAR Dataset")) { 
  unzip(file) 
}

# Load features file
features <- read.table("UCI HAR Dataset/features.txt", col.names = c("n","functions"))

#Load the dataset for testing and training datasets
test_subject <- read.table("UCI HAR Dataset/test/subject_test.txt", col.names = "subject")
test_x <- read.table("UCI HAR Dataset/test/X_test.txt", col.names = features$functions)
test_y <- read.table("UCI HAR Dataset/test/y_test.txt", col.names = "code")

train_subject <- read.table("UCI HAR Dataset/train/subject_train.txt", col.names = "subject")
train_x <- read.table("UCI HAR Dataset/train/X_train.txt", col.names = features$functions)
train_y <- read.table("UCI HAR Dataset/train/y_train.txt", col.names = "code")

#Combine components of datasets to get test and train datasets
train <- cbind(train_subject, train_y, train_x)
test <- cbind(test_subject, test_y, test_x)

#Merge the training and the test sets to create one data set.
data <- rbind(test, train)

#Extract only the measurements on the mean and standard deviation for each measurement.
library(dplyr)
selected <- data %>% select(subject, code, contains("mean"), contains("std"))

#Use descriptive activity names to name the activities in the data set
activityType <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("code", "activity"))

#Use the list as column names for data
selected$code <- activityType[selected$code, 2]

#Appropriately labels the data set with descriptive variable names.
names(selected)

names(selected)[2] = "activity"
names(selected)<-gsub("Acc", "Accelerometer", names(selected))
names(selected)<-gsub("Gyro", "Gyroscope", names(selected))
names(selected)<-gsub("BodyBody", "Body", names(selected))
names(selected)<-gsub("Mag", "Magnitude", names(selected))
names(selected)<-gsub("^t", "Time", names(selected))
names(selected)<-gsub("^f", "Frequency", names(selected))
names(selected)<-gsub("tBody", "TimeBody", names(selected))

names(selected)<-gsub("-freq()", "Frequency", names(selected), ignore.case = TRUE)
names(selected)<-gsub("angle", "Angle", names(selected))
names(selected)<-gsub("gravity", "Gravity", names(selected))

names(selected)<-gsub("_d", "" , names(selected))

#Check the names of the variables to assue that no further changes are required
names(selected)

#From the data set in step 4, create a second, independent tidy data set with the 
#average of each variable for each activity and each subject.
TidyData <- selected %>%
  group_by(subject, activity) %>%
  summarise_all(funs(mean))

#Save the dataset in a text file
write.table(TidyData, "TidyData.txt", row.name=FALSE)
