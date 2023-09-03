#--------- Ejercicio 1 ---------
#Seteo mi directorio
#setwd("/home/clinux01/Escritorio/Cande Labo Jueves/Practica_2/")
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
rm(list=ls()) #Limpio mi environment

#--------- Inciso a ---------

#Defino mis variables
a<-as.logical()
b<-5
c<-10

a<-(3<4) #Da T #Al a ser una variable logica, los resultados me aparecen en el environment
a<-(b<=c) #Da T
a<-(b==c) #Da F
a<-(b!=c) #Da T

#--------- Inciso b ---------
rm(list=ls())
a=T
b=F

#Pruebo comandos
islogical(a) #No funciona, lo corrijo
is.logical(a) #Da T q tiene sentido 

(a&b) #Da F

(a|b) #Da T

(!b) #Da T porque es la negación de b y b es F

is.logical(a|b) #Da T
