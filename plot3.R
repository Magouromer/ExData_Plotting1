#Plot 3

#Check class of variables
class(project_cons$Sub_metering_1)
class(project_cons$Sub_metering_2)
class(project_cons$Sub_metering_3)

# Convert variables to numeric
project_cons$Sub_metering_1 <- as.numeric(project_cons$Sub_metering_1)
project_cons$Sub_metering_2 <- as.numeric(project_cons$Sub_metering_2)




png("./Figures/plot3.png", width = 480, height = 480)

plot(project_cons$Sub_metering_1~project_cons$date_time, 
     lwd=1 , 
     type="l", 
     xaxt = "n",
     ylab = "Energy sub metering",
     xlab = "",
     col = "black"
)

lines(project_cons$date_time, project_cons$Sub_metering_2, 
             lwd=1 , 
             col = "red"
)

lines(project_cons$date_time, project_cons$Sub_metering_3, 
      lwd=1 , 
      col = "blue"
)

legend(x= "topright", 
       legend = c("Sub_metering_1","Sub_metering_2", "Sub_metering_3"),
       pch = "_", col = c("black", "red", "blue")
       #x.intersp = -3.5,
       #y.intersp = 0.5,
       #xjust = 0.5,
       #yjust = -0.9,
       #adj = c(-0.9,0)
 )

axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))

dev.off()

