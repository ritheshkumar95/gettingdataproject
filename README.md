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

* run_analysis.R sources a function runanaylsis
* The function sets working directory to train and test and reads the x train, y train, x test and y test data
* Then these, data are merged and the required features are extracted
* Activity and subject data are also read
* Activity names are edited for easier reading
* Variable names are changed using gsub functions to suit naming functions
* The data is melted and casted with activity and subject as ID variables and the mean of the measure variables is taken
* Codebook.md describes the variable names 
