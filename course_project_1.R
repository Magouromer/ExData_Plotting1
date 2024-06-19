# Rough estimate of memory requested

# 8 bytes/numeric
2075259 * 9 * 8
# In MB
(2075259 * 9 * 8 )/ 2^20

# Estimated memory is 143 MB


setwd("C:/Users/RMady/Dropbox (Personal)/Training/Data science specialization/Assignments/Module 4/Week 1")


#Load the data

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl, file.path("./", "data.zip"))


# Unzip using WinRAR utility on Windows 8:
executable <- file.path("C:", "Program Files", "WinRAR", "WinRAR.exe")
cmd <- paste(paste0("\"", executable, "\""), "x", 
             paste0("\"", file.path("./", "data.zip"), "\""))
system(cmd)

# Load data
library(data.table)

hh_power_con <- fread(file.path("./", "household_power_consumption.txt"))
class(hh_power_con)

# Convert date and time
class(hh_power_con$Date)
class(hh_power_con$Time)

hh_power_con$Date <- as.Date(hh_power_con$Date, tryFormats = c("%d/%m/%Y", "%Y/%m/%d"))

#Create variable date/time
hh_power_con$date_time <- paste(hh_power_con$Date, hh_power_con$Time)

#hh_power_con$date_time <- strptime(hh_power_con$date_time,format = "%Y-%m-%d %H:%M:%S") #%H:%M:%S
hh_power_con$date_time <- ymd_hms(hh_power_con$date_time)
class(hh_power_con$date_time)



#Subset data
project_cons <- subset(hh_power_con, Date == "2007-02-01" | Date == "2007-02-02") 

#Create a folder for figures
list.files("./")
dir.create("Figures")

## End of code. Open the other scripts for the different plots ###
