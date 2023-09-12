#---------------------- Ejercicio 5. Practica 2 ----------------------
#Seteo el directorio y limpio el environment
#setwd("/home/clinux01/Escritorio/Labo/Practica_2/")
setwd("/home/clinux01/Escritorio/Cande/Practica_2/")
rm(list=ls())

#---------------------- Inciso a ----------------------
#Ingreso de mis variables
a<-as.numeric(readline("Ingrese el numero A"))
b<-as.numeric(readline("Ingrese el numero B"))
a1<-as.integer(a)
b1<-as.integer(b)
c=5 #Aca deberia poner la formula para chequear que sean multiplos

if (a!=a1 | b!=b1){ 
  while(a!=a1){
    readline("Ingrese un numero A ")}
    if(a==a1){
  while(b!=b1){
    if(b==b1) {
      break
    }
    b<-as.numeric(readline("Ingrese un numero B"))}
    b1<-as.integer(b)
    } 
}
  if(a==a1& b==b1){
    if(c==5){
    print("Sus numeros son multiplos")
  } 
    } else {
  print("Los numeros no son multiplos")
  }