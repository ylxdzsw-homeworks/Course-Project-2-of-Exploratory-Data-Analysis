plot2 <- function(NEI, SCC){
  Baltimore <- NEI[NEI$fips == "24510",]
  PMayear <- tapply(Baltimore$Emissions,Baltimore$year,sum)
  
  png(filename="plot2.png",width=480,height=480)
  plot(names(PMayear),PMayear,type="b",xlab="Year",ylab="PM2.5")
  title("PM2.5 each year in Baltimore City")
  dev.off()
}