#-------------- Ejercicio 4. Práctica 2 --------------
#seteo mi directorio y limpio el environment
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
rm(list=ls())

#------------- Inciso a -------------
#Codigo corregido. Le agregué intervalos de temp
t<-readline("Ingrese la temperatura")
temp<-as.numeric(t)
if(temp<35) {
  print ("Temperatura por debajo de lo normal")
} else if(temp>=35 & temp<37) {
  print ("Temperatura normal")
} else if (temp>=37 & temp<38) {
  print ("Fiebre baja" )
} else if (temp>=38) {
  print ("Fiebre alta")
}

#------------- Inciso b -------------
rm(list=ls()) #Limpio el environment

#Ingreso de variables
x<-readline("Ingrese un día de la semana (puede ser nombre o número, donde el domingo es 1 y el sábado 7)")

#Condiciones
dia<-if (x=="1"|x=="Domingo") {
  print("El día ingresado es el Domingo")
} else if (x=="2"|x=="Lunes") {
  print("El día ingresado es el Lunes")
} else if (x=="3"|x=="Martes") {
  print("El día ingresado es el Martes")
} else if (x=="4"|x=="Miércoles") {
  print("El día ingresado es el Miércoles")
} else if (x=="5"|x=="Jueves") {
  print("El día ingresado es el Jueves")
} else if (x=="6"|x=="Viernes") {
  print("El día ingresado es el Viernes")
} else if (x=="7"|x=="Sábado") {
  print("El día ingresado es el Sábado")
} else {
  print("Ingrese un día válido")
}
