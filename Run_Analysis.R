

###I AM USING WINDOWS 10 and R 64 BIT v3.2.4


##COURSERA GETTING AND CLEANING DATA: FINAL PROJECT.
##OBJECTIVES:   1.Merges the training and the test sets to create one data set.
###		2.Extracts only the measurements on the mean and standard deviation for each measurement. 
###		3.Uses descriptive activity names to name the activities in the data set
###		4.Appropriately labels the data set with descriptive variable names. 
### 		5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### DATA SOURCE:
###	Link for file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
###	name of zipfile: getdata_projectfiles_UCI HAR Dataset
###	Folder it creates: UCI HAR Dataset
###		sub folder: test / train
###		sub files: X test/train ; y test/train
###			   subject_test ; subject_train



##April 17th, 2016. Final Project for Coursera: Getting and Cleaning Data.
##SCRIPT BEGINS BELOW:


## Get the current directory and replace with one you want:
setwd("C:\\Users\\ADMIN\\Documents\\Final_Project")
## check to make sure it's working
getwd()


## Solution was found via stackoverflow: https://stackoverflow.com/questions/4216753/check-existence-of-directory-and-create-if-doesnt-exist
## this was modified to fit this and check if the sub directory existed, else it will create new and give true.
mainDir <- getwd()
ifelse(!dir.exists(file.path(mainDir)), dir.create(file.path(mainDir)), FALSE)

##DUE TO PROBLEMS WITH WIN10 64 bit and R 64 bit, I am not doing the .zip file check. The method below passes through a temp file and unzipped in the set dir


## After have extensive trouble with Windows 10 and R 64 bit, I found a solution on stackoverflow: https://stackoverflow.com/questions/23899525/using-r-to-download-zipped-data-file-extract-and-import-csv
## It creates a temp file, downloads the temp file, then unzips it to the set directory, Unlink is used to remove the temp file/directory
temp <- tempfile()
download.file("http://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",temp, mode="wb")
unzip(temp)


###Load the main data sets for the "features(mean and std are here)" and the "activity labels"
activiyLabels <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\activity_labels.txt")
features <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\features.txt")

 ## Begin loading the data sets 
subject_train <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\train\\subject_train.txt")
subject_test <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\test\\subject_test.txt")
	##Create the condensed Set
		subject_datacmbnd <- rbind(subject_train, subject_test)	

x_train <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\train\\x_train.txt")
x_test <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\test\\X_test.txt")
	##Create the condensed Set
		x_datacmbnd <- rbind(x_train, x_test)
		
y_train <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\train\\y_train.txt")
y_test <- read.table("C:\\Users\\ADMIN\\Documents\\Final_Project\\UCI HAR Dataset\\test\\y_test.txt")
	##Create the condensed Set
		y_datacmbnd <- rbind(y_train, y_test)


###Per project instruction pull only the names that contain mean or std(standard dev.)
	features_adj <- grep(".*mean.*|.*std.*", features[,2])

##Subest the x_datacmbnd with the features_adj
	x_datacmbnd <- x_datacmbnd[, features_adj]

##Subest the y_datacmbnd with the features_adj
	y_datacmbnd[, 1] <- activiyLabels[y_datacmbnd[, 1], 2]

##Correct/Adjust all the columns names for the subsets we have created
	##x_datacmbnd
		names(x_datacmbnd) <- features[features_adj, 2]
	##y_datacmbnd
		##Update the y_datacmbnd with the columns of the activites
			y_datacmbnd[, 1] <- activiyLabels[y_datacmbnd[, 1], 2]
		names(y_datacmbnd) <- "activity"
	##subject_datacmbnd
		names(subject_datacmbnd) <- "subjectid"

##Bind all of the new combined data sets into the "main one" and begin prep for the averages.
	##Using cbind instead of r to bind the columns and create a sort of "matrix"
	MainData_Cmbnd <- cbind(x_datacmbnd, y_datacmbnd, subject_datacmbnd)

library(plyr)

##Create the averages data set for each features catagory
MainData_Cmbnd_AVG <- ddply(MainData_Cmbnd, .(subjectid, activity), function(x) colMeans(x[, 1:66]))
run_analysis.R

##Creat the tidydata.txt output in the current directory * Only columns names
write.table(MainData_Cmbnd_AVG, "tidaydata_Avg.txt", row.name=FALSE)
write.table(MainData_Cmbnd_AVG, "tidaydata_Avg_CSV.csv", row.name=FALSE)

## END OF SCRIPT.