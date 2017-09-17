# entire file take too much memory, since we only need 2 days of data, use OS commands to filter

# grep  "^[1|2]/2/2007" household_power_consumption.txt > 20070201_2
# head -1 household_power_consumption.txt > header.txt
# cp header.txt data.txt
# cat 20070201_2 >> data.txt

dat<-read.csv("data.txt",head=T, sep = ';', stringsAsFactors = F, na.strings = '?')
dat<-mutate(dat, DateTime = as.POSIXct(strptime(paste(Date,Time), format = '%d/%m/%Y %H:%M:%S')))