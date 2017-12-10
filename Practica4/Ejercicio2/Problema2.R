# Nombre: Jesus Condor Torres
# Respuesta: El codigo toma como valores de 0 y 1 con longitud N la cual se ingresa 
# por teclado y muestra por pantalla la probabilidad de 2 indices las cuales cumple
# con la condicion de que la diferencia sea menor o igual que cierto numero entero 
# "k"
print("Ingrese el numero de casos que se evaluara: ")
N <- scan()#para saber la longitud 
k <- sample(1:N,1)#elegimos al azar un numero entre 1 y N
m <- sample(1:N,2)#Elegimos 2 numeros entre 1 y N para indices i,j
i <- m[1]#Declaramos i
j <- m[2]#declaramos j
S <- sample(c(0,1),N,replace = TRUE)#declaramos nuestro vector de 0 y 1
if(S[j] = S[i] && abs(i-j) <= k){
   cat("probabilidad de ",i, "es ",i,"/",N)
   cat("probabilidad de ",j, "es ",j,"/",N)
}
  