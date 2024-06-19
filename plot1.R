#Plot 1

class(project_cons$Global_active_power)

project_cons$Global_active_power <- as.numeric(project_cons$Global_active_power) # Convert to numeric
png("./Figures/plot1.png", width = 480, height = 480)
hist(project_cons$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
dev.off()
