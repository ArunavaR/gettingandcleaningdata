run_analysis <- function()
{
  ## First Tidy Data Set
  print("Start: First Tidy Data Set generation")
  ## 1. Merges the training and the test sets to create one data set.
  
  df_ytest <- read.table("./UCI HAR Dataset/test/y_test.txt", header=FALSE)
  df_Xtest <- read.table("./UCI HAR Dataset/test/X_test.txt", header=FALSE)
  
  df_ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt", header=FALSE)
  df_Xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt", header=FALSE)
  
  df_yall <- rbind(df_ytest, df_ytrain)
  df_Xall <- rbind(df_Xtest, df_Xtrain)
  
  ## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
  
  df_features <- read.table("./UCI HAR Dataset/features.txt", header=FALSE)
  
  findex <- df_features[grep("mean\\(\\)|std\\(\\)", df_features$V2), c(1) ] 

  df_Xall <- df_Xall[, findex]
  
  ## 3. Uses descriptive activity names to name the activities in the data set
  
  colnames(df_yall) <- c("activity_id")
  df_yall$id <- seq(1:nrow(df_yall))
  df_activity <- read.table("./UCI HAR Dataset/activity_labels.txt", header=FALSE, col.names = c("id", "name"))
  df_yall <- merge(df_yall, df_activity, by.x="activity_id", by.y="id", all.x=TRUE)
  df_yall <- df_yall[order(df_yall$id),]
  df_yall <- df_yall[, c(1,3)]
  
  ## 4. Appropriately labels the data set with descriptive variable names. 
  cnames <- df_features[findex, c(2) ] 
  colnames(df_Xall) <- cnames
  
  ## Finally - create a single data set
  df_all <- cbind(df_yall, df_Xall)
  
  ## Write output to a file
  if (!file.exists("output")) {
    dir.create("output")
  }
  
  write.table(df_all, file="./output/tidy_dataset_01.txt")
  
  print("Complete: First Tidy Data Set generation, file loction is at ./output/tidy_dataset_01.txt")
  
  ## Second Tidy Data Set
  
  print("Start: Second Tidy Data Set generation")
  
  df_sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", header=FALSE, col.names=c("subject_id"))
  df_sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", header=FALSE, col.names=c("subject_id"))
  df_sub_all <- rbind(df_sub_test, df_sub_train)
  
  df_all <- cbind(df_sub_all, df_all)
  
  ## average of each variable for each activity and each subject
  
  melted_data <- melt(df_all, id=c(1,2,3), measure.vars=c(c(4:ncol(df_all))))
  
  df_mean_all <- dcast(mx, subject_id + activity_id + name ~ variable, mean)
  
  ## Write output to a file
  write.table(df_mean_all, file="./output/tidy_dataset_02.txt")
  
  print("Complete: Second Tidy Data Set generation, file loction is at ./output/tidy_dataset_02.txt")
  
} 
