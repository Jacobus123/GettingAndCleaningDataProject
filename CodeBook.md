#Codebook

Description of the variables, the data, and any transformations or work that is being performed to clean up the data.

###Functionality of script
The 'run_analysis.R' performs the following:
- Reading in input datasets from data directory
- Merges the training and the test sets to create one data set.
- Extracts only the measurements on the mean and standard deviation for each measurement. 
- Uses descriptive activity names to name the activities in the data set
- Appropriately labels the data set with descriptive variable names. 
- From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


###Input Data Sets
- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 


! For detailed description on these files, please read README.MD within the input data archive.

###Transformations

- Reading in 'train' measurements and reducing to columns for 'mean' and 'standard deviation' only  
- Reading subject_train dataset and labeling its column
- Reading y_train dataset and labeling its column and adding decription column
- Reading X_train dataset and labeling its variable names
- Indentical steps as the 4 above, now for the 'test' datasets
- Combining 'train' and 'test' into 1 dataset
- Bind columns of 'train' result dataset into 1 data frame
- Bind columns of 'test' result dataset into 1 data frame
- Append combi_train and train_test into combi_data  
- dcast_data: independent tidy data set with the average of each variable for each activity and each subject
- write result dataset to file "step5_dataset.txt" 

###Newly calculated variables 
The mean and standard deviation for each measurement are contained in the following variables:
- "MEAN_BODYACC_X"      Mean Body acceleration from the accelerometer on X-axis                
- "SD_BODYACC_X"        SD   Body acceleration from the accelerometer on X-axis                
- "MEAN_BODYACC_Y"      Mean Body acceleration from the accelerometer on Y-axis                
- "SD_BODYACC_Y"        SD   Body acceleration from the accelerometer on Y-axis                
- "MEAN_BODYACC_Z"      Mean Body acceleration from the accelerometer on Z-axis                
- "SD_BODYACC_Z"        SD   Body acceleration from the accelerometer on Z-axis                
- "MEAN_BODYGYRO_X"     Mean Triaxial Angular velocity from the gyroscope on X-axis               
- "SD_BODYGYRO_X"       SD   Triaxial Angular velocity from the gyroscope on X-axis                
- "MEAN_BODYGYRO_Y"     Mean Triaxial Angular velocity from the gyroscope on Y-axis                
- "SD_BODYGYRO_Y"       SD   Triaxial Angular velocity from the gyroscope on Y-axis                
- "MEAN_BODYGYRO_Z"     Mean Triaxial Angular velocity from the gyroscope on Z-axis                
- "SD_BODYGYRO_Z"       SD   Triaxial Angular velocity from the gyroscope on Z-axis                
- "MEAN_TOTACC_X"       Mean Triaxial acceleration from the accelerometer on X-axis               
- "SD_TOTACC_X"         SD   Triaxial acceleration from the accelerometer on X-axis                
- "MEAN_TOTACC_Y"       Mean Triaxial acceleration from the accelerometer on Y-axis                
- "SD_TOTACC_Y"         SD   Triaxial acceleration from the accelerometer on Y-axis                
- "MEAN_TOTACC_Z"       Mean Triaxial acceleration from the accelerometer on Z-axis                
- "SD_TOTACC_Z"         SD   Triaxial acceleration from the accelerometer on Z-axis


###Output Data Set
The output data file "step5_dataset.txt"  is a a space-delimited file. The variables are labeled in the header. It is a data set containg the average of each variable for each activity and each subject.




