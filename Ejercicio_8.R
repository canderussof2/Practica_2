#------- Ejercicio 8 -------
rm(list=ls())
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")

a<-seq(1:10)
cuadrados<-c()
for (i in a){
  cuadrados[i]<-i**2
}
print(cuadrados)

#------- inciso b -------
a<-seq(2,100,by=2)
cuadrados<-c()
for (i in a){
  cuadrados[i]<-i**2
}
print(cuadrados)

