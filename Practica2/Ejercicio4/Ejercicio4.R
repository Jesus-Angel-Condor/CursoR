#Nombre :Jesus Condor Torres
#Respuesta: 
#item a encontrar el el numero de entradasen cada fila uqe sea mayor que 4
set.seed(75)
aMat <- matrix(sample(10,size = 60,replace = T),nr=6)
aMat

for(i in 1:6){#se encarga de revisar las filas y muestras el numero de entradas 
  s <- 0#es mayor o igual a 4
  for(j in 1:10){
    if((aMat[i][j] >= 4) = TRUE){
      s <- s+1
    }  
  }
  cat("Numeros de entradas en la fila ",i, "es: ",s)#imprimimos el resultado
}
help("if")

