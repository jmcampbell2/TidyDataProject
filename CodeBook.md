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

The variables represented in the tidy data set:

| Column Position | Column Name  | Description  |
|------|------|------|
|1| subjectId | a unique identifier for each subject, 1-30 |
|2| activityId | a unique identifier for each activity, 1-6 |
|3| activityType | the string descriptor corresponding to the activityId, as follows: <ol><li> WALKING</li><li> WALKING_UPSTAIRS</li><li> WALKING_DOWNSTAIRS</li><li> SITTING</li><li> STANDING</li><li> LAYING</li></ol>|
|4|tBodyAcc-mean()-X
|5|tBodyAcc-mean()-Y
|6|tBodyAcc-mean()-Z
|7|tBodyAcc-std()-X
|8|tBodyAcc-std()-Y
|9|tBodyAcc-std()-Z 
|10|tGravityAcc-mean()-X
|11|tGravityAcc-mean()-Y
|12|tGravityAcc-mean()-Z
|13|tGravityAcc-std()-X
|14|tGravityAcc-std()-Y
|15|tGravityAcc-std()-Z 
|16|tBodyAccJerk-mean()-X
|17|tBodyAccJerk-mean()-Y 
|18|tBodyAccJerk-mean()-Z
|19|tBodyAccJerk-std()-X
|20|tBodyAccJerk-std()-Y
|21|tBodyAccJerk-std()-Z
|22|tBodyGyro-mean()-X
|23|tBodyGyro-mean()-Y
|24|tBodyGyro-mean()-Z
|25|tBodyGyro-std()-X 
|26|tBodyGyro-std()-Y 
|27|tBodyGyro-std()-Z
|28|tBodyGyroJerk-mean()-X
|29|tBodyGyroJerk-mean()-Y
|30|tBodyGyroJerk-mean()-Z
|31|tBodyGyroJerk-std()-X 
|32|tBodyGyroJerk-std()-Y
|33|tBodyGyroJerk-std()-Z
|34|tBodyAccMag-mean() 
|35|tBodyAccMag-std()
|36|tGravityAccMag-mean()
|37|tGravityAccMag-std()
|38|tBodyAccJerkMag-mean()
|39|tBodyAccJerkMag-std()
|40|tBodyGyroMag-mean()
|41|tBodyGyroMag-std() 
|42|tBodyGyroJerkMag-mean()
|43|tBodyGyroJerkMag-std()
|44|fBodyAcc-mean()-X 
|45|fBodyAcc-mean()-Y
|46|fBodyAcc-mean()-Z
|47|fBodyAcc-std()-X 
|48|fBodyAcc-std()-Y 
|49|fBodyAcc-std()-Z
|50|fBodyAcc-meanFreq()-X
|51|fBodyAcc-meanFreq()-Y
|52|fBodyAcc-meanFreq()-Z
|53|fBodyAccJerk-mean()-X
|54|fBodyAccJerk-mean()-Y
|55|fBodyAccJerk-mean()-Z
|56|fBodyAccJerk-std()-X 
|57|fBodyAccJerk-std()-Y
|58|fBodyAccJerk-std()-Z
|59|fBodyAccJerk-meanFreq()-X
|60|fBodyAccJerk-meanFreq()-Y
|61|fBodyAccJerk-meanFreq()-Z 
|62|fBodyGyro-mean()-X 
|63|fBodyGyro-mean()-Y
|64|fBodyGyro-mean()-Z 
|65|fBodyGyro-std()-X
|66|fBodyGyro-std()-Y
|67|fBodyGyro-std()-Z
|68|fBodyGyro-meanFreq()-X
|69|fBodyGyro-meanFreq()-Y
|70|fBodyGyro-meanFreq()-Z
|71|fBodyAccMag-mean()
|72|fBodyAccMag-std()
|73|fBodyAccMag-meanFreq()
|74|fBodyBodyAccJerkMag-mean()
|75|fBodyBodyAccJerkMag-std()
|76|fBodyBodyAccJerkMag-meanFreq() 
|77|fBodyBodyGyroMag-mean()
|78|fBodyBodyGyroMag-std()
|79|fBodyBodyGyroMag-meanFreq()
|80|fBodyBodyGyroJerkMag-mean()
|81|fBodyBodyGyroJerkMag-std()
|82|fBodyBodyGyroJerkMag-meanFreq() | mean of the named HAR measurements |


