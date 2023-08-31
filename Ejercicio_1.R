#--------- Ejercicio 1 ---------
#Seteo mi directorio
setwd("/home/clinux01/Escritorio/Cande Labo Jueves/Practica_2/")
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