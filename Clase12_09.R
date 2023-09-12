#Práctica del 12/09
setwd("/home/clinux01/Escritorio/Cande Labo Martes/")
rm(list=ls())

vector_numerico <- c(1, 3, 5, 7) # vector numérico
vector_texto <-c("arbol", "casa", "pez") # vector de caracteres
vector_logico <- c(TRUE, FALSE, TRUE) # vector lógico

nuevo_vector_1 <- c(vector_texto, vector_numerico)
class(nuevo_vector_1)

nuevo_vector_2<- c(vector_logico, vector_numerico)
class(nuevo_vector_2) 
vector_numerico <- c(1, 3, 5, 7)
sum(vector_numerico) #Suma todos los elementos
mean(vector_numerico) #Calcula el promedio
prod(vector_numerico) #Calculo del producto
length(vector_numerico) #Longitud
vector <- c(5, 8, 1, 10, 7, 4, 1, 20, 25, 2)
head(vector, n=3) #Proporciona los primeros elementos por default n=6
tail(vector) #Proporciona los ultimos elementos
vector <- c(5, 8, 1, 10, 7)
sort(vector) #ordena de forma ascendente
sort(vector, decreasing = T) #ordena de forma descendente
a<- seq(0,10, by=2)
a
cuarto<- a[4] #Quiero el cuarto elemento de a
cuarto
tres_primeros<- a[1:3] #Para pedir los elem de las posiciones de la 1 a la 3
tres_primeros

b<- c( 25, 8, 6, 50 , 10, 0)
b[b< 15] #Muestra los valores de las posiciones que cumplan la condicion

a<- seq(0,10, by=2)
which(a>5) #hunción which permite encontrar las posiciones de un vector que 
#cumplen cierta condición. Me devuelve las posiciones que cumplen esa condic

mayores_5<- a[which(a>5)] #Para ver los valores de las posiciones q cumplen
mayores_5
mayores_5<- a[a>5] #Para ver los valores de las posiciones q cumplen
mayores_5

#----------------- Ejercicio de Clase -----------------
rm(list=ls())

set.seed(11111) #Para que todos mis datos sean lo mismo
#Dado datos de humedad relativa de un ano de una estacion
Datos<- 15:97
#Serie de datos de un mes
HR <- sample(Datos, 31, replace = TRUE)
HR
#Y datos de ocurrencia de precipitacion en la misma estacion
ocurrencia_pp<- sample(c(1,0),31,replace = TRUE)
ocurrencia_pp

mean(HR) 
satu<-which(HR>90) #Para ver que dias hubo sat>90
satu
datosatu<-HR[HR>90]
datosatu
pp<-which(ocurrencia_pp==1) #Para ver si esos dias llovió
pp
diasconpp<-which(HR>90 & ocurrencia_pp==1) #si los dias coincidieron con pp
diasconpp
cantdiasconpp<-sum(ocurrencia_pp==1)
cantdiasconpp

#Ejercicio clase

rm(list=ls())
#Ingreso de mi Temp y mi HR
TF<-c()
i <- 1
while (length(TF)<5) {
  if(length(TF)>=6){
    break
  }else{
    TF[i]=as.numeric(readline("Ingrese la Temperatura (en ªF)"))
  }
  i <- i + 1
}

R<-c()
j<-1
while (length(R)<5) {
  if(length(R)>=6){
    break
  }else {
    R[j]=as.numeric(readline("Ingrese la Humedad Relativa (en %)"))
  }
  j <-j + 1
}

#Cálculo del Indice
HI<- -42.379 + 2.04901523* TF + 10.14333127* R -
  0.22475541 * TF * R - 6.83783 * 10**-3 *TF**2
-5.481717*10**-2*R**2+ 1.22874*10**-3*TF**2*R + 8.5282 * 10**-4*TF *R**2 
- 1.99 *10**-6*TF**2*R**2

#Dfino ajustes
HIR<-((13-R)/4)*sqrt((17-abs(TF-95.))/17) # Si la R<13% y 80<T<112 se le resta
HIS<-((R-85)/10) * ((87-TF)/5) # Si la R>85% y 80<T<87 se le suma
HIN<-0.5 * (TF + 61 + ((TF-68)*1.2) + (R*0.094))

i<-1
j<-1
for (i in TF){
  for(j in R){
    if(R<13 & 80<TF & TF<112){
      HI= HI + HIR
    } else if (R>85 & 80<TF &TF<87){
      HI = HI + HIS
    } else if(HI<80) {
      print(HIN)}
    j=j+1
  }
  i=i+1
}

l<-1
for(l in HI){
  if (HI>80 & HI<90){
    print("Caution")
  } else if(HI>90 & HI<103) {
    print("Extreme Caution")
  } else if(HI>103 & HI<124) {
    print("Danger") 
  } else if(HI>125) {
    print("Extreme Danger")
  }
  l=l+1
}


