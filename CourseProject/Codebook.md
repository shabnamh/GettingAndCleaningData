Code Book
========================================================
This code book describes the variables, data and any transformations performed to clean up the data set to create tidydata data set. The list of the variables in tidydata data set can be found at the end.

The data source
--------------------------------------------------------
* Original data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Original description of the data: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Study design
--------------------------------------------------------
The experiments was carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the wrist. Using its embedded accelerometer and gyroscope, 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments were video-recorded to label the data manually. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers data was used to generate the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force was assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of 561 features was obtained by calculating variables from the measured variables in time and frequency domain.

The data set
-------------------------------------------------------
The data set includes the following files:

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

Steps to create the tidy data set
--------------------------------------------------------
1. Load both train and test data files from the 'UCI HAR Dataset' folder. 
2. Load activity labels for both data sets and the features.
3. Change column names in the merged data to the variable names in features.
4. Extract mean and standard deviation columns with their data.
5. Change the activity names and variable labels to descriptive names.
5. Merge the Subject and Activities columns with the data set.  
7. Create a new data set called tidydata that contains for each subject and activity the mean of each measurement.


The tidydata data set
--------------------------------------------------------

### Subject and Activity

Subjects are identified by number ID from 1 to 30.

The activities are:

    1. Walking
    2. Walking_Upstairs
    3. Walking_Downstairs
    4. Sitting
    5. Standing
    6. Laying

### Variables 

The tidydata data set contains 81 variables.

#### In time domain:    

    Mean of the body acceleration along the axes:
        TimeBodyAccelerometerMean()-X    
        TimeBodyAccelerometerMean()-Y	
        TimeBodyAccelerometerMean()-Z	
    Standard deviation of the body acceleration in time domain along the axes:
        TimeBodyAccelerometerSTD()-X	
        TimeBodyAccelerometerSTD()-Y	
        TimeBodyAccelerometerSTD()-Z
        
    Mean of the gravity acceleration in time domain along the axes:   
        TimeGravityAccelerometerMean()-X	
        TimeGravityAccelerometerMean()-Y	
        TimeGravityAccelerometerMean()-Z	
    Standard deviation of the gravity acceleration in time domain along the axes:    
        TimeGravityAccelerometerSTD()-X 
        TimeGravityAccelerometerSTD()-Y	 
        TimeGravityAccelerometerSTD()-Z	
    
    Mean of the body acceleration jerk (rate of change of acceleration)  along the axes:   
        TimeBodyAccelerometerJerkMean()-X	
        TimeBodyAccelerometerJerkMean()-Y	
        TimeBodyAccelerometerJerkMean()-Z
    Standard deviation of the body acceleration jerk (rate of change of acceleration)  along the axes:        
        TimeBodyAccelerometerJerkSTD()-X	
        TimeBodyAccelerometerJerkSTD()-Y	
        TimeBodyAccelerometerJerkSTD()-Z	

    Mean of the body gyroscope measurement (rotational motion)  along the axes:
        TimeBodyGyroscopeMean()-X	
        TimeBodyGyroscopeMean()-Y	
        TimeBodyGyroscopeMean()-Z	
    Standard deviation of the body gyroscope measurement (rotational motion)  along the axes:
        TimeBodyGyroscopeSTD()-X	
        TimeBodyGyroscopeSTD()-Y	
        TimeBodyGyroscopeSTD()-Z	
        
    Mean of the body gyroscope measurement jerk  along the axes:  
        TimeBodyGyroscopeJerkMean()-X	
        TimeBodyGyroscopeJerkMean()-Y	
        TimeBodyGyroscopeJerkMean()-Z	
    Standard deviation of the body gyroscope measurement jerk  along the axes:   
        TimeBodyGyroscopeJerkSTD()-X	
        TimeBodyGyroscopeJerkSTD()-Y	
        TimeBodyGyroscopeJerkSTD()-Z
        
    Mean of the magnitude of the body acceleration:    
        TimeBodyAccelerometerMagnitudeMean()	
    Standard deviation of the magnitude of the body acceleration:  
        TimeBodyAccelerometerMagnitudeSTD()	 

    Mean of the magnitude of the gravity acceleration: 
        TimeGravityAccelerometerMagnitudeMean()   
    Standard deviation of the magnitude of the gravity acceleration: 
        TimeGravityAccelerometerMagnitudeSTD()   
        
    Mean of the magnitude of the body acceleration jerk:     
        TimeBodyAccelerometerJerkMagnitudeMean()    	
    Standard deviation of the magnitude of the body acceleration jerk: 
        TimeBodyAccelerometerJerkMagnitudeSTD()	   
        
    Mean of the magnitude of the body gyroscope:        
        TimeBodyGyroscopeMagnitudeMean()     	
    Standard deviation of the magnitude of the body gyroscope:         
        TimeBodyGyroscopeMagnitudeSTD()	 
    
    Mean of the magnitude of the body gyroscope jerk:  
        TimeBodyGyroscopeJerkMagnitudeMean()    	
    Standard deviation of the magnitude of the body gyroscope jerk:      
        TimeBodyGyroscopeJerkMagnitudeSTD()	
        

#### In frequency domain:

    Mean of the body acceleration along the axes:
        FrequencyBodyAccelerometerMean()-X	
        FrequencyBodyAccelerometerMean()-Y	
        FrequencyBodyAccelerometerMean()-Z	
    Standard deviation of the body acceleration along the axes:    
        FrequencyBodyAccelerometerSTD()-X	
        FrequencyBodyAccelerometerSTD()-Y	
        FrequencyBodyAccelerometerSTD()-Z	
    Mean of the frequency of the body acceleration along the axes: 
        FrequencyBodyAccelerometerMeanFreq()-X	
        FrequencyBodyAccelerometerMeanFreq()-Y	
        FrequencyBodyAccelerometerMeanFreq()-Z	
    
    Mean of the body acceleration jerk along the axes:
        FrequencyBodyAccelerometerJerkMean()-X	
        FrequencyBodyAccelerometerJerkMean()-Y	
        FrequencyBodyAccelerometerJerkMean()-Z	
    Standard deviation of the body acceleration jerk along the axes:    
        FrequencyBodyAccelerometerJerkSTD()-X	
        FrequencyBodyAccelerometerJerkSTD()-Y	
        FrequencyBodyAccelerometerJerkSTD()-Z
    Mean of the frequency of the body acceleration jerk along the axes:    
        FrequencyBodyAccelerometerJerkMeanFreq()-X	    
        FrequencyBodyAccelerometerJerkMeanFreq()-Y	
        FrequencyBodyAccelerometerJerkMeanFreq()-Z	
        
    Mean of the gyroscope measurement along the axes:     
        FrequencyBodyGyroscopeMean()-X	
        FrequencyBodyGyroscopeMean()-Y	
        FrequencyBodyGyroscopeMean()-Z	
    Standard deviation of the gyroscope measurement along the axes:         
        FrequencyBodyGyroscopeSTD()-X	
        FrequencyBodyGyroscopeSTD()-Y	
        FrequencyBodyGyroscopeSTD()-Z	
    Mean of the frequency of the gyroscope measurement along the axes:    
        FrequencyBodyGyroscopeMeanFreq()-X	
        FrequencyBodyGyroscopeMeanFreq()-Y	
        FrequencyBodyGyroscopeMeanFreq()-Z	

    Mean of the magnitude of the body acceleration:
        FrequencyBodyAccelerometerMagnitudeMean()	
    Standard deviation of the magnitude of the body acceleration:    
        FrequencyBodyAccelerometerMagnitudeSTD()	
    Mean of the frequency of the magnitude of the body acceleration:        
        FrequencyBodyAccelerometerMagnitudeMeanFreq()	
    
    Mean of the magnitude of the body acceleration jerk: 
        FrequencyBodyBodyAccelerometerJerkMagnitudeMean()	
    Standard deviation of the magnitude of the body acceleration jerk:     
        FrequencyBodyBodyAccelerometerJerkMagnitudeSTD()
    Mean of the frequency of the magnitude of the body acceleration jerk:     
        FrequencyBodyBodyAccelerometerJerkMagnitudeMeanFreq()
        
    Mean of the magnitude of the body gyroscope measurement:    
        FrequencyBodyBodyGyroscopeMagnitudeMean()
    Standard deviation of the magnitude of the body gyroscope measurement:     
        FrequencyBodyBodyGyroscopeMagnitudeSTD()	
    Mean of the frequency of the magnitude of the body gyroscope measurement:     
        FrequencyBodyBodyGyroscopeMagnitudeMeanFreq()	
        
    Mean of the magnitude of the body gyroscope jerk:         
        FrequencyBodyBodyGyroscopeJerkMagnitudeMean()
    Standard deviation of the magnitude of the body gyroscope jerk:       
        FrequencyBodyBodyGyroscopeJerkMagnitudeSTD()	
    Mean of the frequency of the magnitude of the body gyroscope jerk:       
        FrequencyBodyBodyGyroscopeJerkMagnitudeMeanFreq()
