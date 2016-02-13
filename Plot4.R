plot4 <- function(dados){
  
  #Setting the canvas to receive 4 plots
  par(mfcol = c(2,2), mar = c(4,4,0.5,1))
  
  #Plot 1
  plot2(dados)
  
  #PLot 2
  plot3(dados)
  
  #Plot 3
  #Plotting the data
  plot(dados$jtime,dados$Voltage, type="l",xaxt = "n", ylab = "Voltage", xlab = "datetime")
  axis(1,at = c(1,length(dados$Date)/2,length(dados$Date)),c(weekdays(dados$Date[1],abbreviate = T),weekdays(dados$Date[length(dados$Date)],abbreviate = T),weekdays(dados$Date[length(dados$Date)]+days(1),abbreviate = T)))
  
  #Plot 4
  #Plotting the data
  plot(dados$jtime,dados$Global_reactive_power, type="l",xaxt = "n", ylab = "Global_Reactive_Power", xlab = "datetime")
  axis(1,at = c(1,length(dados$Date)/2,length(dados$Date)),c(weekdays(dados$Date[1],abbreviate = T),weekdays(dados$Date[length(dados$Date)],abbreviate = T),weekdays(dados$Date[length(dados$Date)]+days(1),abbreviate = T)))
  

}