data_file <- "./Exploratory_Data_week1/household_power_consumption.txt"
data_full <- read.table(data_file,sep=";",header=TRUE)
data <- data_full[data_full$Date == "1/2/2007" | data_full$Date == "2/2/2007", ]
data$DateTime <- strptime(paste(as.character(data$Date),as.character(data$Time)),format = "%d/%m/%Y %H:%M:%S")

## ----- Plot 1
png("plot1.png", width = 480, height = 480)
hist(as.numeric(as.character(data$Global_active_power)), col="Red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")       
dev.off()              
               

        
          
   

