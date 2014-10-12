# plot3.R
# Exploratory Data Analysis
# Steve Kaiser
# Oct 10, 2014

# Check for needed variable and read data if necessary
if (!exists("plotData")) {
    source("./readData.R")
}

# Open output device
png(file = "plot3.png", width = 480, height = 480)
# Set graphics defaults
par(mar = c(5,4,2,1))
# Create plot
plot(plotData$FullDate, plotData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(plotData$FullDate, plotData$Sub_metering_2, type="l", col="red")
lines(plotData$FullDate, plotData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1)
# Cleanup
dev.off()
