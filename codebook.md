Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tbodyacc-xyz
tgravityacc-xyz
tbodyaccJerk-xyz
tbodygyro-xyz
tbodygyrojerk-xyz
tbodyaccmag
tgravityaccmag
tbodyaccJerkmag
tbodygyromag
tbodygyrojerkmag
fbodyacc-xyz
fbodyaccjerk-xyz
fbodygyro-xyz
fbodyaccmag
fbodyaccJerkmag
fbodygyromag
fbodygyroJerkmag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravitymean
tbodyaccmean
tbodyaccjerkmean
tbodygyromean
tbodygyrojerkmean

The complete list of variables of each feature vector is below

subjectid
activity 
tbodyaccmeanx 
tbodyaccmeany 
tbodyaccmeanz 
tbodyaccstdx 
tbodyaccstdy 
tbodyaccstdz 
tgravityaccmeanx 
tgravityaccmeany 
tgravityaccmeanz 
tgravityaccstdx 
tgravityaccstdy 
tgravityaccstdz 
tbodyaccjerkmeanx 
tbodyaccjerkmeany 
tbodyaccjerkmeanz 
tbodyaccjerkstdx 
tbodyaccjerkstdy 
tbodyaccjerkstdz 
tbodygyromeanx 
tbodygyromeany 
tbodygyromeanz 
tbodygyrostdx 
tbodygyrostdy 
tbodygyrostdz 
tbodygyrojerkmeanx 
tbodygyrojerkmeany 
tbodygyrojerkmeanz 
tbodygyrojerkstdx 
tbodygyrojerkstdy 
tbodygyrojerkstdz 
tbodyaccmagmean 
tbodyaccmagstd 
tgravityaccmagmean 
tgravityaccmagstd 
tbodyaccjerkmagmean 
tbodyaccjerkmagstd 
tbodygyromagmean 
tbodygyromagstd 
tbodygyrojerkmagmean 
tbodygyrojerkmagstd 
fbodyaccmeanx 
fbodyaccmeany 
fbodyaccmeanz 
fbodyaccstdx 
fbodyaccstdy 
fbodyaccstdz 
fbodyaccmeanfreqx 
fbodyaccmeanfreqy 
fbodyaccmeanfreqz 
fbodyaccjerkmeanx 
fbodyaccjerkmeany 
fbodyaccjerkmeanz 
fbodyaccjerkstdx 
fbodyaccjerkstdy 
fbodyaccjerkstdz 
fbodyaccjerkmeanfreqx 
fbodyaccjerkmeanfreqy 
fbodyaccjerkmeanfreqz 
fbodygyromeanx 
fbodygyromeany 
fbodygyromeanz 
fbodygyrostdx 
fbodygyrostdy 
fbodygyrostdz 
fbodygyromeanfreqx 
fbodygyromeanfreqy 
fbodygyromeanfreqz 
fbodyaccmagmean 
fbodyaccmagstd 
fbodyaccmagmeanfreq 
fbodybodyaccjerkmagmean 
fbodybodyaccjerkmagstd 
fbodybodyaccjerkmagmeanfreq 
fbodybodygyromagmean 
fbodybodygyromagstd 
fbodybodygyromagmeanfreq 
fbodybodygyrojerkmagmean 
fbodybodygyrojerkmagstd 
fbodybodygyrojerkmagmeanfreq 
angletbodyaccmeangravity 
angletbodyaccjerkmeangravitymean 
angletbodygyromeangravitymean 
angletbodygyrojerkmeangravitymean 
anglexgravitymean 
angleygravitymean 
anglezgravitymean
