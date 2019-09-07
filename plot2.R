
data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

filterdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]


#######START########
daytime <- strptime(paste(filterdata1$Date, filterdata1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

plotdata1 <- as.numeric(filterdata1$Global_active_power)

png("plot2.png", width=480, height=480)

plot(daytime, plotdata1, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()

#######FINISH#########

##Mochamad Gilang Saputra