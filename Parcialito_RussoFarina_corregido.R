#Hacer un programa que pida el ingreso de un n´umero de dia del mes de Agosto entre 1 y 31. Verifique
#que el numero ingresado sea valido. Luego, pida ingresar los valores de temperatura (T) de cada dıa en
#el mes de Agosto de 2023. Luego, calcule el valor medio de la temperatura durante el mes de Agosto.
#Finalmente, el codigo debe imprimir por consola el siguiente mensaje correspondiente (Sin las comillas):
  #-“El dıa NUMERO DE DIA INGRESADO (X) del mes de Agosto la temperatura fue de T ºC,
#es decir debajo de la media mensual”
#- “El dıa NUMERO DE DIA INGRESADO (X) del mes de Agosto la temperatura fue de T ºC,
#es decir por encima de la media mensual”
#- “El dıa NUMERO DE DIA INGRESADO (X) del mes de Agosto la temperatura fue de T ºC,
#es decir igual a la media mensual”
#seg´un la relacion entre el valor diario (T del dıa X) y el promedio mensual calculado.
#El programa debe verificar en cada instancia que los valores de temperatura y el promedio mensual
#sean n´umeros y en caso contrario debe comunicar el error.
#* aclaracion: Para resolver este ejercicio no deben usarse nociones de vectore

rm(list=ls()) #Limpio el environment
#setwd("/home/clinux01/Escritorio/Cande Labo Jueves/") #Seteo el directorio}
#setwd("/Users/cande/Desktop/Cande/UBA/2do año/Labo/Práctica mia/")
setwd("/home/clinux01/Escritorio/Cande Labo Martes/Practica_2/")
#Ingreso de los dias
diaingresado<-as.integer(readline("Ingrese un día del mes de Agosto"))

#Para que el ingreso de dias sea entre los dias reales de agosto, es decir entre el 1 y el 31
while(diaingresado <1 | diaingresado >31){
  diaingresado <-as.integer(readline("Ingrese nuevamente un dia del mes de Agosto"))
  if(diaingresado <=31 & diaingresado >=1){
    break
  } else { #Esto chequear
    diaingresado <-as.integer(readline("Ingrese nuevamente un dia del mes de Agosto"))
  }
}

#Ingreso de la temperatura
agosto <- seq(1:31)
temperatura<-0
for (dia in agosto) {
  t<-as.numeric(readline("Ingrese la temperatura")) #as.numeric () 
  while (is.na(t)){ #poner (na()== TRUE) es lo mismo pero es mejor poner is.na()
    t<-as.numeric(readline("Ingrese nuevamente la temperatura")) #as.numeric () 
  }
  temperatura<-temperatura + t
  if (dia==diaingresado){
    tempquiero<-t
  }
}

#Calculo del promedio 
prom<-temperatura/31 #divido por 31 dias de agosto

#Impresión por consola, sin las comillas

if(tempquiero<prom){
    cat("El dia",diaingresado,"del mes de Agosto, la temperatura fue de",tempquiero,"°C, es decir debajo de la media mensual","\n")
  } else if (tempquiero>prom) {
    cat("El dia",diaingresado,"del mes de Agosto, la temperatura fue de", tempquiero,"°C, es decir encima de la media mensual","\n")
  } else {
    cat("El dia",diaingresado,"del mes de Agosto, la temperatura fue de",tempquiero,"°C, es decir igual a la media mensual","\n")
  }




