#Plot 4
file <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
day2 <- file[which(file$Date == "2/2/2007"),] 
day1 <- file[which(file$Date == "1/2/2007"),] 
data <- rbind(day1, day2)
change_date_time <- strptime(paste(data$Time, data$Date, sep=""),"%H:%M:%S %d/%m/%Y")
png("Plot4.png", width = 480, height = 480)
par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(change_date_time, gl_act_power_kw, type = "l", xlab="", ylab = "Global Active Power",cex=0.2)
plot(change_date_time, data$Voltage, type = "l", xlab="", ylab = "Voltage")
plot(change_date_time, data$Sub_metering_1, type = "n", xlab="", ylab = "Energy Submetering")
lines(change_date_time, data$Sub_metering_1, col="black")
lines(change_date_time, data$Sub_metering_2, col="red")
lines(change_date_time, data$Sub_metering_3, col="blue")
legend ("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty = 1, lwd = 2.5, col = c("black", "red", "blue"))
plot(change_date_time, data$Global_reactive_power, type = "l", ylab = "Global_reactive_power")
dev.off()