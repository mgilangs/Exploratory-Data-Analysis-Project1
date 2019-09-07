
data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

filterdata1 <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]


#######START########
plotdata1 <- as.numeric(as.character(filterdata1$Global_active_power))

png("plot1.png", width=480, height=480)

hist(plotdata1,col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.off()

#######FINISH#########

##Mochamad Gilang Saputra