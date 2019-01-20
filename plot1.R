
setwd("C:/Users/ACER/Datasciencecoursera/Exploratory Data Analysis/Week 1/Project")
getwd()

data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

#convert the date to date class

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

##subset the data

data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# Convert dates and times
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")



hist(data$Global_active_power, main = "Global Active Power",  xlab = "Global Active Power (kilowatts)", col = "Red")
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()


