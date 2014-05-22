CodeBook
========================================================

Getting and Cleaning Data Course Peer Review Project

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated and used from these signals are: 

mean(): Mean value
std(): Standard deviation

##Trasnformations
*Train and test data were read and merged along with the activities.
*Features pertaining to only mean and standard deviation of the measured variables were taken.
*Feature names were renamed for better readability
*Activity names were given English-like names
*Subjects data were read for train and test data.
*Data was melted using activity and subject as ID variables
*Tidy data set was casted with activity and subject as ID variables and the mesared variables as the average of the mean and standard devation variabes of the signals measured.

##Variable Names As Present In Tidy Data Set
Only variables pertaining to the mean and standard deviation of the primary variables measured as described above were taken. 

In the second, independent tidy data set, that is, the output of the run_analysis.R produced a data set which was melted and casted using activity and subject as id variables and average was taken on the measured variables.

The naming convention uses "." to seperate the measured parameter, the variable estimated (mean or sd), the co-ordinate axis(x,y or z)

All variables are in lower case

#List Of Variables

| "names.tidydata."           |
|-----------------------------|
| "activity"                  |
| "subject"                   |
| "tbodyacc.mean.x"           |
| "tbodyacc.mean.y"           |
| "tbodyacc.mean.z"           |
| "tbodyacc.std.x"            |
| "tbodyacc.std.y"            |
| "tbodyacc.std.z"            |
| "tgravityacc.mean.x"        |
| "tgravityacc.mean.y"        |
| "tgravityacc.mean.z"        |
| "tgravityacc.std.x"         |
| "tgravityacc.std.y"         |
| "tgravityacc.std.z"         |
| "tbodyaccjerk.mean.x"       |
| "tbodyaccjerk.mean.y"       |
| "tbodyaccjerk.mean.z"       |
| "tbodyaccjerk.std.x"        |
| "tbodyaccjerk.std.y"        |
| "tbodyaccjerk.std.z"        |
| "tbodygyro.mean.x"          |
| "tbodygyro.mean.y"          |
| "tbodygyro.mean.z"          |
| "tbodygyro.std.x"           |
| "tbodygyro.std.y"           |
| "tbodygyro.std.z"           |
| "tbodygyrojerk.mean.x"      |
| "tbodygyrojerk.mean.y"      |
| "tbodygyrojerk.mean.z"      |
| "tbodygyrojerk.std.x"       |
| "tbodygyrojerk.std.y"       |
| "tbodygyrojerk.std.z"       |
| "tbodyaccmag.mean"          |
| "tbodyaccmag.std"           |
| "tgravityaccmag.mean"       |
| "tgravityaccmag.std"        |
| "tbodyaccjerkmag.mean"      |
| "tbodyaccjerkmag.std"       |
| "tbodygyromag.mean"         |
| "tbodygyromag.std"          |
| "tbodygyrojerkmag.mean"     |
| "tbodygyrojerkmag.std"      |
| "fbodyacc.mean.x"           |
| "fbodyacc.mean.y"           |
| "fbodyacc.mean.z"           |
| "fbodyacc.std.x"            |
| "fbodyacc.std.y"            |
| "fbodyacc.std.z"            |
| "fbodyaccjerk.mean.x"       |
| "fbodyaccjerk.mean.y"       |
| "fbodyaccjerk.mean.z"       |
| "fbodyaccjerk.std.x"        |
| "fbodyaccjerk.std.y"        |
| "fbodyaccjerk.std.z"        |
| "fbodygyro.mean.x"          |
| "fbodygyro.mean.y"          |
| "fbodygyro.mean.z"          |
| "fbodygyro.std.x"           |
| "fbodygyro.std.y"           |
| "fbodygyro.std.z"           |
| "fbodyaccmag.mean"          |
| "fbodyaccmag.std"           |
| "fbodybodyaccjerkmag.mean"  |
| "fbodybodyaccjerkmag.std"   |
| "fbodybodygyromag.mean"     |
| "fbodybodygyromag.std"      |
| "fbodybodygyrojerkmag.mean" |
| "fbodybodygyrojerkmag.std"  |
