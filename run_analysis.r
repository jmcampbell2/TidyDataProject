## File: run_analysis.r
## Author: Jennifer Campbell
##
## Dependant Packages Required: "plyr", "dyplr", "data.table"
##
## Processing Requirements per Tidy Data Project Instructions
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set 
##    with the average of each variable for each activity and each subject.
##

#Part 1. Download dataset zip file from course website and unzip
data_url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(data_url, destfile='./HARDataset.zip')
unzip(zipfile = "./HARDataset.zip")

#Part 2. Read in all the data files
#Training data files
train_x <- read.table("./UCI HAR Dataset/train/X_train.txt") 
train_y <- read.table("./UCI HAR Dataset/train/y_train.txt") 
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt") 

#Test data files 
test_x <- read.table("./UCI HAR Dataset/test/X_test.txt") 
test_y <- read.table("./UCI HAR Dataset/test/y_test.txt") 
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt") 

#Features file 
features <- read.table("./UCI HAR Dataset/features.txt",sep='') 

#Activity names file 
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt") 

#Part 3. Apply labels to data with:
#x files contain observations described by features file,
#y files contain activity ids, 
#subject files contain subject ids
colnames(train_x) <- features[,2]
colnames(train_y) <- "activityId"
colnames(train_subject) <- "subjectId"

colnames(test_x) <- features[,2]
colnames(test_y) <- "activityId"
colnames(test_subject) <- "subjectId"

colnames(activity_labels) <-c("activityId", "activityType")

#Part 4. Merge data tables into single data set
#columns organized by: subjectID, activityId, then observational features,
#rows organized by: training data followed by test data
train_merged <- cbind(train_subject,train_y,train_x)
test_merged <- cbind(test_subject,test_y,test_x)
full_set <- rbind(train_merged,test_merged)

#Part 5. Select desired columns from data set 
#want to keep subjectId, activityId, any means, any standard deviations from the list of 
#column names, so subset data using expression matching
columns <- colnames(full_set)
selected_set <- full_set[grepl("(subjectId|activityId|mean|std)", columns)]

#Add descriptive activity labels to selected data
new_dataset <- merge(activity_labels,selected_set,by.x="activityId",by.y="activityId")

#Part 6. Create a second, independent tidy data set with the average of each variable 
#for each activity and each subject, and write new data to file

means_data <- ddply(new_dataset, .(subjectId, activityId, activityType), 
                  function(x) colMeans(x[,4:82]))

#write.table(new_dataset, "clean_data.txt") 
write.table(means_data,"tidydata.txt",row.name=FALSE)