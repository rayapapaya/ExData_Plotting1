library(dplyr)
library(lubridate)

# reading in the data
data <- read.table("household_power_consumption.txt", sep = ";", skip = 66637, nrows = 2880)

# removing names rows and irrelevant variables. then coercing to numeric
data <- data %>% select(V3) %>% mutate(V3 = as.numeric(as.character(V3)))

# generate the histogram
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")
#save to PNG file
dev.copy(png, file="plot1.png", width=480, height=480)
dev.off()

