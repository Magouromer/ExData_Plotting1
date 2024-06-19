# Plot 2

#Find row number of time "00:00:00" for Thursday and Friday
which(grepl("00:00:00", project_cons$Time))

png("./Figures/plot2.png", width = 480, height = 480)
plot(project_cons$Global_active_power~project_cons$date_time,
     lwd=1 , 
     type="l", 
     xaxt = "n",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)
axis(side=1,at=c(project_cons$date_time[1],project_cons$date_time[1441], project_cons$date_time[2880]),labels=c("Thu","Fri","Sat"))
dev.off()
