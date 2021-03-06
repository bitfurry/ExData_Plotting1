data <- read.delim("household_power_consumption.txt",header = T,sep = ";")
data$Date <- as.Date(data$Date ,"%d/%m/%Y")
ans <- rbind(data[data$Date == as.Date("2007-02-01"),],data[data$Date == as.Date("2007-02-02"),])
png("plot2.png")
plot(as.numeric(ans$Global_active_power)/1000,type = "l" ,ylab = "Global Active Power(kilowatts)")
dev.off()