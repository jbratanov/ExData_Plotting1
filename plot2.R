#
# plot1.R creates plot1.png graph
#
library(datasets)
#
# Read ExtractPlotData function to extract dates
# and format file required for plot1 graph.
# Current version extracts data for Feb 1-2, 2007
#
plotData_DF <- ExtractPlotData()
#str(plotData_DF)

#
# Change Global_active_power variable to numeric
#
plotData_DF$Global_active_power <- as.numeric(plotData_DF$Global_active_power)


#
# Run plot
#
png("c:/coursera/ExploratoryDataAnalysis/Week 1/plot2.png", width=480, height=480)
plot(plotData_DF$Global_active_power~plotData_DF$plotTime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
dev.off()

