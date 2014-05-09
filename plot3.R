
	data<-read.csv("D:\\RWork\\data\\power\\household_power_consumption.txt",sep=";",header=TRUE)
	data$Date<-as.Date(data$Date,format='%d/%m/%Y')
	tmp<-data[data$Date>=as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02"), ]
	tmp$DateTime<-paste(tmp$Date,tmp$Time,sep=":")
	tmp$DateTime<-as.POSIXct(strptime(tmp$DateTime, format = "%Y-%m-%d:%H:%M:%S","GMT"))
	png('plot3.png')
	plot(tmp$DateTime,tmp$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
	lines(tmp$DateTime,tmp$Sub_metering_2,type="l",col="Orange")
	lines(tmp$DateTime,tmp$Sub_metering_3,type="l",col="Blue")
	legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","orange","blue"),lty=1,lwd=2)
	dev.off()