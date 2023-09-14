#---------- Clase 07/09 ----------
#---------- Ejercicios integradores ----------
setwd("/home/clinux01/Escritorio/Cande Labo Jueves/Practica_2/")
#---------- Ejercicio 1 ----------
rm(list=ls())
#Programa que almacene la cadena de caracteres contraseña en una variable, pregunte al usuario por la contraseña hasta que introduzca la contraseña correcta.

#Contraseña correcta
x<-"Luke y Memi"
contrasenia<-readline("Ingrese la contraseña")

if(contrasenia == x) {
  print("Podes entrar al VIP")
} else {
  repeat{
    if (contrasenia==x){
      print("Podes entrar al VIP")
      break
    } else {
      contrasenia<-readline("Ingrese nuevamente la contraseña") 
    }
  }
}


#---------- Ejercicio 2 ----------
#Programa que muestre el eco de todo lo que el usuario introduzca hasta que el usuario escriba “salir” que terminara.
rm(list=ls())

frase<-readline("Ingrese lo que quiera")
salir<-"salir"

repeat {
  if(frase==salir) {
    print("salió del sistema :)")
    break
  } else {
    print(frase)
    frase<-readline("Ingrese lo que quiera")
  }
}


#---------- Ejercicio 4 ----------
rm(list=ls())
#Programa en el que se pregunte al usuario por una frase y una letra, y muestre por pantalla el número de veces que aparece la letra en la frase

frase<-readline("Ingrese una frase")
letra<-readline("Ingrese una letra")
<<<<<<< HEAD
sep<-strsplit(frase,"") #Para separar los caracteres de frase
rep<-numeric()

for(i in nchar(sep)){
  if (i==letra){
    rep[i]<-rep[i] + 1
=======
fras<-strsplit(frase,"")[[1]] #Para separar los caracteres de frase

c<-0
for(i in fras){
  if (i==letra){
    c <- c + 1
>>>>>>> a4a4ec0f32f5e767c1af22c802665d0404d28dc5
  }
  print(c)
}
<<<<<<< HEAD
=======
print(c)
>>>>>>> a4a4ec0f32f5e767c1af22c802665d0404d28dc5





















