#Ejercicio 2
#Nombre : Jesus Angel Condor 20141378D
#Respuesta : El codigo calcula una suma de unaserie de numeros con la funciones
#cumsum y cumprodcumprod(x <- seq(from=2,to=38,by=2)/y <- seq(from=3,to=39,by=2
x <- seq(from=2,to=38,by=2)
y <- seq(from=3,to=39,by=2)
S <- cumprod(x/y)
S <- cumsum(S)
#En la anteriror trato de formar unalos terminos para despues sumarlos
print(S[19]+1)


