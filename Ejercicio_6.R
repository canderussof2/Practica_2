#---------------------- Ejercicio 6. Práctica 2 ----------------------
#Seteo el directorio y limpio el environment
setwd("/home/clinux01/Escritorio/Labo/Practica_2/")
rm(list=ls())

sueldo<-as.numeric(readline("Ingrese su sueldo"))
s1=                                                                                                                                                                                                                                         
s2
s3
s4

if(sueldo>=0 & sueldo<6000){
  print("No paga impuestos")
} else if (sueldo>=6000 & sueldo<20000){
  print (s1)
} else if (sueldo>=20000 & sueldo<50000){
  print (s2)
} else if (sueldo>=50000 & sueldo<60000){
  print (s3)
} else if (sueldo>=6000){
  print (s4)
} else {
  print("Ingresa bien el sueldo rata, cobras en negativo?")
}