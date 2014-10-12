# plot2.R
# Exploratory Data Analysis
# Steve Kaiser
# Oct 10, 2014

# Check for needed variable and read data if necessary
if (!exists("plotData")) {
    source("./readData.R")
}
# Open output device
png(file = "plot2.png", width = 480, height = 480)
# Set graphics defaults
par(mar = c(5,4,2,1))
# Create plot
with(plotData, plot(FullDate, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
# Cleanup
dev.off()
