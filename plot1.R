# Clean Environment
rm(list=ls())

library(datasets)

# Load the DataSet
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Draw plot
png(filename = "plot1.png", width = 480, height = 480,bg="transparent")
hist(hpc$V3, main="Global Active Power", xlab="Global Active Power (Kilowatts)", col="red")

# Close device
dev.off()
