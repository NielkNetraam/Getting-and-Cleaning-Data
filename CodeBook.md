#Feature Selection 
The basis for the features in the tidy file come from the accelerometer and gyroscope 3-axial raw signals tacc[xyz] and tgyro[xyz]. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tbodyacc[xyz] and tgravityacc[xyz]) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain jerk signals (tbodyaccjerk[xyz] and tbodygyrojerk[xyz]). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tbodyaccmag, tgravityaccmag, tbodyaccjerkmag, tbodygyromag, tbodygyrojerkmag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fbodyacc[xyz], fbodyaccjerk[xyz], fbodygyro[xyz], fbodyaccjerkmag, fbodygyromag, fbodygyrojerkmag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'[xyz]' is used to denote 3-axial signals in the X, Y and Z directions.

* tbodyacc[xyz]
* tgravityacc[xyz]
* tbodyaccjerk[xyz]
* tbodygyro[xyz]
* tbodygyrojerk[xyz]
* tbodyaccmag
* tgravityaccmag
* tbodyaccjerkmag
* tbodygyromag
* tbodygyrojerkmag
* fbodyacc[xyz]
* fbodyaccjerk[xyz]
* fbodygyro[xyz]
* fbodyaccmag
* fbodyaccjerkmag
* fbodygyromag
* fbodygyrojerkmag


The set of variables that were estimated from these signals are: 
* mean: mean value
* std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravitymean
* tbodyaccmean
* tbodyaccjerkmean
* tbodygyromean
* tbodygyrojerkmean

Subsequently, the average of each variable is calculated for each activity and each subject

##Features:
* activity:
    * describes the activty that is performed.
    * type: factor (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
* subject: 
    * identifies the subject who performed the activity. Its range is from 1 to 30. 
    * type: Integer
* *average variables*:
    * average for the variable for the activity and subject
    * type: Numeric.
    * list of variables: 
        * tbodyaccmeanx
        * tbodyaccmeany
        * tbodyaccmeanz
        * tbodyaccstdx
        * tbodyaccstdytbodyaccstdz
        * tgravityaccmeanx
        * tgravityaccmeany
        * tgravityaccmeanz
        * tgravityaccstdx
        * tgravityaccstdy
        * tgravityaccstdz
        * tbodyaccjerkmeanx
        * tbodyaccjerkmeany 
        * tbodyaccjerkmeanz
        * tbodyaccjerkstdx
        * tbodyaccjerkstdy
        * tbodyaccjerkstdz
        * tbodygyromeanx
        * tbodygyromeany
        * tbodygyromeanz
        * tbodygyrostdx
        * tbodygyrostdy
        * tbodygyrostdz
        * tbodygyrojerkmeanx
        * tbodygyrojerkmeany
        * tbodygyrojerkmeanz
        * tbodygyrojerkstdx
        * tbodygyrojerkstdy
        * tbodygyrojerkstdz
        * tbodyaccmagmean
        * tbodyaccmagstd
        * tgravityaccmagmean
        * tgravityaccmagstd
        * tbodyaccjerkmagmean
        * tbodyaccjerkmagstd
        * tbodygyromagmean
        * tbodygyromagstd
        * tbodygyrojerkmagmean
        * tbodygyrojerkmagstd
        * fbodyaccmeanx
        * fbodyaccmeany
        * fbodyaccmeanz
        * fbodyaccstdx
        * fbodyaccstdy
        * fbodyaccstdz
        * fbodyaccjerkmeanx
        * fbodyaccjerkmeany
        * fbodyaccjerkmeanz
        * fbodyaccjerkstdx
        * fbodyaccjerkstdy
        * fbodyaccjerkstdz
        * fbodygyromeanx
        * fbodygyromeany     
        * fbodygyromeanz
        * fbodygyrostdx
        * fbodygyrostdy
        * fbodygyrostdz          
        * fbodyaccmagmean
        * fbodyaccmagstd
        * fbodybodyaccjerkmagmean
        * fbodybodyaccjerkmagstd
        * fbodybodygyromagmean
        * fbodybodygyromagstd
        * fbodybodygyrojerkmagmean
        * fbodybodygyrojerkmagstd
