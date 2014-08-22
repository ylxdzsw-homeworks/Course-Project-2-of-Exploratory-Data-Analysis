plot5 <- function(NEI, SCC){
  Baltimore <- NEI[NEI$fips == "24510",]
  PMfromMotorinBaltimore <- Baltimore[unclass(SCC[match(Baltimore$SCC,SCC$SCC),"EI.Sector"])==52,]
  PMayearfromMotorinBaltimore <- tapply(PMfromMotorinBaltimore$Emissions,PMfromMotorinBaltimore$year,sum)
  
  png(filename="plot5.png",width=480,height=480)
  plot(names(PMayearfromMotorinBaltimore),PMayearfromMotorinBaltimore,type="b",xlab="Year",ylab="PM2.5")
  title("PM2.5 from Motor in Baltimore City")
  dev.off()
}