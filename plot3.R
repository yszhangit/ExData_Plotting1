png(filename = "hist3.png", width = 480, height = 480)
plot(dat$DateTime, dat$Sub_metering_1, type='l', xlab="", ylab="Energy Sub Metering")
points(dat$DateTime, dat$Sub_metering_2, type='l', col="red")
points(dat$DateTime, dat$Sub_metering_3, type='l', col="blue")
legend("topright", col=c("black","blue","red"),
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=c(1,1,1)
       )
dev.off()