# Code Book

This Code Book contains the descriptions of the data and the variables for the [tidydata.txt](https://github.com/jmcampbell2/TidyDataProject/blob/master/tidydata.txt) data file, created for the Tidy Data project in the class "Getting and Cleaning Data" on Coursera.

## The Data
The tidy data file contains 180 lines of observations, one line for each combination of 30 subjects and 6 activities. The measurements represent the mean calculated across multiple repetitions of each physical activity. Thus each row consists of the unique subjectID, activityId, activityType, and the means for variables representing each of the variables from the original Human Activity Recognition data set which were measurements on the mean and standard deviation of the variables analyzed by the HAR research team.

Per the HAR research team, the original data was organized according to the following process:

    The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

    Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

    Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

    These signals were used to estimate variables of the feature vector for each pattern:
    '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
    
    tBodyAcc-XYZ
    tGravityAcc-XYZ
    tBodyAccJerk-XYZ
    tBodyGyro-XYZ
    tBodyGyroJerk-XYZ
    tBodyAccMag
    tGravityAccMag
    tBodyAccJerkMag
    tBodyGyroMag
    tBodyGyroJerkMag
    fBodyAcc-XYZ
    fBodyAccJerk-XYZ
    fBodyGyro-XYZ
    fBodyAccMag
    fBodyAccJerkMag
    fBodyGyroMag
    fBodyGyroJerkMag

    The set of variables that were estimated from these signals are: 

    mean(): Mean value
    std(): Standard deviation
    mad(): Median absolute deviation 
    max(): Largest value in array
    min(): Smallest value in array
    sma(): Signal magnitude area
    energy(): Energy measure. Sum of the squares divided by the number of values. 
    iqr(): Interquartile range 
    entropy(): Signal entropy
    arCoeff(): Autorregresion coefficients with Burg order equal to 4
    correlation(): correlation coefficient between two signals
    maxInds(): index of the frequency component with largest magnitude
    meanFreq(): Weighted average of the frequency components to obtain a mean frequency
    skewness(): skewness of the frequency domain signal 
    kurtosis(): kurtosis of the frequency domain signal 
    bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
    angle(): Angle between to vectors.

    Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

    gravityMean
    tBodyAccMean
    tBodyAccJerkMean
    tBodyGyroMean
    tBodyGyroJerkMean

**Reference**: features_info.txt file from [A Public Domain Dataset for Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
In the README.txt file from [A Public Domain Dataset for Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones) they also note that the Features were normalized and bounded within [-1,1].


## The Variables

The variables represented in the tidy data set are described in the following table:

| Column Position | Column Name  | Description  |
|------|------|------|
|1| subjectId | Numeric sequential variable, a unique identifier for each subject, 1-30 |
|2| activityId | Numeric variable, a unique identifier for each activity, 1-6 |
|3| activityType | String variable, descriptor corresponding to the activityId, as follows: <ol><li> WALKING</li><li> WALKING_UPSTAIRS</li><li> WALKING_DOWNSTAIRS</li><li> SITTING</li><li> STANDING</li><li> LAYING</li></ol>|
|4|tBodyAcc-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|5|tBodyAcc-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|6|tBodyAcc-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|7|tBodyAcc-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|8|tBodyAcc-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|9|tBodyAcc-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|10|tGravityAcc-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|11|tGravityAcc-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|12|tGravityAcc-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|13|tGravityAcc-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|14|tGravityAcc-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|15|tGravityAcc-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|16|tBodyAccJerk-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|17|tBodyAccJerk-mean()-Y  |Numeric variable, mean of the HAR measurements for the named feature |
|18|tBodyAccJerk-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|19|tBodyAccJerk-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|20|tBodyAccJerk-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|21|tBodyAccJerk-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|22|tBodyGyro-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|23|tBodyGyro-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|24|tBodyGyro-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|25|tBodyGyro-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|26|tBodyGyro-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|27|tBodyGyro-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|28|tBodyGyroJerk-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|29|tBodyGyroJerk-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|30|tBodyGyroJerk-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|31|tBodyGyroJerk-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|32|tBodyGyroJerk-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|33|tBodyGyroJerk-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|34|tBodyAccMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|35|tBodyAccMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|36|tGravityAccMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|37|tGravityAccMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|38|tBodyAccJerkMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|39|tBodyAccJerkMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|40|tBodyGyroMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|41|tBodyGyroMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|42|tBodyGyroJerkMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|43|tBodyGyroJerkMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|44|fBodyAcc-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|45|fBodyAcc-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|46|fBodyAcc-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|47|fBodyAcc-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|48|fBodyAcc-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|49|fBodyAcc-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|50|fBodyAcc-meanFreq()-X |Numeric variable, mean of the HAR measurements for the named feature |
|51|fBodyAcc-meanFreq()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|52|fBodyAcc-meanFreq()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|53|fBodyAccJerk-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|54|fBodyAccJerk-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|55|fBodyAccJerk-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|56|fBodyAccJerk-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|57|fBodyAccJerk-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|58|fBodyAccJerk-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|59|fBodyAccJerk-meanFreq()-X |Numeric variable, mean of the HAR measurements for the named feature |
|60|fBodyAccJerk-meanFreq()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|61|fBodyAccJerk-meanFreq()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|62|fBodyGyro-mean()-X |Numeric variable, mean of the HAR measurements for the named feature |
|63|fBodyGyro-mean()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|64|fBodyGyro-mean()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|65|fBodyGyro-std()-X |Numeric variable, mean of the HAR measurements for the named feature |
|66|fBodyGyro-std()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|67|fBodyGyro-std()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|68|fBodyGyro-meanFreq()-X |Numeric variable, mean of the HAR measurements for the named feature |
|69|fBodyGyro-meanFreq()-Y |Numeric variable, mean of the HAR measurements for the named feature |
|70|fBodyGyro-meanFreq()-Z |Numeric variable, mean of the HAR measurements for the named feature |
|71|fBodyAccMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|72|fBodyAccMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|73|fBodyAccMag-meanFreq() |Numeric variable, mean of the HAR measurements for the named feature |
|74|fBodyBodyAccJerkMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|75|fBodyBodyAccJerkMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|76|fBodyBodyAccJerkMag-meanFreq() |Numeric variable, mean of the HAR measurements for the named feature |
|77|fBodyBodyGyroMag-mean() |Numeric variable, mean of the HAR measurements for the named features |
|78|fBodyBodyGyroMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|79|fBodyBodyGyroMag-meanFreq() |Numeric variable, mean of the HAR measurements for the named feature |
|80|fBodyBodyGyroJerkMag-mean() |Numeric variable, mean of the HAR measurements for the named feature |
|81|fBodyBodyGyroJerkMag-std() |Numeric variable, mean of the HAR measurements for the named feature |
|82|fBodyBodyGyroJerkMag-meanFreq() |Numeric variable, mean of the HAR measurements for the named feature |


