Tidy Dataset 01
========================================================

This is the first part of the Getting and Cleaning Data Course Project on Coursera. Tidy Dataset 01 is a merged dataset of selective test and training data from the sensor signals (accelerometer and gyroscope) from Samsung Galaxy S smartphone during an experiment with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone. Various acceleration and angular velocity vectors were recordrd which has been used as source in this project.

## Tidy Dataset 01 - Below is the description of all codes used in the Tidy Dataset 01.

activity_id                : int  - Activity id
name                       : Factor - Activity Nme
tBodyAcc.mean...X          : num  
tBodyAcc.mean...Y          : num  
tBodyAcc.mean...Z          : num  
tBodyAcc.std...X           : num  
tBodyAcc.std...Y           : num  
tBodyAcc.std...Z           : num  
tGravityAcc.mean...X       : num  
tGravityAcc.mean...Y       : num  
tGravityAcc.mean...Z       : num  
tGravityAcc.std...X        : num  
tGravityAcc.std...Y        : num  
tGravityAcc.std...Z        : num  
tBodyAccJerk.mean...X      : num  
tBodyAccJerk.mean...Y      : num  
tBodyAccJerk.mean...Z      : num  
tBodyAccJerk.std...X       : num  
tBodyAccJerk.std...Y       : num  
tBodyAccJerk.std...Z       : num  
tBodyGyro.mean...X         : num  
tBodyGyro.mean...Y         : num  
tBodyGyro.mean...Z         : num  
tBodyGyro.std...X          : num  
tBodyGyro.std...Y          : num  
tBodyGyro.std...Z          : num  
tBodyGyroJerk.mean...X     : num  
tBodyGyroJerk.mean...Y     : num  
tBodyGyroJerk.mean...Z     : num  
tBodyGyroJerk.std...X      : num  
tBodyGyroJerk.std...Y      : num  
tBodyGyroJerk.std...Z      : num  
tBodyAccMag.mean..         : num  
tBodyAccMag.std..          : num  
tGravityAccMag.mean..      : num  
tGravityAccMag.std..       : num  
tBodyAccJerkMag.mean..     : num  
tBodyAccJerkMag.std..      : num  
tBodyGyroMag.mean..        : num  
tBodyGyroMag.std..         : num  
tBodyGyroJerkMag.mean..    : num  
tBodyGyroJerkMag.std..     : num  
fBodyAcc.mean...X          : num  
fBodyAcc.mean...Y          : num  
fBodyAcc.mean...Z          : num  
fBodyAcc.std...X           : num  
fBodyAcc.std...Y           : num  
fBodyAcc.std...Z           : num  
fBodyAccJerk.mean...X      : num  
fBodyAccJerk.mean...Y      : num  
fBodyAccJerk.mean...Z      : num  
fBodyAccJerk.std...X       : num  
fBodyAccJerk.std...Y       : num  
fBodyAccJerk.std...Z       : num  
fBodyGyro.mean...X         : num  
fBodyGyro.mean...Y         : num  
fBodyGyro.mean...Z         : num  
fBodyGyro.std...X          : num  
fBodyGyro.std...Y          : num  
fBodyGyro.std...Z          : num  
fBodyAccMag.mean..         : num  
fBodyAccMag.std..          : num  
fBodyBodyAccJerkMag.mean.. : num  
fBodyBodyAccJerkMag.std..  : num  
fBodyBodyGyroMag.mean..    : num  
fBodyBodyGyroMag.std..     : num  
fBodyBodyGyroJerkMag.mean..: num  
fBodyBodyGyroJerkMag.std.. : num  

## Steps to create the Tidy Dataset 01
-------------------------------------------------------------------
* Step 1: Read the test and training y and X data sets into data frames
* Step 2: combine test and trining into single y and X data frames (one for each) 
* Step 3: Read all feature names(measurement) into a data frame
* Step 4: Extracts only the measurements on the mean and standard deviation for each measurement. 
* Step 5: Read Activity label into a data frame
* Step 6: merge Activity label with combined y dataframe
* Step 7: set column names obtained in step 3 into X dataframe
* Step 8: Combine y and X data frame into a single Tidy Dataset 01
* Step 9: Write into a output file in output/tidy_dataset_01.txt


## Tidy Dataset 02 - Below is the description of all codes used in the Tidy Dataset 02.

subject_id                 : int  - Subject Id
activity_id                : int  - Activity id
name                       : Factor - Activity Nme

##  						 averages by subject_id, activity_id and name
tBodyAcc.mean...X          : num  
tBodyAcc.mean...Y          : num  
tBodyAcc.mean...Z          : num  
tBodyAcc.std...X           : num  
tBodyAcc.std...Y           : num  
tBodyAcc.std...Z           : num  
tGravityAcc.mean...X       : num  
tGravityAcc.mean...Y       : num  
tGravityAcc.mean...Z       : num  
tGravityAcc.std...X        : num  
tGravityAcc.std...Y        : num  
tGravityAcc.std...Z        : num  
tBodyAccJerk.mean...X      : num  
tBodyAccJerk.mean...Y      : num  
tBodyAccJerk.mean...Z      : num  
tBodyAccJerk.std...X       : num  
tBodyAccJerk.std...Y       : num  
tBodyAccJerk.std...Z       : num  
tBodyGyro.mean...X         : num  
tBodyGyro.mean...Y         : num  
tBodyGyro.mean...Z         : num  
tBodyGyro.std...X          : num  
tBodyGyro.std...Y          : num  
tBodyGyro.std...Z          : num  
tBodyGyroJerk.mean...X     : num  
tBodyGyroJerk.mean...Y     : num  
tBodyGyroJerk.mean...Z     : num  
tBodyGyroJerk.std...X      : num  
tBodyGyroJerk.std...Y      : num  
tBodyGyroJerk.std...Z      : num  
tBodyAccMag.mean..         : num  
tBodyAccMag.std..          : num  
tGravityAccMag.mean..      : num  
tGravityAccMag.std..       : num  
tBodyAccJerkMag.mean..     : num  
tBodyAccJerkMag.std..      : num  
tBodyGyroMag.mean..        : num  
tBodyGyroMag.std..         : num  
tBodyGyroJerkMag.mean..    : num  
tBodyGyroJerkMag.std..     : num  
fBodyAcc.mean...X          : num  
fBodyAcc.mean...Y          : num  
fBodyAcc.mean...Z          : num  
fBodyAcc.std...X           : num  
fBodyAcc.std...Y           : num  
fBodyAcc.std...Z           : num  
fBodyAccJerk.mean...X      : num  
fBodyAccJerk.mean...Y      : num  
fBodyAccJerk.mean...Z      : num  
fBodyAccJerk.std...X       : num  
fBodyAccJerk.std...Y       : num  
fBodyAccJerk.std...Z       : num  
fBodyGyro.mean...X         : num  
fBodyGyro.mean...Y         : num  
fBodyGyro.mean...Z         : num  
fBodyGyro.std...X          : num  
fBodyGyro.std...Y          : num  
fBodyGyro.std...Z          : num  
fBodyAccMag.mean..         : num  
fBodyAccMag.std..          : num  
fBodyBodyAccJerkMag.mean.. : num  
fBodyBodyAccJerkMag.std..  : num  
fBodyBodyGyroMag.mean..    : num  
fBodyBodyGyroMag.std..     : num  
fBodyBodyGyroJerkMag.mean..: num  
fBodyBodyGyroJerkMag.std.. : num  

## Steps to create the Tidy Dataset 02
-------------------------------------------------------------------
* Step 1: Read the test and training suject data sets into data frames
* Step 2: combine test and trining subjects into single data frames
* Step 3: combine tidy_dataset_01 and subject data frame
* Step 4: melt the data frame from step 3 on subject_id, activity_id and name and mesurement variables with all mean and std vectors. 
* Step 5: dcast on the subject_id, activity_id and name agianst the mean of all measurement variables to get the result data frame
* Step 6: Write into a output file in output/tidy_dataset_02.txt