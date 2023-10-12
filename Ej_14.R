#Ej 14 practica 2

#Realizar un programa en el cual se ingresen N valores (N se ingresa por pantalla
#al iniciarse el programa) y calcular su media y su desviacion estandar.

rm(list=ls())
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")

maximo<-readline("Ingrese la cantidad de valores que desea ingresar ")
ingresos<-c()
while (length(ingresos) != maximo) {
  if(length(ingresos) == maximo){
    break
  }
  valor<-as.numeric(readline("Ingrese los valores deseados "))
  ingresos<-c(ingresos, valor)
}
print(ingresos)

media<- mean(ingresos)
desvio_estandar<-sd(ingresos)
                
                
                