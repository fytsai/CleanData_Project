CodeBook
=================

# Data:

For this course project, the data comes from experiments on 30 volunteers (referred to as "subjects" below). They performed 6 activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing the Samsung Galaxy S smartphone, and signals were captured from the smartphone's accelerometer and gyroscope.

The signals were separated into body acceleration and gravity components, and features was calculated in time and frequency domain.

The data was provided in 2 sets, the test set and the training set.


# Transformation done on the data:

Test and training data are merged.    
Only the mean and standard deviation of measurements are extracted.    
For each subject and each activity, average of each variable in the extracted data is calculated, and this is the resulting data file (getDataProject.txt) for this project.    


# Variables in the resulting data file:

 [1] "subject": from 1 to 30, labeling the subjects.                      
 [2] "activity": activity performed by the subjects -- WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.
 
The variables below have taken averages by each subject and each activity.

Time domain, body acceleration signals from accelerometer, mean value in XYZ direction.     
 [3] "time_BodyAcc_mean_X"     
 [4] "time_BodyAcc_mean_Y"     
 [5] "time_BodyAcc_mean_Z"     
 
Time domain, gravity acceleration signals from accelerometer, mean value in XYZ direction.     
 [6] "time_GravityAcc_mean_X"     
 [7] "time_GravityAcc_mean_Y"     
 [8] "time_GravityAcc_mean_Z"     
 
Time domain, body acceleration from accelerometer derived Jerk signals, mean value in XYZ direction.     
 [9] "time_BodyAccJerk_mean_X"     
[10] "time_BodyAccJerk_mean_Y"     
[11] "time_BodyAccJerk_mean_Z"     

Time domain, body acceleration signals from gyroscope, mean value in XYZ direction.     
[12] "time_BodyGyro_mean_X"     
[13] "time_BodyGyro_mean_Y"     
[14] "time_BodyGyro_mean_Z"     

Time domain, body acceleration signals from gyroscope derived Jerk signals, mean value in XYZ direction.     
[15] "time_BodyGyroJerk_mean_X"     
[16] "time_BodyGyroJerk_mean_Y"     
[17] "time_BodyGyroJerk_mean_Z"     

Time domain, body acceleration signals from accelerometer, magnitude calculated using Euclidean norm, mean value.     
[18] "time_BodyAccMag_mean"         

Time domain, gravity acceleration signals from accelerometer, magnitude calculated using Euclidean norm, mean value.     
[19] "time_GravityAccMag_mean"      

Time domain, body acceleration signals from accelerometer derived Jerk signals, magnitude calculated using Euclidean norm, mean value.     
[20] "time_BodyAccJerkMag_mean"     

Time domain, body acceleration signals from gyroscope, magnitude calculated using Euclidean norm, mean value.     
[21] "time_BodyGyroMag_mean"        

Time domain, body acceleration signals from gyroscope derived Jerk signals, magnitude calculated using Euclidean norm, mean value.     
[22] "time_BodyGyroJerkMag_mean"  

Frequency domain, body acceleration signals from accelerometer, mean value in XYZ direction.     
[23] "freq_BodyAcc_mean_X"          
[24] "freq_BodyAcc_mean_Y"          
[25] "freq_BodyAcc_mean_Z"          

Frequency domain, body acceleration signals from accelerometer derived Jerk signals, mean value in XYZ direction.     
[26] "freq_BodyAccJerk_mean_X"      
[27] "freq_BodyAccJerk_mean_Y"      
[28] "freq_BodyAccJerk_mean_Z"      

Frequency domain, body acceleration signals from gyroscope, mean value in XYZ direction.     
[29] "freq_BodyGyro_mean_X"         
[30] "freq_BodyGyro_mean_Y"         
[31] "freq_BodyGyro_mean_Z"         

Frequency domain, body acceleration signals from accelerometer, magnitude calculated using Euclidean norm, mean value.     
[32] "freq_BodyAccMag_mean"         

Frequency domain, body acceleration signals from accelerometer derived Jerk signals, magnitude calculated using Euclidean norm, mean value.     
[33] "freq_BodyBodyAccJerkMag_mean" 

Frequency domain, body acceleration signals from gyroscope, magnitude calculated using Euclidean norm, mean value.     
[34] "freq_BodyBodyGyroMag_mean"    

Frequency domain, body acceleration signals from gyroscope derived Jerk signals, magnitude calculated using Euclidean norm, mean value.     
[35] "freq_BodyBodyGyroJerkMag_mean"     

Time domain, body acceleration signals from accelerometer, standard deviation in XYZ direction.     
[36] "time_BodyAcc_std_X"           
[37] "time_BodyAcc_std_Y"           
[38] "time_BodyAcc_std_Z"           

Time domain, gravity acceleration signals from accelerometer, standard deviation in XYZ direction.
[39] "time_GravityAcc_std_X"        
[40] "time_GravityAcc_std_Y"        
[41] "time_GravityAcc_std_Z"        

Time domain, body acceleration signals from accelerometer derived Jerk signals, standard deviation in XYZ direction.
[42] "time_BodyAccJerk_std_X"       
[43] "time_BodyAccJerk_std_Y"       
[44] "time_BodyAccJerk_std_Z"       

Time domain, body acceleration signals from gyroscope, standard deviation in XYZ direction.         
[45] "time_BodyGyro_std_X"          
[46] "time_BodyGyro_std_Y"          
[47] "time_BodyGyro_std_Z"          

Time domain, body acceleration signals from gyroscope derived Jerk signals, standard deviation in XYZ direction.         
[48] "time_BodyGyroJerk_std_X"      
[49] "time_BodyGyroJerk_std_Y"      
[50] "time_BodyGyroJerk_std_Z"      

Time domain, body acceleration signals from accelerometer, magnitude calculated using Euclidean norm, standard deviation.         
[51] "time_BodyAccMag_std"        

Time domain, gravity acceleration signals from accelerometer, magnitude calculated using Euclidean norm, standard deviation.         
[52] "time_GravityAccMag_std"       

Time domain, body acceleration signals from accelerometer derived Jerk signals, magnitude calculated using Euclidean norm, standard deviation.         
[53] "time_BodyAccJerkMag_std"      

Time domain, body acceleration signals from gyroscope, magnitude calculated using Euclidean norm, standard deviation.         
[54] "time_BodyGyroMag_std"         

Time domain, body acceleration signals from gyroscope derived Jerk signals, magnitude calculated using Euclidean norm, standard deviation.         
[55] "time_BodyGyroJerkMag_std"     

Frequency domain, body acceleration signals from accelerometer, standard deviation in the XYZ direction.         
[56] "freq_BodyAcc_std_X"           
[57] "freq_BodyAcc_std_Y"           
[58] "freq_BodyAcc_std_Z"           

Frequency domain, body acceleration signals from accelerometer derived Jerk signals, standard deviation in the XYZ direction.         
[59] "freq_BodyAccJerk_std_X"       
[60] "freq_BodyAccJerk_std_Y"       
[61] "freq_BodyAccJerk_std_Z"       

Frequency domain, body acceleration signals from gyroscope, standard deviation in the XYZ direction.         
[62] "freq_BodyGyro_std_X"          
[63] "freq_BodyGyro_std_Y"          
[64] "freq_BodyGyro_std_Z"          

Frequency domain, body acceleration signals from accelerometer, magnitude calculated using Euclidean norm, standard deviation.         
[65] "freq_BodyAccMag_std"          

Frequency domain, body acceleration signals from accelerometer derived Jerk signal, magnitude calculated using Euclidean norm, standard deviation.         
[66] "freq_BodyBodyAccJerkMag_std"  

Frequency domain, body acceleration signals from gyroscope, magnitude calculated using Euclidean norm, standard deviation.         
[67] "freq_BodyBodyGyroMag_std"     

Frequency domain, body acceleration signals from gyroscope derived Jerk signal, magnitude calculated using Euclidean norm, standard deviation.         
[68] "freq_BodyBodyGyroJerkMag_std"