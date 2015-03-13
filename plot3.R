source("load_data.R")

png(file="plot3.png")

plot(Sub_metering_1 ~  as.POSIXct(pdt$Time), pdt, type="l",ylab="Energy sub metering",xlab="")
par(new = TRUE)
plot(Sub_metering_2 ~  as.POSIXct(pdt$Time), pdt, 
     ylim=range(c(Sub_metering_1, Sub_metering_2)), axes = FALSE,
     type="l",ylab="",xlab="", col="red")

par(new = TRUE)
plot(Sub_metering_3 ~  as.POSIXct(pdt$Time), pdt, 
     ylim=range(c(Sub_metering_1, Sub_metering_3)), axes = FALSE,
     type="l",ylab="",xlab="", col="blue")

legend("topright", inset=0,lty=1,  c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col = c("black","red", "blue"), horiz=FALSE)

dev.off()


