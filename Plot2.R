plot2 <- function(dados){
  


  #Setting the system to USA (Running on Windows 7)
  Sys.setlocale("LC_TIME","English")
  
  #Ploting the data
  plot(dados$jtime,dados$Global_active_power,type = "l",xaxt = "n", xlab = "",ylab = "Global Active Power (kilowatts)")
  
  #Setting the x axis to the days of the week
  axis(1,at = c(1,length(dados$Date)/2,length(dados$Date)),c(weekdays(dados$Date[1],abbreviate = T),weekdays(dados$Date[length(dados$Date)],abbreviate = T),weekdays(dados$Date[length(dados$Date)]+days(1),abbreviate = T)))
  

  
}