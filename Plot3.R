plot3 <- function(dados){
  

  #Creating the canvas by plotting the sub metering 1 in black
  plot(dados$jtime,dados$Sub_metering_1,type = "l",xaxt = "n",xlab = "",col = "black",ylab = "Energy sub metering")
  
  #Adding sub metering 2 in blue to look like the graph
  points(dados$jtime, dados$Sub_metering_2,type = "l",col = "red")
  
  #Adding sub metering 3 to look like the exercise
  points(dados$jtime, dados$Sub_metering_3,type = "l",col = "blue")
  
  #Adding the weekdays on the x axis
  axis(1,at = c(1,length(dados$Date)/2,length(dados$Date)),c(weekdays(dados$Date[1],abbreviate = T),weekdays(dados$Date[length(dados$Date)],abbreviate = T),weekdays(dados$Date[length(dados$Date)]+days(1),abbreviate = T)))
  
  #Adding the graph's legend
  legend("topright",legend = names(dados)[7:9],pch = "_",col = c("black","red","blue"))
  

}