# getdata-013
#### Course project for Coursera's Getting and Cleaning Data class

The goal of the project was to merge, select and clean up data from two different datasets (split into training and test sets) from Samsung Galaxy S accelometer and gyroscope measurements [1].

**The asssignment was to create an R script that peforms the following tasks:**

  1. Merges the training and the test sets to create one data set.
  2. Extracts only the measurements on the mean and standard deviation for each measurement. 
  3. Uses descriptive activity names to name the activities in the data set.
  4. Appropriately labels the data set with descriptive variable names. 
  5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  
**The _run_analysis.R_ script in this repo takes the following approach:**

  1. Assumes that all files contained within the unzipped *UCI HAR Dataset* folder are in the current working directory. It reads the text files for subject id, activity label and measurement data from the training and test folders. It then binds each of these files separately for the two datasets.
  2. It selects only those variables of interest by searching the features labels for those that contain "mean" and "std." This is then used to subset from the merged datasets containing the measured variables.
  3. Adds column names to the subject id, activity and data sets and then merges them into one final dataset.
  4. Cleans up the column names by removing non-alphabetic characters in the features variables names and replaces the activity labels (coded by numbers) with their corresponding activity (e.g., standing, walking, etc).
  5. Finally, creates a "tidy" dataset by collapsing across subjects and activities and displaying the mean for the various measurements. The text table is written as *tidy_dataset.txt.*

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
