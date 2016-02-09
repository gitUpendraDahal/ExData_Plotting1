#### Course Project -1 on Exploratory Data Analysis
#### Created By : Upendra Dahal
#### Created Date : 9th Feb 2016
#### Note : Plotting plot1.R of  the House hold Power Consumption Data
#### File Url : https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

dataFile <- "./data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
dim(data)
library(dplyr)
data_df <- tbl_df(data)
data_df <- filter(data, Date=="1/2/2007" | Date == "2/2/2007")
dim(data_df)
globalActivePower <- as.numeric(data_df$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()