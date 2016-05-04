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
# Run hist plot
#
png("c:/coursera/ExploratoryDataAnalysis/Week 1/plot1.png", width=480, height=480)
hist(plotData_DF$Global_active_power, main="Global Active Power", ylim=c(0,1200),
     xlab="Global Active Power (Kilowatts)", border="black", col="red")
dev.off()