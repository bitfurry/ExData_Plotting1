data <- read.delim("household_power_consumption.txt",header = T,sep = ";")
data$Date <- as.Date(data$Date ,"%d/%m/%Y")
ans <- rbind(data[data$Date == as.Date("2007-02-01"),],data[data$Date == as.Date("2007-02-02"),])
png("plot1.png")
hist(as.numeric(ans$Global_active_power)/1000,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency",col="red")
dev.off()