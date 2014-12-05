# Clean Environment
rm(list=ls())

library(datasets)

# Load the DataSet
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Draw plot
png(filename = "plot2.png", width = 480, height = 480,bg="transparent")
with(hpc, plot(strptime(paste(hpc$V1, hpc$V2, sep = ' '), "%d/%m/%Y %H:%M:%S"), hpc$V3, ylab="Global Active Power (Kilowatts)", xlab="", type = "l"))
# Close device
dev.off()
