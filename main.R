main_func <- function(){
  
  #This code assumes that the working directory has been set to the oe containing the data file
  #and it is the same directory that will be used as a destination to the graphs
  
  #Setting the packages
  #install.packages("lubridate")
  library(lubridate)
  
  #Setting the global environment to 1 plot per picture
  par(mfcol=c(1,1))
  

  #Reading the data into a dataset
  dados <- read.csv("household_power_consumption.txt", sep=";", stringsAsFactors = F, header = T,
                    na.strings = "?")
  #Changing the dates strings into dates
  dados$Date <- strptime(dados$Date,format = "%d/%m/%Y")
  #Change the time string into a POSIXct
  dados$Time <- strptime(dados$Time,format = "%H:%M:%S")
  
  #getting only the days requested
  
  dados <- subset(dados,(year(Date)==2007 & month(Date)==02 & (day(Date)==01|day(Date)==02)))

  #Arranging the two days so that the two days can be displayed in sewuence
  dados$jtime <- (day(dados$Date)-1)*24*60 + hour(dados$Time)*60 +minute(dados$Time)
  
  #Loading the functions
  source("Plot1.R")
  source("Plot2.R")
  source("Plot3.R")
  source("Plot4.R")
  
  #Plotting
  plot1(dados)
  #Saving as a png
  dev.copy(png,file = "Plot1.png", height = 480, width = 480)
  dev.off()
  
  plot2(dados)
  #Saving as a png
  dev.copy(png,file = "Plot2.png", height = 480, width = 480)
  dev.off()
  
  plot3(dados)
  #Saving as a png
  dev.copy(png,file = "Plot3.png", height = 480, width = 480)
  dev.off()
  
  plot4(dados)
  #Saving as a png
  dev.copy(png,file = "Plot4.png", height = 480, width = 480)
  dev.off()
}