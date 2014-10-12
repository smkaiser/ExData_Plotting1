# plot4.R
# Exploratory Data Analysis
# Steve Kaiser
# Oct 10, 2014

# Check for needed variable and read data if necessary
if (!exists("plotData")) {
    source("./readData.R")
}

# Open output device
png(file = "plot4.png", width = 480, height = 480)
# Set graphics defaults
par(mar = c(5,4,2,1), mfrow = c(2,2))

# Upper left plot
with(plotData, plot(FullDate, Global_active_power, type="l", xlab="", ylab="Global Active Power"))

# Upper right
with(plotData, plot(FullDate, Voltage, type="l", xlab="datetime"))

# Lower left
plot(plotData$FullDate, plotData$Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
lines(plotData$FullDate, plotData$Sub_metering_2, type="l", col="red")
lines(plotData$FullDate, plotData$Sub_metering_3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lty=1, bty="n")

# Lower right
with(plotData, plot(FullDate, Global_reactive_power, type="l", xlab="datetime"))

# Cleanup
dev.off()
