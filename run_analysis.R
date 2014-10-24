# Project
# download and unzip the data into folder "data" of the current working directory
getwd() # C:/r.data
if (!file.exists("data")) {
    dir.create("data")
}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile="./data/Dataset.zip")
unzip("./data/Dataset.zip", exdir="./data")
list.files("./data")
dateDownloaded <- date()
dateDownloaded # Fri Oct 24 19:04:00 2014
list.files("./data/UCI HAR Dataset")
list.files("./data/UCI HAR Dataset/test")
list.files("./data/UCI HAR Dataset/train")

# get activity labels
activity_labels <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
# get features, the 561 column names
features <- read.table("./data/UCI HAR Dataset/features.txt", 
                       colClasses = c("numeric", "character"))

# Test Data
X_test <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
Y_test <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
subject_test <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
testData <- cbind(subject_test, Y_test, X_test)
rm(subject_test, Y_test, X_test)
# Train Data
X_train <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
Y_train <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
subject_train <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
trainData <- cbind(subject_train, Y_train, X_train)
rm(subject_train, Y_train, X_train)
# Merge the trainData and testData
merged <- rbind(trainData, testData)
rm(trainData, testData)

# set column names
colnames(merged)[1] <- "subject"
colnames(merged)[2] <- "activity"
colnames(merged)[3:563] <- features[,2]

# change activity column to descriptive contents
merged[,"activity"] <- activity_labels[merged[,"activity"], 2]

# Extracts only mean and standard deviation for each measurement
meanCol <- grep("mean()", colnames(merged), fixed = TRUE)
stdCol <- grep("std()", colnames(merged), fixed = TRUE)
extracted <- cbind(merged[, c("subject", "activity")], merged[, meanCol], merged[, stdCol])

# rename variable names
naming <- colnames(extracted)
naming <- ifelse(substring(naming, 1, 1)=="t", paste("time_", substring(naming, 2), sep=""), naming)
naming <- ifelse(substring(naming, 1, 1)=="f", paste("freq_", substring(naming, 2), sep=""), naming)
naming <- gsub("-","_", naming, fixed=TRUE)
naming <- gsub("()","", naming, fixed=TRUE)
colnames(extracted) <- naming

# average of each variable for each activity and each subject
extracted_avg <- aggregate(extracted[, 3:68], 
                           by = list(subject=extracted$subject, activity=extracted$activity),
                           FUN=mean)

# save as text file
write.table(extracted_avg, file="./data/getDataProject.txt", row.name=FALSE)

# below is checking the submitted text file
address <- "https://s3.amazonaws.com/coursera-uploads/user-b35a609a7b82bfb62a78b827/972586/asst-3/ac5ca7e05b8c11e4922a11b72dae9710.txt"
address <- sub("^https", "http", address)
data <- read.table(url(address), header = TRUE) 
View(data)