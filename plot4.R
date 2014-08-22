plot4 <- function(NEI, SCC){
  PMfromCoal <- NEI[unclass(SCC[match(NEI$SCC,SCC$SCC),"EI.Sector"]) %in% c(13,18,23),]
  PMayearfromCoal <- tapply(PMfromCoal$Emissions,PMfromCoal$year,sum)
  
  png(filename="plot4.png",width=480,height=480)
  plot(names(PMayearfromCoal),PMayearfromCoal,type="b",xlab="Year",ylab="PM2.5")
  title("PM2.5 each year that from Coal")
  dev.off()
}