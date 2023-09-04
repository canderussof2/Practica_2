#-------------- Ejercicio 3. Práctica 2 --------------
#seteo mi directorio y limpio el environment
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
rm(list=ls())

#Ingreso de la variable y convierte a numeric
numero<-readline("Ingrese su número")
x<-as.numeric(numero)

#Defino y1 (cuando x>0), y2 (cuando x=0) e y3 (cuando x<0)
y1=5+(1+3*x^2)^(1/2) 
y2=0
y3=1-(1+5*x^2)^(1/2)

#Condiciones
calculo<- if(x>0){
  print(paste("Su resultado es",y1))
} else if (x<0) {
  print(paste("Su resultado es",y3))
} else {
  print(paste("Su resultado es",y2))
}



