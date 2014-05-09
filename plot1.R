
	data<-read.csv("D:\\RWork\\data\\power\\household_power_consumption.txt",sep=";",header=TRUE)
	data$Date<-as.Date(data$Date,format='%d/%m/%Y')
	tmp<-data[data$Date>=as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02"), ]
	png('plot1.png')
	hist(as.numeric(tmp$Global_active_power),main="Global Active Power",xlab="Global Acive Power (kilowatts)",ylab="Frequency",col="Orange",xaxt="n")
	axis(side=1, at=seq(0,0.5, 12))
	dev.off()