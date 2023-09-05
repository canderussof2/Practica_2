#---------------------- Ejercicio 5. Práctica 2 ----------------------
#Seteo el directorio y limpio el environment
setwd("/home/clinux01/Escritorio/Labo/Practica_2/")
rm(list=ls())

#---------------------- Inciso a ----------------------
#Ingreso de mis variables
a<-as.numeric(readline("Ingrese el número A"))
b<-as.numeric(readline("Ingrese el número B"))
a1<-as.integer(a)
b1<-as.integer(b)
c=5 #Acá debería poner la formula para chequear que sean múltiplos

if (a!=a1 | b!=b1){
  print("Ingrese un numero entero")
} else {
  if(c==5){
    print("Sus números son múltiplos")
  } else {
  print("Los números no son múltiplos")
  }
}
