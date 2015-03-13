source("load_data.R")

png(file="plot4.png")
par(mfrow=c(2,2))

with(pdt, {
    # plot 1
    plot(Global_active_power ~  as.POSIXct(pdt$Time), type="l",ylab="Global Active Power",xlab="")
    # plot 2 
    plot(Voltage ~  as.POSIXct(pdt$Time), type="l",ylab="Voltage",xlab="datetime")    
    # plot 3
    plot(Sub_metering_1 ~  as.POSIXct(pdt$Time), type="l",ylab="Energy sub metering",xlab="")
    par(new = TRUE)
    plot(Sub_metering_2 ~  as.POSIXct(pdt$Time),
         ylim=range(c(Sub_metering_1, Sub_metering_2)), axes = FALSE,
         type="l",ylab="",xlab="", col="red")
    par(new = TRUE)
    plot(Sub_metering_3 ~  as.POSIXct(pdt$Time), 
         ylim=range(c(Sub_metering_1, Sub_metering_3)), axes = FALSE,
         type="l",ylab="",xlab="", col="blue")    
    legend("topright", inset=0,lty=1, bty="n",  c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red", "blue"), horiz=FALSE)
    
    #plot4
    plot(Global_reactive_power ~  as.POSIXct(pdt$Time), type="l",xlab="datetime")
})

dev.off()