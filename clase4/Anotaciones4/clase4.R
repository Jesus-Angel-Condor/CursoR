help("expand.grid")
expand.grid(S1 =1:2, S2=1:3, S3=1:4)
#combinaciones
help("choose")
choose(6,4)
#generacion de combianciones
help("combn")
combn(1:5,2)
#genearmos numeros aleatorios
#runif
#rnorm
#rgamma, investigar
#
#Generamos una muetra aleatoria
help("sample")
#secreto del profe
airquality
sample(airquality$Wind,10)
sample(c("TRUE","FALSE"),replace = TRUE)

#estructura de control
#if-else
#ifelse
#for

#solucion 5
n<-100
pasos<-1
while(n!=1){
  if(n %% 2 == 0 ){
    n <- n/2
  }
  else{
    n<-3*n + 1
  }
  pasos <- pasos+1
}
print(pasos)
#Basta con uan interaccion en el rango y guardar las 
#respuestas en una variables, la solucion tiene un paradigma
#fuerxza bruta

numero <- 1
longitud <- 1000000000000
for(i in 100:200){
  indicador <-i
  len<-1
  if(indicador %%2==0){
    indicador<-indicador/2
  }
  else{
    indicador<-3*indicador+1
  }
  len<-len+1
  if(len<longitud){
    numro<-i
    longitud<-len
  }
}
sprintf("El numero con menor longitud de secuencia es %d",numero)
print("secuencia:")
while(numero!=1){
  print(numero)
  if(numero %%2 ==0){
    numero<-numero/2
  }
  else{
    numero<-3*numero+1
  }
}
