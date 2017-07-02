#Plot 2
file <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
day2 <- file[which(file$Date == "2/2/2007"),] 
day1 <- file[which(file$Date == "1/2/2007"),] 
data <- rbind(day1, day2)
change_date_time <- strptime(paste(data$Time, data$Date, sep=""),"%H:%M:%S %d/%m/%Y")
png("Plot2", width = 480, height = 480)
plot(change_date_time, gl_act_power_kw, type = "l", xlab="", ylab = "Global Active Power (kilowatts)")
dev.off()