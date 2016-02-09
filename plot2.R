#### Course Project -1 on Exploratory Data Analysis
#### Created By : Upendra Dahal
#### Created Date : 9th Feb 2016
#### Note : Plotting plot2.R of the House hold Power Consumption Data
#### File Url : https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

dataFile <- "./data/household_power_consumption.txt"
library(dplyr)
data_df <- tbl_df(data)
data_df <- filter(data, Date=="1/2/2007" | Date == "2/2/2007")
dim(data_df)

datetime <- strptime(paste(data_df$Date, data_df$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
globalActivePower <- as.numeric(data_df$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()