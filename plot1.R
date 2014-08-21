plot1 <- function(NEI, SCC){
  PMayear <- tapply(NEI$Emissions,NEI$year,sum)
  
  png(filename="plot1.png",width=480,height=480)
  plot(names(PMayear),PMayear,type="b",xlab="Year",ylab="PM2.5")
  title("PM2.5 each year in US")
  dev.off()
}