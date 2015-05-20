#run_analysis.R

library(reshape2)
library(plyr)

#-------------------------------------------------------------------------------------------------------
##Reading in 'train' measurements and reducing to columns for 'mean' and 'standard deviation' only  
#-------------------------------------------------------------------------------------------------------       

#body_acc_x_train
body_acc_x_train <- read.table("./data/train/Inertial Signals/body_acc_x_train.txt")
body_acc_x_train<-transform(body_acc_x_train, MEAN_BODYACC_X=apply(body_acc_x_train,1, mean, na.rm = TRUE), SD_BODYACC_X=apply(body_acc_x_train,1, sd, na.rm = TRUE))
body_acc_x_train<-body_acc_x_train[,c(129,130)]

#body_acc_y_train
body_acc_y_train <- read.table("./data/train/Inertial Signals/body_acc_y_train.txt")
body_acc_y_train<-transform(body_acc_y_train, MEAN_BODYACC_Y=apply(body_acc_y_train,1, mean, na.rm = TRUE), SD_BODYACC_Y=apply(body_acc_y_train,1, sd, na.rm = TRUE))
body_acc_y_train<-body_acc_y_train[,c(129,130)]

#body_acc_z_train
body_acc_z_train <- read.table("./data/train/Inertial Signals/body_acc_z_train.txt")
body_acc_z_train<-transform(body_acc_z_train, MEAN_BODYACC_Z=apply(body_acc_z_train,1, mean, na.rm = TRUE), SD_BODYACC_Z=apply(body_acc_z_train,1, sd, na.rm = TRUE))
body_acc_z_train<-body_acc_z_train[,c(129,130)]


#body_gyro_x_train
body_gyro_x_train <- read.table("./data/train/Inertial Signals/body_gyro_x_train.txt")
body_gyro_x_train<-transform(body_gyro_x_train, MEAN_BODYGYRO_X=apply(body_gyro_x_train,1, mean, na.rm = TRUE), SD_BODYGYRO_X=apply(body_gyro_x_train,1, sd, na.rm = TRUE))
body_gyro_x_train<-body_gyro_x_train[,c(129,130)]

#body_gyro_y_train
body_gyro_y_train <- read.table("./data/train/Inertial Signals/body_gyro_y_train.txt")
body_gyro_y_train<-transform(body_gyro_y_train, MEAN_BODYGYRO_Y=apply(body_gyro_y_train,1, mean, na.rm = TRUE), SD_BODYGYRO_Y=apply(body_gyro_y_train,1, sd, na.rm = TRUE))
body_gyro_y_train<-body_gyro_y_train[,c(129,130)]

#body_gyro_z_train
body_gyro_z_train <- read.table("./data/train/Inertial Signals/body_gyro_z_train.txt")
body_gyro_z_train<-transform(body_gyro_z_train, MEAN_BODYGYRO_Z=apply(body_gyro_z_train,1, mean, na.rm = TRUE), SD_BODYGYRO_Z=apply(body_gyro_z_train,1, sd, na.rm = TRUE))
body_gyro_z_train<-body_gyro_z_train[,c(129,130)]

#total_acc_x_train
total_acc_x_train <- read.table("./data/train/Inertial Signals/total_acc_x_train.txt")
total_acc_x_train<-transform(total_acc_x_train, MEAN_TOTACC_X=apply(total_acc_x_train,1, mean, na.rm = TRUE), SD_TOTACC_X=apply(total_acc_x_train,1, sd, na.rm = TRUE))
total_acc_x_train<-total_acc_x_train[,c(129,130)]

#total_acc_y_train
total_acc_y_train <- read.table("./data/train/Inertial Signals/total_acc_y_train.txt")
total_acc_y_train<-transform(total_acc_y_train, MEAN_TOTACC_Y=apply(total_acc_y_train,1, mean, na.rm = TRUE), SD_TOTACC_Y=apply(total_acc_y_train,1, sd, na.rm = TRUE))
total_acc_y_train<-total_acc_y_train[,c(129,130)]

#total_acc_z_train
total_acc_z_train <- read.table("./data/train/Inertial Signals/total_acc_z_train.txt")
total_acc_z_train<-transform(total_acc_z_train, MEAN_TOTACC_Z=apply(total_acc_z_train,1, mean, na.rm = TRUE), SD_TOTACC_Z=apply(total_acc_z_train,1, sd, na.rm = TRUE))
total_acc_z_train<-total_acc_z_train[,c(129,130)]

#-----------------
##Reading subject_train dataset and labeling its column
#-----------------
subject_train <- read.table("./data/train/subject_train.txt", col.names = c("Subject_ID"))

#-----------------
##Reading y_train dataset and labeling its column and adding decription column
#-----------------
activity_labels <- read.table("./data/activity_labels.txt")
y_train <- read.table("./data/train/y_train.txt")
y_train<-join(y_train,activity_labels,by="V1")
names(y_train)[1]<-paste("Activity_ID")
names(y_train)[2]<-paste("Activity_Descr")

#-----------------
##Reading X_train dataset and labeling its variable names
#-----------------
features <- read.table("./data/features.txt")
X_train <- read.table("./data/train/X_train.txt", col.names = features[,2])


#-------------------------------------------------------------------------------------------------------
##Reading in 'test' measurements and reducing to columns for 'mean' and 'standard deviation' only
#-------------------------------------------------------------------------------------------------------
#body_acc_x_test
body_acc_x_test <- read.table("./data/test/Inertial Signals/body_acc_x_test.txt")
body_acc_x_test<-transform(body_acc_x_test, MEAN_BODYACC_X=apply(body_acc_x_test,1, mean, na.rm = TRUE), SD_BODYACC_X=apply(body_acc_x_test,1, sd, na.rm = TRUE))
body_acc_x_test<-body_acc_x_test[,c(129,130)]

#body_acc_y_test
body_acc_y_test <- read.table("./data/test/Inertial Signals/body_acc_y_test.txt")
body_acc_y_test<-transform(body_acc_y_test, MEAN_BODYACC_Y=apply(body_acc_y_test,1, mean, na.rm = TRUE), SD_BODYACC_Y=apply(body_acc_y_test,1, sd, na.rm = TRUE))
body_acc_y_test<-body_acc_y_test[,c(129,130)]

#body_acc_z_test
body_acc_z_test <- read.table("./data/test/Inertial Signals/body_acc_z_test.txt")
body_acc_z_test<-transform(body_acc_z_test, MEAN_BODYACC_Z=apply(body_acc_z_test,1, mean, na.rm = TRUE), SD_BODYACC_Z=apply(body_acc_z_test,1, sd, na.rm = TRUE))
body_acc_z_test<-body_acc_z_test[,c(129,130)]


#body_gyro_x_test
body_gyro_x_test <- read.table("./data/test/Inertial Signals/body_gyro_x_test.txt")
body_gyro_x_test<-transform(body_gyro_x_test, MEAN_BODYGYRO_X=apply(body_gyro_x_test,1, mean, na.rm = TRUE), SD_BODYGYRO_X=apply(body_gyro_x_test,1, sd, na.rm = TRUE))
body_gyro_x_test<-body_gyro_x_test[,c(129,130)]

#body_gyro_y_test
body_gyro_y_test <- read.table("./data/test/Inertial Signals/body_gyro_y_test.txt")
body_gyro_y_test<-transform(body_gyro_y_test, MEAN_BODYGYRO_Y=apply(body_gyro_y_test,1, mean, na.rm = TRUE), SD_BODYGYRO_Y=apply(body_gyro_y_test,1, sd, na.rm = TRUE))
body_gyro_y_test<-body_gyro_y_test[,c(129,130)]

#body_gyro_z_test
body_gyro_z_test <- read.table("./data/test/Inertial Signals/body_gyro_z_test.txt")
body_gyro_z_test<-transform(body_gyro_z_test, MEAN_BODYGYRO_Z=apply(body_gyro_z_test,1, mean, na.rm = TRUE), SD_BODYGYRO_Z=apply(body_gyro_z_test,1, sd, na.rm = TRUE))
body_gyro_z_test<-body_gyro_z_test[,c(129,130)]

#total_acc_x_test
total_acc_x_test <- read.table("./data/test/Inertial Signals/total_acc_x_test.txt")
total_acc_x_test<-transform(total_acc_x_test, MEAN_TOTACC_X=apply(total_acc_x_test,1, mean, na.rm = TRUE), SD_TOTACC_X=apply(total_acc_x_test,1, sd, na.rm = TRUE))
total_acc_x_test<-total_acc_x_test[,c(129,130)]

#total_acc_y_test
total_acc_y_test <- read.table("./data/test/Inertial Signals/total_acc_y_test.txt")
total_acc_y_test<-transform(total_acc_y_test, MEAN_TOTACC_Y=apply(total_acc_y_test,1, mean, na.rm = TRUE), SD_TOTACC_Y=apply(total_acc_y_test,1, sd, na.rm = TRUE))
total_acc_y_test<-total_acc_y_test[,c(129,130)]

#total_acc_z_test
total_acc_z_test <- read.table("./data/test/Inertial Signals/total_acc_z_test.txt")
total_acc_z_test<-transform(total_acc_z_test, MEAN_TOTACC_Z=apply(total_acc_z_test,1, mean, na.rm = TRUE), SD_TOTACC_Z=apply(total_acc_z_test,1, sd, na.rm = TRUE))
total_acc_z_test<-total_acc_z_test[,c(129,130)]

#-----------------
##Reading subject_test dataset and labeling its column
#-----------------
subject_test <- read.table("./data/test/subject_test.txt", col.names = c("Subject_ID"))

#-----------------
##Reading y_test dataset and labeling its column and adding decription column
#-----------------
#activity_labels <- read.table("./data/activity_labels.txt")
y_test <- read.table("./data/test/y_test.txt")
y_test<-join(y_test,activity_labels,by="V1")
names(y_test)[1]<-paste("Activity_ID")
names(y_test)[2]<-paste("Activity_Descr")


#-----------------
##Reading X_test dataset and labeling its variable names
#-----------------
features <- read.table("./data/features.txt")
X_test <- read.table("./data/test/X_test.txt", col.names = features[,2])


#-------------------------------------
#Now combining 'train' and 'test' into 1 dataset
#-------------------------------------

#-----------------
##Bind columns of 'train' datasets into 1 data frame
#-----------------
combi_train<-cbind(subject_train,y_train,X_train,body_acc_x_train,body_acc_y_train,body_acc_z_train,body_gyro_x_train,body_gyro_y_train,body_gyro_z_train,total_acc_x_train,total_acc_y_train,total_acc_z_train)

#-----------------
##Bind columns of 'test' datasets into 1 data frame
#-----------------
combi_test<-cbind(subject_test,y_test,X_test,body_acc_x_test,body_acc_y_test,body_acc_z_test,body_gyro_x_test,body_gyro_y_test,body_gyro_z_test,total_acc_x_test,total_acc_y_test,total_acc_z_test)

#-----------------
#Step 4.
##Append combi_train and train_test into combi_data  
#-----------------
combi_data<-rbind(combi_train,combi_test)


#-----------------
#Step 5.
##dcast_data: independent tidy data set with the average of each variable for each activity and each subject.
#-----------------
melted_data<-melt(combi_data,id=c("Subject_ID","Activity_ID","Activity_Descr"),measure.vars=names(combi_data)[4:582])
dcast_data<-dcast(melted_data,Subject_ID + Activity_ID + Activity_Descr ~ variable,mean)

write.table(dcast_data, "step5_dataset.txt", row.name=FALSE) 

 


