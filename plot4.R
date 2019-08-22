data_file <- "./Exploratory_Data_week1/household_power_consumption.txt"
data_full <- read.table(data_file,sep=";",header=TRUE)
data <- data_full[data_full$Date == "1/2/2007" | data_full$Date == "2/2/2007", ]
data$DateTime <- strptime(paste(as.character(data$Date),as.character(data$Time)),format = "%d/%m/%Y %H:%M:%S")

## ----- Plot 4
png("plot4.png", width = 480, height = 480)
par(mfrow=c(2,2))
#1,1
plot(data$DateTime, as.numeric(as.character(data$Global_active_power)),type="l", ylab = "Global Active Power (kilowatts)", xlab = "") 
#1,2
plot(data$DateTime, as.numeric(as.character(data$Voltage)),type="l", ylab = "Voltage", xlab = "datetime") 
#2,1
plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)),type="l", ylab = "Energy sub meeting", xlab = "") 
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_2)), col="red")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_3)), col="blue") 
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col = c("black","red","blue"),lty=1)
#2,2
plot(data$DateTime, as.numeric(as.character(data$Global_reactive_power)),type="l", ylab = "Global_reactive_power", xlab = "datetime")
dev.off()