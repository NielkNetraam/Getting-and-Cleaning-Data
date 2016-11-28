#Feature Selection 
The basis for the features in the tidy file come from the accelerometerelerometer and gyroscopescope 3-axial raw signals taccelerometer[xyz] and tgyroscope[xyz]. These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the accelerometereleration signal was then separated into body and gravity accelerometereleration signals (timebodyaccelerometer[xyz] and tgravityaccelerometer[xyz]) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear accelerometereleration and angular velocity were derived in time to obtain jerk signals (timebodyaccelerometerjerk[xyz] and timebodygyroscopejerk[xyz]). Also the magnitudenitude of these three-dimensional signals were calculated using the Euclidean norm (timebodyaccelerometermagnitude, tgravityaccelerometermagnitude, timebodyaccelerometerjerkmagnitude, timebodygyroscopemagnitude, timebodygyroscopejerkmagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequencybodyaccelerometer[xyz], frequencybodyaccelerometerjerk[xyz], frequencybodygyroscope[xyz], frequencybodyaccelerometerjerkmagnitude, frequencybodygyroscopemagnitude, frequencybodygyroscopejerkmagnitude. 

These signals were used to estimate variables of the feature vector for each pattern:  
'[xyz]' is used to denote 3-axial signals in the X, Y and Z directions.

* timebodyaccelerometer[xyz]
* tgravityaccelerometer[xyz]
* timebodyaccelerometerjerk[xyz]
* timebodygyroscope[xyz]
* timebodygyroscopejerk[xyz]
* timebodyaccelerometermagnitude
* tgravityaccelerometermagnitude
* timebodyaccelerometerjerkmagnitude
* timebodygyroscopemagnitude
* timebodygyroscopejerkmagnitude
* frequencybodyaccelerometer[xyz]
* frequencybodyaccelerometerjerk[xyz]
* frequencybodygyroscope[xyz]
* frequencybodyaccelerometermagnitude
* frequencybodyaccelerometerjerkmagnitude
* frequencybodygyroscopemagnitude
* frequencybodygyroscopejerkmagnitude


The set of variables that were estimated from these signals are: 
* mean: mean value
* std: Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:
* gravitymean
* timebodyaccelerometermean
* timebodyaccelerometerjerkmean
* timebodygyroscopemean
* timebodygyroscopejerkmean

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
        * timebodyaccelerometermeanx
        * timebodyaccelerometermeany
        * timebodyaccelerometermeanz
        * timebodyaccelerometerstdx
        * timebodyaccelerometerstdytimebodyaccelerometerstdz
        * tgravityaccelerometermeanx
        * tgravityaccelerometermeany
        * tgravityaccelerometermeanz
        * tgravityaccelerometerstdx
        * tgravityaccelerometerstdy
        * tgravityaccelerometerstdz
        * timebodyaccelerometerjerkmeanx
        * timebodyaccelerometerjerkmeany 
        * timebodyaccelerometerjerkmeanz
        * timebodyaccelerometerjerkstdx
        * timebodyaccelerometerjerkstdy
        * timebodyaccelerometerjerkstdz
        * timebodygyroscopemeanx
        * timebodygyroscopemeany
        * timebodygyroscopemeanz
        * timebodygyroscopestdx
        * timebodygyroscopestdy
        * timebodygyroscopestdz
        * timebodygyroscopejerkmeanx
        * timebodygyroscopejerkmeany
        * timebodygyroscopejerkmeanz
        * timebodygyroscopejerkstdx
        * timebodygyroscopejerkstdy
        * timebodygyroscopejerkstdz
        * timebodyaccelerometermagnitudemean
        * timebodyaccelerometermagnitudestd
        * tgravityaccelerometermagnitudemean
        * tgravityaccelerometermagnitudestd
        * timebodyaccelerometerjerkmagnitudemean
        * timebodyaccelerometerjerkmagnitudestd
        * timebodygyroscopemagnitudemean
        * timebodygyroscopemagnitudestd
        * timebodygyroscopejerkmagnitudemean
        * timebodygyroscopejerkmagnitudestd
        * frequencybodyaccelerometermeanx
        * frequencybodyaccelerometermeany
        * frequencybodyaccelerometermeanz
        * frequencybodyaccelerometerstdx
        * frequencybodyaccelerometerstdy
        * frequencybodyaccelerometerstdz
        * frequencybodyaccelerometerjerkmeanx
        * frequencybodyaccelerometerjerkmeany
        * frequencybodyaccelerometerjerkmeanz
        * frequencybodyaccelerometerjerkstdx
        * frequencybodyaccelerometerjerkstdy
        * frequencybodyaccelerometerjerkstdz
        * frequencybodygyroscopemeanx
        * frequencybodygyroscopemeany     
        * frequencybodygyroscopemeanz
        * frequencybodygyroscopestdx
        * frequencybodygyroscopestdy
        * frequencybodygyroscopestdz          
        * frequencybodyaccelerometermagnitudemean
        * frequencybodyaccelerometermagnitudestd
        * frequencybodybodyaccelerometerjerkmagnitudemean
        * frequencybodybodyaccelerometerjerkmagnitudestd
        * frequencybodybodygyroscopemagnitudemean
        * frequencybodybodygyroscopemagnitudestd
        * frequencybodybodygyroscopejerkmagnitudemean
        * frequencybodybodygyroscopejerkmagnitudestd
