
	data<-read.csv("D:\\RWork\\data\\power\\household_power_consumption.txt",sep=";",header=TRUE)
	data$Date<-as.Date(data$Date,format='%d/%m/%Y')
	tmp<-data[data$Date>=as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02"), ]
	tmp$DateTime<-paste(tmp$Date,tmp$Time,sep=":")
	tmp$DateTime<-as.POSIXct(strptime(tmp$DateTime, format = "%Y-%m-%d:%H:%M:%S","GMT"))
	png('plot4.png')
	
	par(mfcol=c(2,2))
	
	plot(tmp$DateTime,tmp$Global_active_power,type='l',xlab="",ylab="Global Acive Power",yaxt="n")
	
	plot(tmp$DateTime,tmp$Sub_metering_1,type="l",xlab="",ylab="Energy sub metering")
	lines(tmp$DateTime,tmp$Sub_metering_2,type="l",col="Orange")
	lines(tmp$DateTime,tmp$Sub_metering_3,type="l",col="Blue")
	legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c("black","orange","blue"),lty=1,lwd=2)
	
	plot(tmp$DateTime,tmp$Voltage,type='l',xlab="datatime",ylab="Voltage",yaxt="n")
	
	plot(tmp$DateTime,tmp$Global_reactive_power,type='l',xlab="datatime",ylab="Global_reactive_power",yaxt="n")
	
	dev.off()