# Clean Environment
rm(list=ls())

library(datasets)

# Load the DataSet
hpc <- read.table(file = "household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# Draw plot
png(filename = "plot3.png", width = 480, height = 480,bg="transparent")
plot(strptime(paste(hpc$V1, hpc$V2, sep = ' '), "%d/%m/%Y %H:%M:%S"), hpc$V7, xlab="", ylab="Energy sub metering", main="", type = "l", col = "black")
lines(strptime(paste(hpc$V1, hpc$V2, sep = ' '), "%d/%m/%Y %H:%M:%S"), hpc$V8, type = "l", col = "red")
lines(strptime(paste(hpc$V1, hpc$V2, sep = ' '), "%d/%m/%Y %H:%M:%S"), hpc$V9, type = "l", col = "blue")
legend("topright", lty = c(1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))# Close device
dev.off()
