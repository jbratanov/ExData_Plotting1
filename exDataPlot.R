#
# Exploratory Data Analysis - Assignment 1
#
# Examine how household energy usage varies over a 2-day period in February, 2007.
# Your task is to reconstruct the following plots below, all of which were
# constructed using the base plotting system.
#

ExtractPlotData <- function()
{  
#
# Read in the Electric Power Consumption dataset
#
epc_DF <- read.table("c:/coursera/ExploratoryDataAnalysis/Week 1/household_power_consumption.txt", 
                     stringsAsFactors=FALSE, header=TRUE, sep=";")

#
# Convert character to Date Class.  Using "%d/%m/%Y"
# for dd-mm-yyyy string.
#
epc_DF$Date <- as.Date(epc_DF$Date , "%d/%m/%Y")

#
# Extract data for Feb 1-2, 2007 into a separate file.
#
plotDates_DF <- epc_DF[epc_DF$Date %in% as.Date(c('2007-02-01', '2007-02-02')),]
#
# Convert Date and Time columns to one column
#
dateTime <- paste(plotDates_DF$Date, plotDates_DF$Time)
plotTime <- strptime(dateTime, "%Y-%m-%d %H:%M:%S")
plot_DF <- cbind(plotDates_DF, plotTime)
# Drop original Date and Time columns
plotData_DF <- subset( plot_DF, select = -c(Date, Time) )




return(plotData_DF)

}
