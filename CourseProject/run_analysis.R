#Course Project for Getting and Cleaning data

#1.Merge the train and test data sets to create one data set
#First read all of the required data sets and then merge the similar datasets for train and test using rbind command
Xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
Xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
Xmerged.data <- rbind(Xtrain, Xtest)

Ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
Ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
Ymerged.data <- rbind(Ytrain, Ytest)

Strain <- read.table("UCI HAR Dataset/train/subject_train.txt")
Stest <- read.table("UCI HAR Dataset/test/subject_test.txt")
Smerged.data <- rbind(Strain, Stest)

features <- read.table("UCI HAR Dataset/features.txt")

#2. Extract only mean and std measurements for each measurement 
#Need to use the second column of features for variable names and 
#they have to be characters and then change the column names in the Xmerged.data
variablenames <- as.character(features[,2])
colnames(Xmerged.data) <- variablenames

#to subset the columns with mean and std measurement
newdata <- Xmerged.data[ ,grep("(.*)mean|std", colnames(Xmerged.data)) ]

#The newdata now contains only columns with mean or std measurements. 

#3. change activity names to descriptive activity names
#changing the names in the Ymerged.data which is the merged label file
Ymerged.data[ Ymerged.data == 1] <- "Walking"
Ymerged.data[ Ymerged.data == 2] <- "Walking_Upstairs"
Ymerged.data[ Ymerged.data == 3] <- "Walking_Downstairs"
Ymerged.data[ Ymerged.data == 4] <- "Sitting"
Ymerged.data[ Ymerged.data == 5] <- "Standing"
Ymerged.data[ Ymerged.data == 6] <- "Laying"


#merging subjects and activity names to the 'newdata' dataset 
colnames(Smerged.data) <- c("Subject")
colnames(Ymerged.data) <- c("Activity")
merged.data <- cbind(Smerged.data,Ymerged.data,newdata)


#4. To label data set with descriptive variable names
names(merged.data) <- gsub("^t", "Time",names(merged.data))
names(merged.data) <- gsub("Acc", "Accelerometer",names(merged.data))
names(merged.data) <- gsub("-mean()", "Mean",names(merged.data))
names(merged.data) <- gsub("-std()", "STD",names(merged.data))
names(merged.data) <- gsub("^f", "Frequency",names(merged.data))
names(merged.data) <- gsub("Gyro", "Gyroscope",names(merged.data))
names(merged.data) <- gsub("Mag", "Magnitude",names(merged.data))
names(merged.data) <- gsub("angle", "Angle",names(merged.data))

#5.To create a second, independent tidy data set with the average of each variable for each activity and each subject. 
library(plyr)
tidydataAve <- ddply(merged.data, c("Subject", "Activity"), numcolwise(mean))
write.table(tidydataAve,file="tidydata.txt")