if (!exists("dat"))
  if(!exists("load.R", mode="function")) 
    source("load.R")

png(filename = "hist1.png", width = 480, height = 480)

hist(dat$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")

dev.off()