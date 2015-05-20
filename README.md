# GettingAndCleaningDataProject
Project for Getting and Cleaning Data.
It contains one R script called run_analysis.R, which takes care of all the transformations from the originating input files to the resulting dataset.
The inputfiles for the script can be found  [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
Info on the input datasets and its collection can be found [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).


The archive is to be extracted to a folder named `data`. Then execute `run_analysis.R` on that dataset which will writes the results to a text file named `step5_dataset.txt`.


The inner workings of run_analysis.R are explained in file CodeBook.md .
