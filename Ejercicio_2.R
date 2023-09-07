#--------- Ejercicio 2. Práctica 2 ---------
#Seteo mi directorio
#setwd("/home/clinux01/Escritorio/Cande Labo Jueves/Practica_2/")
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
rm(list=ls()) #Limpio mi environment

#--------- Ejercicio 2 ---------
#--------- Primera fila ---------
#Ingreso los valores
a=F
b=F

#Comandos que me piden
a&b #Da F
a|b 
a==b
a!=b
xor(a,b)
a&(!b)

#--------- Segunda fila ---------
rm(list=ls())
#Ingreso los valores
a=F
b=T

#Comandos que me piden
a&b
a|b
a==b
a!=b
xor(a,b)
a&(!b)

#--------- Tercera fila ---------
rm(list=ls())
#Ingreso los valores
a=T
b=T

#Comandos que me piden
a&b
a|b
a==b
a!=b
xor(a,b)
a&(!b)

#--------- Cuarta fila ---------
rm(list=ls())
#Ingreso los valores
a=T
b=F

#Comandos que me piden
a&b
a|b
a==b
a!=b
xor(a,b)
a&(!b)

