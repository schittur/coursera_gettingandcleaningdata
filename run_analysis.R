# setwd("H:\\coursera\\Getting and cleaning data\\Project\\UCI HAR Dataset");

#1. Merge the training and the test sets to create one data set
#read training and test data, dataframe columns are (subject, activity, all readings ....)
my.train <- read.table("train\\subject_train.txt"); # Subjects
my.train <- cbind(my.train, read.table("train\\y_train.txt")); # add Activities
my.train <- cbind(my.train, read.table("train\\X_train.txt")); # add readings

my.test <- read.table("test\\subject_test.txt"); # Subjects
my.test <- cbind(my.test, read.table("test\\y_test.txt")); # add Activities
my.test <- cbind(my.test, read.table("test\\X_test.txt")); # add readings

#merge data
my.data <- rbind(my.train, my.test);

#set column names for the merged dataset from feature list
my.featuresList <- read.table("features.txt");
colnames(my.data) <- c("Subject", "Activity", as.character(my.featuresList[,2]));

# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
# get only mean and standard deviations of magnitudes
my.features <- as.character(
        my.featuresList[grep("mean\\(\\)|std\\(\\)", as.character(my.featuresList[,2])), 2]
    );
my.features <- as.character(
    my.features[grep("Mag", as.character(my.features))]
);

# get only mean and std columns from merged data set (include activity column)
my.data <- my.data[, c("Subject", "Activity", as.character(my.features))];

# 3.Use descriptive activity names to name the activities in the data set
# replace Activity column with activity names in data set
my.activityList <- read.table("activity_labels.txt");
my.data$Activity <- my.activityList[my.data$Activity, "V2"];


# 4. Appropriately label the data set with descriptive variable names.
# modify column names into readable strings
colnames(my.data) <- sub("[(][)]", "", colnames(my.data));
colnames(my.data) <- sub("-", "_", colnames(my.data));

# 5.Create a second, independent tidy data set with the 
#   average of each variable for each activity and each subject.

# calculate the mean
library(plyr);
my.tidyDataset <- ddply(my.data, .(Subject, Activity), numcolwise(mean));
# prefix column names with mean_, retain Subject and Activity column names 
colnames(my.tidyDataset) <- paste("mean_", colnames(my.tidyDataset), sep="");
colnames(my.tidyDataset)[1] <- "Subject";
colnames(my.tidyDataset)[2] <- "Activity";
