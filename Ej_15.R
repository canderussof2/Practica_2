#Ej 15 practica 2

rm(list=ls())
setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")

#Prog pida ingreso nombre y apellido de un estudiante y la cantidad de materias
#aprobo. Luego pedir el ingreso nombre de materia y nota que obtuvo. 

apellido<-readline("Ingrese su apellido ")
nombre<-readline("Ingrese su nombre ")

cant_materias<-as.integer(readline("Ingrese la cantidad de materias aprobadas "))
while(is.na(cant_materias)){
  if(!is.na(cant_materias)){
    break
  } else {
cant_materias<-as.integer(readline("Ingrese nuevamente la cantidad de materias aprobadas "))
 } 
}

#Finalmente, imprimir el siguiente mensaje (Sin las comillas):
#  - “El estudiante NOMBRE y APELLIDO aprobo X materias y su promedio es mayor al promedio
#historico”
#- “El estudiante NOMBRE y APELLIDO aprobo X materias y su promedio es menor al promedio
#historico”
#- “El estudiante NOMBRE y APELLIDO aprobo X materias y su promedio es igual al promedio
#historico”
#segun la relacion entre promedio y promedio historico (8.41) o el sig mensaje:
#  - “El estudiante NOMBRE y APELLIDO no aprobo materias”
#si no aprobo materias.
#El programa debe verificar en cada instancia que la cantidad de materias y la nota obtenida en
#cada caso sean numeros y en caso contrario debe pedir su reingreso.
#* aclaracion: Para resolver este ejercicio no deben usarse nociones de vectores
