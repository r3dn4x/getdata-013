#Code book

This code book describes the variables that were selected for the final tidy dataset and how they were originally calculated.

#####Subjects

There are a total of 30 subjects each with a unique integer identifier (1-30). This includes 21 subjects from the training dataset and 9 subjects from the test dataset.

#####Activity

There are a total of six activitiess measured in the original datasets. These were coded numerically and in the final _tidy_dataset.txt_ these were replaced by their corresponding label names:

  1. walking
  2. walking upstairs
  3. walking downstairs
  4. sitting
  5. standing
  6. laying

#####Feature selection

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
  
The set of variables that were estimated from these signals are: 

  Mean: Mean value  
  Std: Standard deviation
  
The corresponding variable names are:

  tBodyAcc Mean X  
  tBodyAcc Mean Y  
  tBodyAcc Mean Z  
  tBodyAcc Std X  
  tBodyAcc Std Y  
  tBodyAcc Std Z  
  tGravityAcc Mean X  
  tGravityAcc Mean Y  
  tGravityAcc Mean Z  
  tGravityAcc Std X  
  tGravityAcc Std Y  
  tGravityAcc Std Z  
  tBodyAccJerk Mean X  
  tBodyAccJerk Mean Y  
  tBodyAccJerk Mean Z  
  tBodyAccJerk Std X  
  tBodyAccJerk Std Y  
  tBodyAccJerk Std Z  
  tBodyGyro Mean X  
  tBodyGyro Mean Y  
  tBodyGyro Mean Z  
  tBodyGyro Std X  
  tBodyGyro Std Y  
  tBodyGyro Std Z  
  tBodyGyroJerk Mean X  
  tBodyGyroJerk Mean Y  
  tBodyGyroJerk Mean Z  
  tBodyGyroJerk Std X  
  tBodyGyroJerk Std Y   
  tBodyGyroJerk Std Z  
  tBodyAccMag Mean  
  tBodyAccMag Std  
  tGravityAccMag Mean  
  tGravityAccMag Std  
  tBodyAccJerkMag Mean  
  tBodyAccJerkMag Std  
  tBodyGyroMag Mean  
  tBodyGyroMag Std  
  tBodyGyroJerkMag Mean    
  tBodyGyroJerkMag Std  
  fBodyAcc Mean X  
  fBodyAcc Mean Y  
  fBodyAcc Mean Z  
  fBodyAcc Std X  
  fBodyAcc Std Y  
  fBodyAcc Std Z  
  fBodyAccJerk Mean X  
  fBodyAccJerk Mean Y  
  fBodyAccJerk Mean Z  
  fBodyAccJerk Std X  
  fBodyAccJerk Std Y  
  fBodyAccJerk Std Z  
  fBodyGyro Mean X  
  fBodyGyro Mean Y  
  fBodyGyro Mean Z  
  fBodyGyro Std X  
  fBodyGyro Std Y  
  fBodyGyro Std Z  
  fBodyAccMag Mean  
  fBodyAccMag Std  
  fBodyBodyAccJerkMag Mean  
  fBodyBodyAccJerkMag Std  
  fBodyBodyGyroMag Mean  
  fBodyBodyGyroMag Std  
  fBodyBodyGyroJerkMag Mean  
  fBodyBodyGyroJerkMag Std  

The mean of these variables were then calculated for each subject and each activity type. These are the values in the _tidy_dataset.txt_ produced by the _run_analysis.R_ script in this repo.
  


