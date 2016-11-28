# Getting and Cleaning Data Course Project

The project contains all the file for the "Peer-graded Assignment: Getting and Cleaning Data Course Project"
It demonstrates my ability to collect, work with, and clean a data set. 

The data used for this project is data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The project includes the following files:
* README.md: explaining all the files
* CodeBook.md: describes all the variables and summaries calculated, along with units, and any other relevant information.
* run_analysis.R: script that records all the steps that are performed to generated the tidy file 

### run_analysis.R
run_analysis.R records all the steps to generate a tidy file with the average of each variable for each activity and each subject. 

the script consist of the following parts:
* download and unzip the source file, only if it not exists in the working directory
* read activity_labels 
* read features
* read_set() function to read a set of data, rename variables, transforming activity labels and merge it into one dataset
* read test data with read_set()
* read training data with read_set()
* binding test and training datato one data set
* creates a tidy data set with the average of each variable for each activity and each subject
* writing the tidy dataset to the file tidydataset.txt

