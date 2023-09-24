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
setwd("/Users/cande/Desktop/Cande/UBA/2do año/Labo/Práctica mia/")
#Ingreso de los dias
dia<-as.integer(readline("Ingrese un día del mes de Agosto"))

#Para que el ingreso de dias sea entre los dias reales de agosto, es decir entre el 1 y el 31
while(dia<1 | dia>31){
  dia<-as.integer(readline("Ingrese un dia del mes de Agosto"))
  if(dia>=1 | dia<=31){
    break
  }
}

#Ingreso de la temperatura
agosto <- seq(1:31)
for (dia in agosto) {
  temperatura<-readline("Ingresela temperatura")
  temperatura[dia]<-temperatura
  }


#Calculo del promedio 
prom<-mean(t)

#Impresión por consola, sin las comillas

for(valor in t){
  if(valor<prom){
    cat("El dia",dia,"del mes de Agosto, la temperatura fue de",valor,"°C, es decir debajo de la media mensual","\n")
  } else if (valor>prom) {
    cat("El dia",dia,"del mes de Agosto, la temperatura fue de", valor,"°C, es decir encima de la media mensual","\n")
  } else {
    cat("El dia",dia,"del mes de Agosto, la temperatura fue de",valor,"°C, es decir igual a la media mensual","\n")
  }
}




