# Coursera_GettingCleaning_Data
Final Project

PLEASE NOTE, I've been having issues this entire course with my build of Windows 10 64 bit and R v.3.2.4 64 bit.
I have to set the directory, else it will not call the file. So I can't leave \\UCI HAR Dataset\\train and let your dir reference it.

I am using a different method of downloading and unzipping the file, this found on stackoverflow due to issues from ^^
So I'm not checking to see if the .zip file exists, PLEASE HAVE A CLEAN DIRECTORY TO START.

*Getting and Cleaning Data - Course Project*

All files and folders must be in the original format as they are downloaded from the source.

Main Folders/Files in use: 
	Link for file: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
	name of zipfile: getdata_projectfiles_UCI HAR Dataset
	Folder it creates: UCI HAR Dataset
		sub folder: test / train
		sub files: X test/train ; y test/train
			   subject_test ; subject_train


The Codebook.md describes all variables, the data and any changes/functions/updates done to the original data

run_analysis.R contains the scripts (It is set to my specific directory, because of problems from ^^) that runs the actions per the rules from the project outlines:
	1.Merges the training and the test sets to create one data set.
	2.Extracts only the measurements on the mean and standard deviation for each measurement. 
	3.Uses descriptive activity names to name the activities in the data set
	4.Appropriately labels the data set with descriptive variable names. 
	5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

There are two outputs, a text file and a csv file. ( I perfer csv since this is what I use daily for work)
They are named: tidaydata_Avg , tidaydata_Avg_CSV
THEY ARE PLACED IN CURRENT DIRECTORY!!

Thanks!
