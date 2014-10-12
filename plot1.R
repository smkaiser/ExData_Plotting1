# plot1.R

# Check for needed variable and read data if necessary
if (!exists("plotData")) {
    source("./readData.R")
}
# Open output device
png(file = "plot1.png", width = 480, height = 480)
hist(plotData$Global_active_power, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
# Cleanup
dev.off()
