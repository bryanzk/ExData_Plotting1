
source("load_data.R")

png(file="plot1.png")
hist(pdt$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()


