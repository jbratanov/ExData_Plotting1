#
# plot3.R creates plot3.png graph
#
library(datasets)
#
# Read ExtractPlotData function to extract dates
# and format file required for plot3 graph.
# Current version extracts data for Feb 1-2, 2007
#
plotData_DF <- ExtractPlotData()
#str(plotData_DF)

#
# Change sub_meterings variables to numeric
#
plotData_DF$Sub_metering_1 <- as.numeric(plotData_DF$Sub_metering_1)
plotData_DF$Sub_metering_2 <- as.numeric(plotData_DF$Sub_metering_2)
plotData_DF$Sub_metering_3 <- as.numeric(plotData_DF$Sub_metering_3)

#
# Run plot
#
png("c:/coursera/ExploratoryDataAnalysis/Week 1/plot3.png", width=480, height=480)
plot(plotData_DF$plotTime, plotData_DF$Sub_metering_1,
     type="l", xlab="", ylab="Energy sub metering", ylim=c(0,40))
lines(plotData_DF$plotTime, plotData_DF$Sub_metering_2, col="red")
lines(plotData_DF$plotTime, plotData_DF$Sub_metering_3, col="blue")
legend("topright", lty=1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" ))
dev.off()


