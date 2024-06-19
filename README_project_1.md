# Course Project 1 :Individual household electric power consumption

## What's done here

This assignment uses data from the UC Irvine Machine Learning Repository (<https://archive.ics.uci.edu/>) , a popular repository for machine learning datasets. In particular, we will be using the "Individual household electric power consumption Data Set".

Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available. We will only be using data from the dates 2007-02-01 and 2007-02-02

Descriptions of the 9 variables in the dataset :

Date: Date in format dd/mm/yyyy

Time: time in format hh:mm:ss

Global_active_power: household global minute-averaged active power (in kilowatt)

Global_reactive_power: household global minute-averaged reactive power (in kilowatt)

Voltage: minute-averaged voltage (in volt)

Global_intensity: household global minute-averaged current intensity (in ampere)

Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).

Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.

Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

## How the different scripts fit together

-   `README_project_1.md` describes the variables, the data, and transformations performed to clean up the data
-   `course_project_1.R` Downloads and unzips the data from the above url and stores it in the \`current directory for further analysis. It provides an estimate of the memory expected to run the data set smoothly. *Lastly, it also creates a folder for the graphs "Figures" and some additional variables that will be used by the other scripts.*
-   `plot1.R` produces graph 1 and save it in the folder "Figures"
-   `plot2.R` produces graph 2 and save it in the folder "Figures"
-   `plot3.R` produces graph 3 and save it in the folder "Figures"
-   `plot4.R` produces graph 4 and save it in the folder "Figures"
