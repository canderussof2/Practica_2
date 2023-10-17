#Ej 15 practica 2

rm(list=ls())
#setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
setwd("/home/clinux01/Escritorio/Cande Labo Martes/Practica_2/")
#Prog pida ingreso nombre y apellido de un estudiante y la cantidad de materias
#aprobo. Luego pedir el ingreso nombre de materia y nota que obtuvo. 
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

if (cant_materias==0){
  cat("El estudiante", nombre,apellido,"no aprobó materias","\n")
} else {
secuencia<-seq(1,cant_materias,by=1)

notas<-c()
for(valor in secuencia){
  nota_materias<-as.integer(readline("Ingrese la nota de cada materia "))
  while(is.na(nota_materias)){
    if(!is.na(nota_materias)){
      break
    } else {
      nota_materias<-as.integer(readline("Ingrese nuevamente la nota de cada materia "))
    } 
  }
  notas<-c(notas,nota_materias)
}
promedio<-mean(notas)

if(promedio>8.41){
  cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es mayor al promedio
      historico","\n")
} else if (promedio==8.41){
  cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es igual al promedio
      historico","\n")
} else if (promedio<8.41){
  cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es menor al promedio
      historico","\n")
 }
}  
#-------------------------------------------------------------------------------
rm(list=ls())
#setwd("/Users/Usuario/Desktop/Cande/Laboratorio de Procesamiento de Información meteorológica/Practica_2/")
setwd("/home/clinux01/Escritorio/Cande Labo Martes/Practica_2/")
#SIN VECTORES
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

if (cant_materias==0){
  cat("El estudiante", nombre,apellido,"no aprobó materias","\n")
} else {
  secuencia<-seq(1,cant_materias,by=1)
  notas<-0
  for(nota in secuencia){
    nota<-as.integer(readline("Ingrese la nota de cada materia "))
    while(is.na(nota)){
      if(!is.na(nota)){
        break
      } else {
       nota<-as.integer(readline("Ingrese nuevamente la nota de cada materia "))
      } 
    }
    notas<-notas+nota
  }
  promedio<-notas/cant_materias
  print(notas)
  if(promedio>8.41){
    cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es mayor al promedio
      historico","\n")
  } else if (promedio==8.41){
    cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es igual al promedio
      historico","\n")
  } else if (promedio<8.41){
    cat("El estudiante", nombre,apellido,"aprobó",cant_materias,"materias y su promedio es menor al promedio
      historico","\n")
  }
}  

  
  