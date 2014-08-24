DATA DICTIONARY -
-------------


Subject | Integer
--------|--------
        |Subject number.
        |One of 30 subjects within an age bracket of 19-48 years
* 1..30

Activity|Character string
--------|----------------
        |One of six activities of daily living (ADL)
* "LAYING" 
* "SITTING"
* "STANDING" 
* "WALKING" 
* "WALKING_DOWNSTAIRS" 
* "WALKING_UPSTAIRS"

average_tBodyAccMag_mean|double
------------------------|------
                        |Average of magnitude of body acceleration mean grouped by Subject and Activity

average_tBodyAccMag_std|double
-----------------------|------
                       |Average of standard deviation of magnitude of body acceleration grouped by Subject and Activity
                           
average_tGravityAccMag_mean|double
---------------------------|------
  |Average of mean magnitude of gravity acceleration grouped by Subject and Activity

average_tGravityAccMag_std|double
---------------------------|------
  |Average of standard deviation of magnitude of gravity acceleration grouped by Subject and Activity

average_tBodyAccJerkMag_mean|double
---------------------------|------
  |Average of mean magnitude of body acceleration jerk grouped by Subject and Activity

average_tBodyAccJerkMag_std|double
---------------------------|------
  |Average of standard deviation of magnitude of body acceleration jerk grouped by Subject and Activity

average_tBodyGyroMag_mean|double
---------------------------|------

average_tBodyGyroMag_std|double
---------------------------|------

average_tBodyGyroJerkMag_mean|double
---------------------------|------

average_tBodyGyroJerkMag_std|double
---------------------------|------

average_fBodyAccMag_mean|double
---------------------------|------

average_fBodyAccMag_std|double
---------------------------|------

average_fBodyBodyAccJerkMag_mean|double
---------------------------|------

average_fBodyBodyAccJerkMag_std|double
---------------------------|------

average_fBodyBodyGyroMag_mean|double
---------------------------|------

average_fBodyBodyGyroMag_std|double
---------------------------|------

average_fBodyBodyGyroJerkMag_mean|double
---------------------------|------

average_fBodyBodyGyroJerkMag_std|double
---------------------------|------
