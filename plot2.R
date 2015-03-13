source("load_data.R")

png(file="plot2.png")
plot(Global_active_power ~  as.POSIXct(pdt$Time), pdt, type="l",ylab="Global Active Power (kilowatts)",xlab="")
dev.off()


