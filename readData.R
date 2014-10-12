# Project 1
# EDA
library(lubridate)
library(data.table)
# Uncomment next line to set a specific working directory
# setwd("~/Coursera/EDA/Project1")
# Using data.table since fread() is much faster than read.csv()
allData <- fread("household_power_consumption.txt", sep=";", na.strings = "?")
plotData <- subset(allData, Date=="1/2/2007" | Date=="2/2/2007")
# Force measurement columns to numeric. Exclude Date and Time columns (1-2).
for (col in names(plotData)[-1:-2] ) set(plotData, j = col, value=as.numeric(plotData[[col]]))
# Create a proper date/time column
plotData$FullDate <- dmy(plotData$Date) + hms(plotData$Time)
