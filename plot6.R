plot6 <- function(NEI, SCC){
  Baltimore <- NEI[NEI$fips == "24510",c("year","SCC","Emissions")]
  PMfromMotorinBaltimore <- Baltimore[unclass(SCC[match(Baltimore$SCC,SCC$SCC),"EI.Sector"])==52,]
  PMayearfromMotorinBaltimore <- tapply(PMfromMotorinBaltimore$Emissions,PMfromMotorinBaltimore$year,sum)
  
  LosAngeles <- NEI[NEI$fips == "06037",c("year","SCC","Emissions")]
  PMfromMotorinLosAngeles <- LosAngeles[unclass(SCC[match(LosAngeles$SCC,SCC$SCC),"EI.Sector"])==52,]
  PMayearfromMotorinLosAngeles <- tapply(PMfromMotorinLosAngeles$Emissions,PMfromMotorinLosAngeles$year,sum)
  
  
  png(filename="plot6.png",width=480,height=480)
  plot(append(names(PMayearfromMotorinLosAngeles),names(PMayearfromMotorinBaltimore)),
       append(PMayearfromMotorinLosAngeles,PMayearfromMotorinBaltimore),
       type="n",xlab="Year",ylab="PM2.5")
  lines(names(PMayearfromMotorinLosAngeles),PMayearfromMotorinLosAngeles,type="b",pch="o")
  lines(names(PMayearfromMotorinBaltimore),PMayearfromMotorinBaltimore,type="b",pch="+")
  legend("topright",legend = c("LosAngeles","Baltimore"),pch=c("o","+"))
  title("PM2.5 each year from Motor")
  dev.off()
}