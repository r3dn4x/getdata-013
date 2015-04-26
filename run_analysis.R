#Getting and Cleaning Data course project

#Assuming the Samsung data is in the current working directory - this means 
#all the unzipped files from the "UCI HAR Dataset" folder are in the wd. 
#Otherwise activate the following code: 

        #setwd("./UCI HAR Dataset")

#Read the necessary files from the training and test datasets.

        test_id <- read.table("test/subject_test.txt")
        test_activity <- read.table("test/y_test.txt")
        test_data <- read.table("test/X_test.txt")
        
        train_id <- read.table("train/subject_train.txt")
        train_activity <- read.table("train/y_train.txt")
        train_data <- read.table("train/X_train.txt")
        
#Combine the test and training datasets, subject ids and activity labels.
        
        subject_id <- rbind(test_id, train_id)
        activity <- rbind(test_activity, train_activity)
        data <- rbind(test_data, train_data)
        
#We're only intersted in measures of mean and standard deviation. So we create a
#logical vector to subset the combined dataset.
        
        features_labels <- read.table("features.txt")
        sub <- grepl("mean\\(\\)|std\\(\\)", features_labels[,2])
        data_sub <- data[,sub]       
        
#Add the appropriate column names and merge the subsetted data with subject ids
#and activity labels.
        
        colnames(subject_id) <- "subject"
        colnames(activity) <- "activity"
        colnames(data_sub) <- features_labels[sub,2]
        
        dataset <- cbind(subject_id, activity, data_sub)
        
#Clean up the column names and make sure they only have alphabetic characters.
#Also relabel the activity column with the corresponding activity labels
#(in lowercase letters).
        
        names(dataset) <- gsub("mean", "Mean", names(dataset))
        names(dataset) <- gsub("std", "Std", names(dataset))
        names(dataset) <- gsub("\\(|\\)", "", names(dataset))
        names(dataset) <- gsub("\\-", " ", names(dataset))
        
        activity_labels <- as.character(read.table("activity_labels.txt")[,2])
        temp <- mapvalues(dataset[,2], as.character(sort(unique(dataset[,2]))),
                  activity_labels)
        dataset[,2] <- gsub("_", "", tolower(temp))

#Create a tidy dataset with mean for all variables according to subject and
#activity levels. Since aggregtae will try to find means for subjects and
#activity labels (impossible), those columns are subsetted out from the
#object (first) argument.
        
        tidy_dataset <- aggregate(dataset[,-c(1,2)],
                           by = list(subject = dataset$subject,
                                     activity = dataset$activity),
                                  mean)
      
#Save the tidy dataset as a table.
        
        write.table(tidy_dataset, "tidy_dataset.txt", row.name=FALSE)
        




