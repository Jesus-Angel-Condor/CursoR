#Nombre: Jesus Condor torres
#Respuesta: el codigo muestra el valor esperado de "x"

cat("Casos de prueba:")
T <- scan()
cat("Ingrese el numero de expresiones y el numero de alternativas de solucion: ")
#M <- scan()
#N <- scan()
if(T >= 1 && T <= 15){
   for(i in 1:T){
      M <- scan()#ingresa por teclado el valor de M
      N <- scan()#ingresa por teclado el valor de N
      if((M >= 1 && M <= 250) && (N >= 1 && N <= 10^9)){
         x <- c(M,N)
         max(x)
         print(mean(x))#imprime el valor esperado
      }
   }
}
