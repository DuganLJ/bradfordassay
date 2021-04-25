# bradfordassay
Does all the necessary data analysis and graphing surrounding a Bradford Assay


This R package takes a linear dataset from a standard test and then graphs it before creating a line of best fit and inserting that data into another object.  This new object can then be accessed to make a function where a known absorbance can be put in and a predicted protein concentration can be outputted.  These values are also graphed.

The goal of this was to automate a process done in labs in a way that a physical test can be done and data given from the machine reading these tests could be given to R in a standardized format.  This package could then be run and all necessary analysis could be done without human interaction.

Then, through the use of a markdown file, a printout could be made which gives researchers in this lab only the necessary information almost instantly after the test is done.


After installing the package, users should just be able to run bradfordassay::BradfordAssay() and all the work should be done by the machine.


You may or may not need to go to the folder where the package is saved and change the name of the RData to ".RData" to get it working properly.
