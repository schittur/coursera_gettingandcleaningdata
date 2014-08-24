Getting  and cleaning Data project - run_Analysis.R script
=========

Prerequisities:
  - Set the working directory to the unzipped data files folder before running the script. This Script loads the data files using relative paths like test\X_test.txt etc.
  - "plyr" package is required.

`````
Note: I named all the variables in the script with a prefix of "my." so that they do not clash with any R reserved names
`````
How the code works
-----------
####Loading the raw data set
* script loads the subjects file, activities file and readings file in that order and combines using cbind() function
* training data is loaded from .\train and test data from .\test folders
* both the above data frames are merged using rbind()

####Setting column names of the raw data set
* the first 2 columns are hard coded as "Subject" and "Activities"
* remaining column names are loaded from the "features.txt" file

####Getting only mean and standard deviation columns
* from the features names loaded from "features.txt" file only magnitude features having mean() and std() in their names are considered
* since the column names are already set, only these columns subset is extracted
* Subject and Activity columns are retained

####Setting Activity labels
* Activity names are loaded from "Activity_labels.txt" file
* Activity codes in the data set are replaced by these labels

####Setting descriptive variable names
*To make the column names of the dataset more readable the paranthesis are removed and - (hyphen) replaced with _ (underscore).

####Creating independent tidy data set
* using ddply() function from plyr package script computes the mean grouped by subject and activity
* column names are prefixed with "average_" word
* Since Subject and Average columns do not need "average_" word, their names are restored at the end.
