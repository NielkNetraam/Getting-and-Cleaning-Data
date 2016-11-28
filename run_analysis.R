library("dplyr")
## download and unzip project data is not already in the working directory
if (!file.exists("UCI HAR Dataset")) {
    print("downloading zipfile")
    temp <- tempfile()
    download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp, method = "curl")

    print("unzip downloaded file")
    unzip(temp)
    unlink(temp)
}

## read activity_labels and rename variables
print("reading activity_labels")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(activity_labels) <- c("label", "activity")

## read features and rename variables  
print("reading features")
features <- read.table("UCI HAR Dataset/features.txt")
names(features) <- c("label", "feature")

## function to read a set of data, rename variables, transforming activity labels and merge it to one dataset
read_set <- function(kind, features, activity_labels) {
    dataset <- read.table(paste0("UCI HAR Dataset/", kind, "/X_", kind, ".txt"))
    label   <- read.table(paste0("UCI HAR Dataset/", kind, "/y_", kind, ".txt"))
    subject <- read.table(paste0("UCI HAR Dataset/", kind, "/Subject_", kind, ".txt"))
    
    ## select only the features for mean and standard deviation variables and rename 
    localfeatures <- features %>% filter(grepl("(mean\\(\\))|(std\\(\\))",feature))      
    names(dataset) <- sub("V","", names(dataset))
    dataset <- dataset %>% select(localfeatures$label)

    ## rename variables 
    names(dataset) <- tolower(gsub("-","",sub("\\(\\)", "", localfeatures$feature)))
    names(label) <- "label"
    names(subject) <- "subject"
    
    ## transform label into activity
    activity <- label %>% mutate(activity = activity_labels[label$label,"activity"]) %>% select(activity)
    
    bind_cols(activity, subject, dataset)
}

## read test set, test label and test subject into one dataset
print("reading test data")
testset <- read_set("test", features, activity_labels)

## read training set, training label and training subject into one dataset
print("reading training data")
trainset <- read_set("train", features, activity_labels)

## binding test and training set to one data set 
print("binding test and training data")
dataset <- bind_rows(testset, trainset)

## create second dataset with average of each variable for each activity and each subject
print("create tidy data set")
tidydataset <- dataset %>% group_by(activity, subject) %>% summarize_each(funs(mean))

print("writing tidy data set")
write.table(tidydataset, "tidydataset.txt", row.names = FALSE)
print("finished")
