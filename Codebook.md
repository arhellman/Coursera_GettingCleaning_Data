*CODE BOOK*
This codebook summarized all the data and variables used in my scripts, sources, and results.

*FINAL DATA INDENTIFIERS*
Subjectid = The id of the subject tested
Activity = The activity of the subject while wearing the device

*CODE VARIABLES*

activiyLabels:		Table created from source activity_labels.txt
features: 		Table created from source features.txt
subject_train:		Table created from source Subject_train.txt
subject_test: 		Table created from source Subject_test.txt
subject_datacmbnd:	Combined Tables from Subject_train and Subbject_test	
x_train:		Table created from source X_train.txt
x_test: 		Table created from source X_test.txt
x_datacmbnd:		Combined Tables from X_train and X_test		
y_train:		Table created from source y_train.txt
y_test: 		Table created from source y_test.txt
y_datacmbnd:		Combined Tables from y_train and y_test
features_adj: 		New Data set with only names that contained Mean or Std (Standard Dev.)
MainData_Cmbnd: 	The final combination of all the "cmbnd" data sets
MainData_Cmbnd_AVG: 	The aggregrated version using ddply to get the mean results of each test sorted by the subjectid and Activity



*ACTIVITY LABELS*
	WALKING: 		Subject was walking
	WALKING_UPSTAIRS: 	Subject was walking up a staircase
	WALKING_DOWNSTAIRS: 	Subject was walking down a staircase
	SITTING: 		Subject was sitting
	STANDING: 		Subject was standing
	LAYING: 		Subject was laying down

All done during testing.


*MEASUREMENTS*
tBodyAccMeanX
tBodyAccMeanY
tBodyAccMeanZ
tBodyAccStdX
tBodyAccStdY
tBodyAccStdZ
tGravityAccMeanX
tGravityAccMeanY
tGravityAccMeanZ
tGravityAccStdX
tGravityAccStdY
tGravityAccStdZ
tBodyAccJerkMeanX
tBodyAccJerkMeanY
tBodyAccJerkMeanZ
tBodyAccJerkStdX
tBodyAccJerkStdY
tBodyAccJerkStdZ
tBodyGyroMeanX
tBodyGyroMeanY
tBodyGyroMeanZ
tBodyGyroStdX
tBodyGyroStdY
tBodyGyroStdZ
tBodyGyroJerkMeanX
tBodyGyroJerkMeanY
tBodyGyroJerkMeanZ
tBodyGyroJerkStdX
tBodyGyroJerkStdY
tBodyGyroJerkStdZ
tBodyAccMagMean
tBodyAccMagStd
tGravityAccMagMean
tGravityAccMagStd
tBodyAccJerkMagMean
tBodyAccJerkMagStd
tBodyGyroMagMean
tBodyGyroMagStd
tBodyGyroJerkMagMean
tBodyGyroJerkMagStd
fBodyAccMeanX
fBodyAccMeanY
fBodyAccMeanZ
fBodyAccStdX
fBodyAccStdY
fBodyAccStdZ
fBodyAccMeanFreqX
fBodyAccMeanFreqY
fBodyAccMeanFreqZ
fBodyAccJerkMeanX
fBodyAccJerkMeanY
fBodyAccJerkMeanZ
fBodyAccJerkStdX
fBodyAccJerkStdY
fBodyAccJerkStdZ
fBodyAccJerkMeanFreqX
fBodyAccJerkMeanFreqY
fBodyAccJerkMeanFreqZ
fBodyGyroMeanX
fBodyGyroMeanY
fBodyGyroMeanZ
fBodyGyroStdX
fBodyGyroStdY
fBodyGyroStdZ
fBodyGyroMeanFreqX
fBodyGyroMeanFreqY
fBodyGyroMeanFreqZ
fBodyAccMagMean
fBodyAccMagStd
fBodyAccMagMeanFreq
fBodyBodyAccJerkMagMean
fBodyBodyAccJerkMagStd
fBodyBodyAccJerkMagMeanFreq
fBodyBodyGyroMagMean
fBodyBodyGyroMagStd
fBodyBodyGyroMagMeanFreq
fBodyBodyGyroJerkMagMean
fBodyBodyGyroJerkMagStd
fBodyBodyGyroJerkMagMeanFreq