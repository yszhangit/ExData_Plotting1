png(filename = "hist4.png", width = 480, height = 480)

par(mfrow=c(2,2))

plot(dat$DateTime, dat$Global_active_power, type="l", xlab="", ylab="Global Active Power")
plot(dat$DateTime, dat$Voltage, type="l", xlab="datetime", ylab="Voltage")
plot(dat$DateTime, dat$Sub_metering_1, type='l', xlab="", ylab="Energy Sub Metering")
points(dat$DateTime, dat$Sub_metering_2, type='l', col="red")
points(dat$DateTime, dat$Sub_metering_3, type='l', col="blue")
legend("topright", col=c("black","blue","red"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1),
       bty="n"
)

plot(dat$DateTime, dat$Global_reactive_power, type="l", xlab="datetime", ylab="Global Reactive Power")

dev.off()
