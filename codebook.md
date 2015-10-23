This is the codebook for the Getting and Cleaning Data course final project. It details
variables, the data, and transformations performed to clean up the data for the final 
project. It's chronological.

1. Created this file

2. Created repository on github at: https://github.com/alriks/cleandata for this project 
and its files

3. Downloaded data from this link: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

4. Unzipped file. Renamed folder from "UCI HAR Dataset" to "ucihar"

5. Read all files in original .txt

6. Created run_analysis.R in RStudio to perform analysis for the project

7.  List activities:
	WALKING
	WALKING_UPSTAIRS
	DOWNSTAIRS
	SITTING
	STANDING
	LAYING

8. List variables:
	subject
	activity
	tBodyAccMeanX
	tBodyAccMeanY
	tBodyAccMeanZ
	tBodyAccStdX
	tBodyAccStdY
	tBodyAccStdZ
	tGravityAccMeanX
	tGravityAccMeanY
	tGravityAccMeanZ
	tGravityAccStdX
	tGravityAccStdY
	tGravityAccStdZ
	tBodyAccJerkMeanX
	tBodyAccJerkMeanY
	tBodyAccJerkMeanZ
	tBodyAccJerkStdX
	tBodyAccJerkStdY
	tBodyAccJerkStdZ
	tBodyGyroMeanX
	tBodyGyroMeanY
	tBodyGyroMeanZ
	tBodyGyroStdX
	tBodyGyroStdY
	tBodyGyroStdZ
	tBodyGyroJerkMeanX
	tBodyGyroJerkMeanY
	tBodyGyroJerkMeanZ
	tBodyGyroJerkStdX
	tBodyGyroJerkStdY
	tBodyGyroJerkStdZ
	tBodyAccMagMean
	tBodyAccMagStd
	tGravityAccMagMean
	tGravityAccMagStd
	tBodyAccJerkMagMean
	tBodyAccJerkMagStd
	tBodyGyroMagMean
	tBodyGyroMagStd
	tBodyGyroJerkMagMean
	tBodyGyroJerkMagStd
	fBodyAccMeanX
	fBodyAccMeanY
	fBodyAccMeanZ
	fBodyAccStdX
	fBodyAccStdY
	fBodyAccStdZ
	fBodyAccMeanFreqX
	fBodyAccMeanFreqY
	fBodyAccMeanFreqZ
	fBodyAccJerkMeanX
	fBodyAccJerkMeanY
	fBodyAccJerkMeanZ
	fBodyAccJerkStdX
	fBodyAccJerkStdY
	fBodyAccJerkStdZ
	fBodyAccJerkMeanFreqX
	fBodyAccJerkMeanFreqY
	fBodyAccJerkMeanFreqZ
	fBodyGyroMeanX
	fBodyGyroMeanY
	fBodyGyroMeanZ
	fBodyGyroStdX
	fBodyGyroStdY
	fBodyGyroStdZ
	fBodyGyroMeanFreqX
	fBodyGyroMeanFreqY
	fBodyGyroMeanFreqZ
	fBodyAccMagMean
	fBodyAccMagStd
	fBodyAccMagMeanFreq
	fBodyBodyAccJerkMagMean
	fBodyBodyAccJerkMagStd
	fBodyBodyAccJerkMagMeanFreq
	fBodyBodyGyroMagMean
	fBodyBodyGyroMagStd
	fBodyBodyGyroMagMeanFreq
	fBodyBodyGyroJerkMagMean
	fBodyBodyGyroJerkMagStd
	fBodyBodyGyroJerkMagMeanFreq
	
9. 'str' the final data:

'data.frame':	180 obs. of  81 variables:
 $ subject                     : int  1 1 1 1 1 1 2 2 2 2 ...
 $ activity                    : Factor w/ 6 levels "LAYING","SITTING",..: 4 6 5 2 3 1 4 6 5 2 ...
 $ tBodyAccMeanX               : num  0.277 0.255 0.289 0.261 0.279 ...
 $ tBodyAccMeanY               : num  -0.01738 -0.02395 -0.00992 -0.00131 -0.01614 ...
 $ tBodyAccMeanZ               : num  -0.1111 -0.0973 -0.1076 -0.1045 -0.1106 ...
 $ tBodyAccStdX                : num  -0.284 -0.355 0.03 -0.977 -0.996 ...
 $ tBodyAccStdY                : num  0.11446 -0.00232 -0.03194 -0.92262 -0.97319 ...
 $ tBodyAccStdZ                : num  -0.26 -0.0195 -0.2304 -0.9396 -0.9798 ...
 $ tGravityAccMeanX            : num  0.935 0.893 0.932 0.832 0.943 ...
 $ tGravityAccMeanY            : num  -0.282 -0.362 -0.267 0.204 -0.273 ...
 $ tGravityAccMeanZ            : num  -0.0681 -0.0754 -0.0621 0.332 0.0135 ...
 $ tGravityAccStdX             : num  -0.977 -0.956 -0.951 -0.968 -0.994 ...
 $ tGravityAccStdY             : num  -0.971 -0.953 -0.937 -0.936 -0.981 ...
 $ tGravityAccStdZ             : num  -0.948 -0.912 -0.896 -0.949 -0.976 ...
 $ tBodyAccJerkMeanX           : num  0.074 0.1014 0.0542 0.0775 0.0754 ...
 $ tBodyAccJerkMeanY           : num  0.028272 0.019486 0.02965 -0.000619 0.007976 ...
 $ tBodyAccJerkMeanZ           : num  -0.00417 -0.04556 -0.01097 -0.00337 -0.00369 ...
 $ tBodyAccJerkStdX            : num  -0.1136 -0.4468 -0.0123 -0.9864 -0.9946 ...
 $ tBodyAccJerkStdY            : num  0.067 -0.378 -0.102 -0.981 -0.986 ...
 $ tBodyAccJerkStdZ            : num  -0.503 -0.707 -0.346 -0.988 -0.992 ...
 $ tBodyGyroMeanX              : num  -0.0418 0.0505 -0.0351 -0.0454 -0.024 ...
 $ tBodyGyroMeanY              : num  -0.0695 -0.1662 -0.0909 -0.0919 -0.0594 ...
 $ tBodyGyroMeanZ              : num  0.0849 0.0584 0.0901 0.0629 0.0748 ...
 $ tBodyGyroStdX               : num  -0.474 -0.545 -0.458 -0.977 -0.987 ...
 $ tBodyGyroStdY               : num  -0.05461 0.00411 -0.12635 -0.96647 -0.98773 ...
 $ tBodyGyroStdZ               : num  -0.344 -0.507 -0.125 -0.941 -0.981 ...
 $ tBodyGyroJerkMeanX          : num  -0.09 -0.1222 -0.074 -0.0937 -0.0996 ...
 $ tBodyGyroJerkMeanY          : num  -0.0398 -0.0421 -0.044 -0.0402 -0.0441 ...
 $ tBodyGyroJerkMeanZ          : num  -0.0461 -0.0407 -0.027 -0.0467 -0.049 ...
 $ tBodyGyroJerkStdX           : num  -0.207 -0.615 -0.487 -0.992 -0.993 ...
 $ tBodyGyroJerkStdY           : num  -0.304 -0.602 -0.239 -0.99 -0.995 ...
 $ tBodyGyroJerkStdZ           : num  -0.404 -0.606 -0.269 -0.988 -0.992 ...
 $ tBodyAccMagMean             : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ tBodyAccMagStd              : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ tGravityAccMagMean          : num  -0.137 -0.1299 0.0272 -0.9485 -0.9843 ...
 $ tGravityAccMagStd           : num  -0.2197 -0.325 0.0199 -0.9271 -0.9819 ...
 $ tBodyAccJerkMagMean         : num  -0.1414 -0.4665 -0.0894 -0.9874 -0.9924 ...
 $ tBodyAccJerkMagStd          : num  -0.0745 -0.479 -0.0258 -0.9841 -0.9931 ...
 $ tBodyGyroMagMean            : num  -0.161 -0.1267 -0.0757 -0.9309 -0.9765 ...
 $ tBodyGyroMagStd             : num  -0.187 -0.149 -0.226 -0.935 -0.979 ...
 $ tBodyGyroJerkMagMean        : num  -0.299 -0.595 -0.295 -0.992 -0.995 ...
 $ tBodyGyroJerkMagStd         : num  -0.325 -0.649 -0.307 -0.988 -0.995 ...
 $ fBodyAccMeanX               : num  -0.2028 -0.4043 0.0382 -0.9796 -0.9952 ...
 $ fBodyAccMeanY               : num  0.08971 -0.19098 0.00155 -0.94408 -0.97707 ...
 $ fBodyAccMeanZ               : num  -0.332 -0.433 -0.226 -0.959 -0.985 ...
 $ fBodyAccStdX                : num  -0.3191 -0.3374 0.0243 -0.9764 -0.996 ...
 $ fBodyAccStdY                : num  0.056 0.0218 -0.113 -0.9173 -0.9723 ...
 $ fBodyAccStdZ                : num  -0.28 0.086 -0.298 -0.934 -0.978 ...
 $ fBodyAccMeanFreqX           : num  -0.2075 -0.4187 -0.3074 -0.0495 0.0865 ...
 $ fBodyAccMeanFreqY           : num  0.1131 -0.1607 0.0632 0.0759 0.1175 ...
 $ fBodyAccMeanFreqZ           : num  0.0497 -0.5201 0.2943 0.2388 0.2449 ...
 $ fBodyAccJerkMeanX           : num  -0.1705 -0.4799 -0.0277 -0.9866 -0.9946 ...
 $ fBodyAccJerkMeanY           : num  -0.0352 -0.4134 -0.1287 -0.9816 -0.9854 ...
 $ fBodyAccJerkMeanZ           : num  -0.469 -0.685 -0.288 -0.986 -0.991 ...
 $ fBodyAccJerkStdX            : num  -0.1336 -0.4619 -0.0863 -0.9875 -0.9951 ...
 $ fBodyAccJerkStdY            : num  0.107 -0.382 -0.135 -0.983 -0.987 ...
 $ fBodyAccJerkStdZ            : num  -0.535 -0.726 -0.402 -0.988 -0.992 ...
 $ fBodyAccJerkMeanFreqX       : num  -0.209 -0.377 -0.253 0.257 0.314 ...
 $ fBodyAccJerkMeanFreqY       : num  -0.3862 -0.5095 -0.3376 0.0475 0.0392 ...
 $ fBodyAccJerkMeanFreqZ       : num  -0.18553 -0.5511 0.00937 0.09239 0.13858 ...
 $ fBodyGyroMeanX              : num  -0.339 -0.493 -0.352 -0.976 -0.986 ...
 $ fBodyGyroMeanY              : num  -0.1031 -0.3195 -0.0557 -0.9758 -0.989 ...
 $ fBodyGyroMeanZ              : num  -0.2559 -0.4536 -0.0319 -0.9513 -0.9808 ...
 $ fBodyGyroStdX               : num  -0.517 -0.566 -0.495 -0.978 -0.987 ...
 $ fBodyGyroStdY               : num  -0.0335 0.1515 -0.1814 -0.9623 -0.9871 ...
 $ fBodyGyroStdZ               : num  -0.437 -0.572 -0.238 -0.944 -0.982 ...
 $ fBodyGyroMeanFreqX          : num  0.0148 -0.1875 -0.1005 0.1892 -0.1203 ...
 $ fBodyGyroMeanFreqY          : num  -0.0658 -0.4736 0.0826 0.0631 -0.0447 ...
 $ fBodyGyroMeanFreqZ          : num  0.000773 -0.133374 -0.075676 -0.029784 0.100608 ...
 $ fBodyAccMagMean             : num  -0.1286 -0.3524 0.0966 -0.9478 -0.9854 ...
 $ fBodyAccMagStd              : num  -0.398 -0.416 -0.187 -0.928 -0.982 ...
 $ fBodyAccMagMeanFreq         : num  0.1906 -0.0977 0.1192 0.2367 0.2846 ...
 $ fBodyBodyAccJerkMagMean     : num  -0.0571 -0.4427 0.0262 -0.9853 -0.9925 ...
 $ fBodyBodyAccJerkMagStd      : num  -0.103 -0.533 -0.104 -0.982 -0.993 ...
 $ fBodyBodyAccJerkMagMeanFreq : num  0.0938 0.0854 0.0765 0.3519 0.4222 ...
 $ fBodyBodyGyroMagMean        : num  -0.199 -0.326 -0.186 -0.958 -0.985 ...
 $ fBodyBodyGyroMagStd         : num  -0.321 -0.183 -0.398 -0.932 -0.978 ...
 $ fBodyBodyGyroMagMeanFreq    : num  0.268844 -0.219303 0.349614 -0.000262 -0.028606 ...
 $ fBodyBodyGyroJerkMagMean    : num  -0.319 -0.635 -0.282 -0.99 -0.995 ...
 $ fBodyBodyGyroJerkMagStd     : num  -0.382 -0.694 -0.392 -0.987 -0.995 ...
 $ fBodyBodyGyroJerkMagMeanFreq: num  0.191 0.114 0.19 0.185 0.334 ...