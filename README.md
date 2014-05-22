gettingdataproject
==================

Getting and Cleaning Data Course Peer Review Project

Variables chosen for the project are those having the mean and standard deviation measurements in the 3 co-ordiante axis(if present) for each of the measurements listed below:

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag


##Working Of The Script

* run_analysis.R sources a function runanaylsis which sets the working directory to the UCI HAR dataset.
* The script reads the training and test data, merges them and melts and casts with activity and subject as ID variables
* Codebook.md describes the variable names 
