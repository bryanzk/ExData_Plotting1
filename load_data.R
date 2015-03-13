require(data.table)

dt <- fread("household_power_consumption.txt",na.strings="?", stringsAsFactors = FALSE)
tar1 <- dt[dt$Date=="1/2/2007",]
tar2 <- dt[dt$Date=="2/2/2007",]
pdt = rbind(tar1, tar2)
pdt$Date <- as.Date(pdt$Date, "%d/%m/%Y")
pdt$Time <- as.character(strptime(paste(pdt$Date, pdt$Time), format="%Y-%m-%d %H:%M:%S"))
pdt$Global_active_power <- as.numeric(pdt$Global_active_power)
pdt$Global_reactive_power <- as.numeric(pdt$Global_reactive_power)
pdt$Voltage <- as.numeric(as.character(pdt$Voltage))
pdt$Global_intensity <- as.numeric(pdt$Global_intensity)
pdt$Sub_metering_1 <- as.numeric(pdt$Sub_metering_1)
pdt$Sub_metering_2 <- as.numeric(pdt$Sub_metering_2)
pdt$Sub_metering_3 <- as.double(pdt$Sub_metering_3)
