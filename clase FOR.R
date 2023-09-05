#Clase 05/09 FOR
setwd("/home/clinux01/Escritorio/Cande Labo Martes/Practica_2/")
rm(list=ls())

#Ejemplo 1
x<-1:10
for (i in x){
  i**2
}

#Ejemplo 2
rm(list=ls())
x<-1:10
for (i in x){
  print(i**2)
}

#Ejemplo 3
rm(list=ls())
x<-1:10
for (i in x){
 y<-i**2
}

#Ejemplo 4
rm(list=ls())
x<-1:10
for (i in x){
  y<-i**2
  assign(paste("y",i,sep="_"),y)
  rm(y)
}

#Ejercicio que me piden
#Ciclo que almacene los valores mismos de i**2 en un vector con i 
#desde 1 a 10
rm(list=ls())
x<-1:10
c<-c() #Aca defino el vector vacío
for (j in x){
  c[j]<-j**2 #En cada posición de c va guardando los valores
}

#También se podría hacer así
rm(list=ls())
x<-1:10
resultados<-c()
for (j in x){
  resultados<-c(resultados,i**2)#En cada posición de c va guardando los valores
}

#While
#Ejemplo 1
rm(list=ls())
umbral<- 5
valor<- 0
while(valor>umbral){
  print("Todavía no se alcanzó el umbral")
  valor<-valor+1 #Si saco este paso y el valor>umbral tamb va a printear eternamente
}

#BREAK
rm(list=ls())
for (i in 1:5) { #Contador i va de 1 a 5
  if(i==2){ #Si i=2
    break #Corta el ciclo
  }
  print(i) #Imprime los valores de i q llegó a contar
}

#Break 2
rm(list=ls())
numero<-19
while(numero>4){
  if(numero == 14 ){
    break
  }
  print(numero)
  numero<- numero -1
}

#Next
rm(list=ls())
for (i in 1:5) {
  if (i==2){
    next
  }
print(i)
  }

#Repeat
x<-1
repeat{
  print(x)
  x<-x+1 #redefino xq sino me imprime 1 infinitamente
  if(x==6){ #Pongo condicion xq sino repite indefinidamente
    break
  }
}

#Ejercicio
rm(list=ls())
k<-285:300
temp<-c()
for (j in k) {
  temp<-c(temp,j) 
  if(j>=300) { #Agrego la condición para que se corte en 300, Tambien puedo modificar la secuencia (como en el b)
    break
  } else {
  temp<-c(temp,j+0.5)
  }
}
print(temp)

#Convierte a celsius
rm(list=ls())
k<-seq(from=285.0,by=0.5,length.out=30)
temp<-c()
for (j in k) {
  print(j)
  temp<-c(temp,(j+0.5)-273)
}
print(temp)

for(i in 1:30){
  if(temp[i]<30){
    print(paste("El dia",i,"con una temperatura de",temp,",todavía no se superó el umbral de los 30ªC"))
  }
}


