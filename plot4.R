# Plot 4

png("./Figures/plot4.png")

par(mfrow = c(2,2), mar = c(4,4,2,2), oma = c(1,1,0,2), width = 500, height = 450)
with(project_cons, {
      #Graph 1
          plot(project_cons$Global_active_power~project_cons$date_time,
             lwd=1 , 
             type="l", 
             xaxt = "n",
             ylab = "Global Active Power",
             xlab = ""
        )
        axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))
        #Graph 2
        
         plot(project_cons$Voltage~project_cons$date_time,
             lwd=1 , 
             type="l", 
             xaxt = "n",
             ylab = "Voltage",
             xlab = "datetime"
        )
        axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))
        
        #Graph 3
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
               bty = "n",
               pch = "_", col = c("black", "red", "blue")
               #x.intersp = -3.5,
               #y.intersp = 0.5,
               #xjust = 0.5,
               #yjust = -0.9,
               #adj = c(-0.9,0)
        )
        
        axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))
        
        #Graph 4
        plot(project_cons$Global_reactive_power~project_cons$date_time,
             lwd=1 , 
             type="l", 
             xaxt = "n",
             ylab = "Global_reactive_power",
             xlab = "datetime"
        )
        axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))
        
})

dev.off()