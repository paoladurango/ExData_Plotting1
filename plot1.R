#Plot 1
file <- read.table("household_power_consumption.txt", sep=";", header=TRUE)
day2 <- file[which(file$Date == "2/2/2007"),] 
day1 <- file[which(file$Date == "1/2/2007"),] 
data <- rbind(day1, day2)
gl_act_power <- as.numeric(data$Global_active_power)
gl_act_power_kw <- gl_act_power/1000
png("Plot1.png", width = 480, height = 480 )
hist(gl_act_power_kw, col="red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()