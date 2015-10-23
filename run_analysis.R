# A script for combining and cleaning the daset from smartphones to 
# demonstrate the ability to collect, work with, and clean a data set

# data dowbnloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# Unzipped and located in the current working directory under the directory 'ucihar' 

# Read activity labels 
labels <- read.table('activity_labels.txt')
labels[,2] <- as.character(labels[,2])
# Read features
features <- read.table("features.txt")
features[,2] <- as.character(features[,2])

# Extract only the data on mean and standard deviation
keeper_features <- grep(".*mean.*|.*std.*", features[,2])

# Load train dataset
train <- read.table("./train/X_train.txt")[keeper_features]
trainActivities <- read.table("./train/Y_train.txt")
trainSubjects <- read.table("./train/subject_train.txt")
train <- cbind(trainSubjects, trainActivities, train)

# Load test dataset
test <- read.table("./test/X_test.txt")[keeper_features]
testActivities <- read.table("./test/Y_test.txt")
testSubjects <- read.table("./test/subject_test.txt")
test <- cbind(testSubjects, testActivities, test)

#labels
keeper_features.names <- features[keeper_features,2]
keeper_features.names = gsub('-mean', 'Mean', keeper_features.names)
keeper_features.names = gsub('-std', 'Std', keeper_features.names)
keeper_features.names <- gsub('[-()]', '', keeper_features.names)

# merge datasets
allData <- rbind(train, test)
colnames(allData) <- c("subject", "activity", keeper_features.names)

# turn activities & subjects into factors
allData$activity <- factor(allData$activity, levels = labels[,1], labels = labels[,2])
allData$subject <- as.factor(allData$subject)

allData.melted <- melt(allData, id = c("subject", "activity"))
allData.mean <- dcast(allData.melted, subject + activity ~ variable, mean)

write.table(allData.mean, "tidy.txt", row.names = FALSE, quote = FALSE, sep = ",")
