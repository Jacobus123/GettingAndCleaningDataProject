#Codebook

Description of the variables, the data, and any transformations or work that is being performed to clean up the data.

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


###Output Data Set
The output data file "step5_dataset.txt"  is a a space-delimited file. The variables are labeled in the header. It is a data set containg the average of each variable for each activity and each subject.




