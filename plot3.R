plot3 <- function(NEI, SCC){
  library(ggplot2)
  Baltimore <- NEI[NEI$fips == "24510",]
  PMperyearpertype <- aggregate(Emissions ~ year + type,data = Baltimore,FUN=sum)
  
  png(filename="plot3.png",width=960,height=960)
  print(qplot(year,Emissions,data=PMperyearpertype,facets= . ~ type,
              main="PM2.5 of diffrent type in Baltimore",geom=c("point","line")))
  dev.off()
}