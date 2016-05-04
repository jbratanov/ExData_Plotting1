#
# plot4.R creates plot4.png graph
#
library(datasets)
#
# Read ExtractPlotData function to extract dates
# and format file required for plot4 graph.
# Current version extracts data for Feb 1-2, 2007
#
plotData_DF <- ExtractPlotData()
#str(plotData_DF)

#
# Change variables to numeric
#
plotData_DF$Voltage <- as.numeric(plotData_DF$Voltage)
plotData_DF$Global_active_power <- as.numeric(plotData_DF$Global_active_power)
plotData_DF$Global_reactive_power <- as.numeric(plotData_DF$Global_reactive_power)
plotData_DF$Sub_metering_1 <- as.numeric(plotData_DF$Sub_metering_1)
plotData_DF$Sub_metering_2 <- as.numeric(plotData_DF$Sub_metering_2)
plotData_DF$Sub_metering_3 <- as.numeric(plotData_DF$Sub_metering_3)

png("c:/coursera/ExploratoryDataAnalysis/Week 1/plot4.png", width=480, height=480)

# Create 2 rows and 2 columns
par(mfrow=c(2,2))

#plot top left
plot(plotData_DF$plotTime,plotData_DF$Global_active_power,type="l",ylab="Global Active Power",xlab="")

#plot top right
plot(plotData_DF$plotTime,plotData_DF$Voltage,type="l",ylab='Voltage',xlab="datetime")

#plot bottom left
plot(plotData_DF$plotTime,plotData_DF$Sub_metering_1,type="l",ylab="Engery sub metering",xlab="")
lines(plotData_DF$plotTime,plotData_DF$Sub_metering_2,type="l",col='red')
lines(plotData_DF$plotTime,plotData_DF$Sub_metering_3,type="l",col='blue')
legend("topright",cex =0.8,bty = 'n',lty = 1,
       col = c("black", "red", "blue"),legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot bottom right
plot(plotData_DF$plotTime,plotData_DF$Global_reactive_power,type="l", ylab="Global_reactive_power", xlab="datetime")

dev.off()