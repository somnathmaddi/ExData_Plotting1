
	data<-read.csv("D:\\RWork\\data\\power\\household_power_consumption.txt",sep=";",header=TRUE)
	data$Date<-as.Date(data$Date,format='%d/%m/%Y')
	tmp<-data[data$Date>=as.Date("2007-02-01") & data$Date<=as.Date("2007-02-02"), ]
	tmp$DateTime<-paste(tmp$Date,tmp$Time,sep=":")
	tmp$DateTime<-as.POSIXct(strptime(tmp$DateTime, format = "%Y-%m-%d:%H:%M:%S","GMT"))
	png('plot2.png')
	plot(tmp$DateTime,tmp$Global_active_power,type='l',xlab="",ylab="Global Acive Power",yaxt="n")
	plot(tmp$DateTime,tmp$Voltage,type='l',xlab="datatime",ylab="Voltage",yaxt="n")
	dev.off()	
	
	
	
	
	
	
	
	
	
	
	
	
	
	