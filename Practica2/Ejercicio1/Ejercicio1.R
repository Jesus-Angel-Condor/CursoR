#Nombre : Jesus Condor Torres
#Respuesta 1: El codigo muestra la mtriz de henkel
m <- seq(1,5)#definimos una secuencia del 1 al 5
M <- matrix(c(m,rep(m+1),rep(m+2),rep(m+3),rep(m+4)),nrow = 5)#definimos la matriz
M# Mostramos la matriz

#haciendo una funcion de para hacer la matriz de henkel
Henkel <- function(k){#Nuestra funcion a llamar
  for(i in 1:k){
     a <- matrix(seq(i,i+k-1),ncol = k)
     print(a) #Muestra la matriz
     #M <- matrix(c(a),nrow = k, ncol = i)
  }
  # print(a)
}
n <- scan()
Henkel(n)#Llama a la funcion que resuelve la matriz de henkel
