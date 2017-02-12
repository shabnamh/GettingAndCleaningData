CodeBook
========================================================
This codebook describes the variables, data and any transformations performed to clean up the data set to create tidydata data set. The list of the variables in tidydata data set can be found at the end.

The data source
--------------------------------------------------------
* Original data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data set information
--------------------------------------------------------
The experiments was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the wrist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers data was used to generate the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the measured variablesin time and frequency domain.

The dataset
-------------------------------------------------------
The dataset includes the following files:

*'README.txt'

*'features_info.txt': Shows information about the variables used on the feature vector.

*'features.txt': List of all features.

*'activity_labels.txt': Links the class labels with their activity name.

*'train/X_train.txt': Training set.

*'train/y_train.txt': Training labels.

*'test/X_test.txt': Test set.

*'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent.

'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.

'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.

'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.

Note: Each feature vector is a row on the text file

Transformation steps in run_analysis script
--------------------------------------------------------
1. load both train and test data from the 'UCI HAR Dataset' folder 
2. load activity labels for both data sets and the features
3. Extract the mean and standard deviation columns with their data after changing the column names in the merged data using the variable names in features
4. Change the activity names and variable labels to descriptive names
5. Merge the data
6. create the new data set

The 81 Variables in the tidydata data set
--------------------------------------------------------
TimeBodyAccelerometerMean()-X    
TimeBodyAccelerometerMean()-Y	
TimeBodyAccelerometerMean()-Z	
TimeBodyAccelerometerSTD()-X	
TimeBodyAccelerometerSTD()-Y	
TimeBodyAccelerometerSTD()-Z	
TimeGravityAccelerometerMean()-X	
TimeGravityAccelerometerMean()-Y	
TimeGravityAccelerometerMean()-Z	
TimeGravityAccelerometerSTD()-X 
TimeGravityAccelerometerSTD()-Y	 
TimeGravityAccelerometerSTD()-Z	
TimeBodyAccelerometerJerkMean()-X	
TimeBodyAccelerometerJerkMean()-Y	
TimeBodyAccelerometerJerkMean()-Z	
TimeBodyAccelerometerJerkSTD()-X	
TimeBodyAccelerometerJerkSTD()-Y	
TimeBodyAccelerometerJerkSTD()-Z	
TimeBodyGyroscopeMean()-X	
TimeBodyGyroscopeMean()-Y	
TimeBodyGyroscopeMean()-Z	
TimeBodyGyroscopeSTD()-X	
TimeBodyGyroscopeSTD()-Y	
TimeBodyGyroscopeSTD()-Z	
TimeBodyGyroscopeJerkMean()-X	
TimeBodyGyroscopeJerkMean()-Y	
TimeBodyGyroscopeJerkMean()-Z	
TimeBodyGyroscopeJerkSTD()-X	
TimeBodyGyroscopeJerkSTD()-Y	
TimeBodyGyroscopeJerkSTD()-Z	
TimeBodyAccelerometerMagnitudeMean()	
TimeBodyAccelerometerMagnitudeSTD()	 
TimeGravityAccelerometerMagnitudeMean()   
TimeGravityAccelerometerMagnitudeSTD()   	
TimeBodyAccelerometerJerkMagnitudeMean()    	
TimeBodyAccelerometerJerkMagnitudeSTD()	    
TimeBodyGyroscopeMagnitudeMean()     	
TimeBodyGyroscopeMagnitudeSTD()	    
TimeBodyGyroscopeJerkMagnitudeMean()    	
TimeBodyGyroscopeJerkMagnitudeSTD()	    
FrequencyBodyAccelerometerMean()-X	
FrequencyBodyAccelerometerMean()-Y	
FrequencyBodyAccelerometerMean()-Z	
FrequencyBodyAccelerometerSTD()-X	
FrequencyBodyAccelerometerSTD()-Y	
FrequencyBodyAccelerometerSTD()-Z	
FrequencyBodyAccelerometerMeanFreq()-X	
FrequencyBodyAccelerometerMeanFreq()-Y	
FrequencyBodyAccelerometerMeanFreq()-Z	
FrequencyBodyAccelerometerJerkMean()-X	
FrequencyBodyAccelerometerJerkMean()-Y	
FrequencyBodyAccelerometerJerkMean()-Z	
FrequencyBodyAccelerometerJerkSTD()-X	
FrequencyBodyAccelerometerJerkSTD()-Y	
FrequencyBodyAccelerometerJerkSTD()-Z	
FrequencyBodyAccelerometerJerkMeanFreq()-X	
FrequencyBodyAccelerometerJerkMeanFreq()-Y	
FrequencyBodyAccelerometerJerkMeanFreq()-Z	
FrequencyBodyGyroscopeMean()-X	
FrequencyBodyGyroscopeMean()-Y	
FrequencyBodyGyroscopeMean()-Z	
FrequencyBodyGyroscopeSTD()-X	
FrequencyBodyGyroscopeSTD()-Y	
FrequencyBodyGyroscopeSTD()-Z	
FrequencyBodyGyroscopeMeanFreq()-X	
FrequencyBodyGyroscopeMeanFreq()-Y	
FrequencyBodyGyroscopeMeanFreq()-Z	
FrequencyBodyAccelerometerMagnitudeMean()	
FrequencyBodyAccelerometerMagnitudeSTD()	
FrequencyBodyAccelerometerMagnitudeMeanFreq()	
FrequencyBodyBodyAccelerometerJerkMagnitudeMean()	
FrequencyBodyBodyAccelerometerJerkMagnitudeSTD()	
FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq()	
FrequencyBodyBodyGyroscopeMagnitudeMean()	
FrequencyBodyBodyGyroscopeMagnitudeSTD()	
FrequencyBodyBodyGyroscopeMagnitudeMeanFreq()	
FrequencyBodyBodyGyroscopeJerkMagnitudeMean()	
FrequencyBodyBodyGyroscopeJerkMagnitudeSTD()	
FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq()
