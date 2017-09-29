#Lista de ejercicios de la tarea 2
#Ejercicio 1
sum(!is.na(x))#Retorna el valor de 1 debido a que !is.na(x) resulto TRUE
c(x,x[-(1:length(x))])#toma solo el valor de x
x[length(x)+1]/length(x)#Da como resultado NA ,algo no disponible
sum(x>mean(x))#retorna el valor de 0 debido a que x>mean(x) resulto FALSE

help("is.na")#Indica que elementos faltan, pueden ser constates logicas, reales, etc
help("sum")#suma los elementos que contiene, en la linea 3 sale como respuesta "1"
is.na(x)#da una constante logica FALSE - negacion de is.na(x)
!is.na(x)#da una constante logica TRUE
sum(TRUE)#da como resultado 1
sum(FALSE)#da como resultado 0
sum(1:5)
sum(1,2,3,4,5)
sum(1:2,3:5)
sum(1:5,NA)
sum(1:5,NA,na.rm = FALSE)
help(NA)
length(x)
x[-(1:length(x))]
class(x)#arroja que es tipo integer
x


#Ejercicio 2
help("exp")
e <- exp(1)
class(x)
x <- as.numeric(x)
class(x)
x <- scan()#Ingreso por teclado el valor de x
#sea S la funcion senh(x)
S <- (e^x - e^-x)/2 #otra forma de expresion del senh(x)
print(S)#resultado final
help("scan")



#Ejercicio 3
#creando un vector
x <- 3#en el coseno se tomara como radian
e <- exp(1)#exponencial
class(x)
v <- vector("numeric",31)#inciando vector
print(v)
for(i in 1:31){
   v[i] <- e^x * cos(x)
   x <- x + 0.1
  # print(x)
}
print(v)#imprimimos el resultado

#Ejercicio 4
#creando vectores con funcion "paste"
help("paste")
vector1 <- paste(c("Vector"),1:30,sep = " ")#crea el vector con espacio entre 
#vector y el numero
print(vector1)#Imprime el vector1
vector2 <- paste(c("fn"),1:30,sep = "")#crea el vector sin espacio entre el 
#vector y el numero
print(vector2)#Imprime el vector2

#Ejercicio 5
#Veamos que sucede en la siguiente funcion
x <- pi/4
DF <- D(expression(cos(x)/sin(x)),"x")#Esto da la expresion de la derivada
eval(DF)
#Retorna el valor de -2

#Ejercicio 6
#Veamos los siguientes resultados
x <- c(0,7,8)
x[0.9999999999999999]
numeric(0)
x[0.99999999999999999]
x[1]
x[2]
x[3]
x[0]
help("numeric")
#comparando los resultados obtenidos el valor de x[1] puede obtenerse tambien 
#haciendo lo que esta escrito en la linea 76 (17 nueves), sin embargo si le quitamos un decimal
#a lo que esta en la linea 76 quedaria como lo de la linea 74 (16 nueves) lo cual
#da otro resultado, entonces podriamos decir que "0.99999999999999999" ya estaria
#Aproximandose bastante a "1" ya que en los resulatdos obtenidos tenemos que
#x[1] = x[0.99999999999999999](17 nueves) = 0, mientras que el resultado de la 
#linea 74 es numeric(0)

#Ejercicio 7
#Usamos las funciones rep() y seq()
#Item 1
a <- 0#Asignamos los numeros del 0 al 4 a las letras a,b,c,d,e
b <- 1
c <- 2
d <- 3 
e <- 4
a <- rep(a,times=5)#Por medio de la funcion rep hacemos que cada variable se 
b <- rep(b,times=5)#transforme de forma implicita como un arreglo de 5 elementos
c <- rep(c,times=5)#del mismo valor
d <- rep(d,times=5)
e <- rep(e,times=5)
f <- c(a,b,c,d,e)#Aqui finalmente concatenamos los "arreglos" obtenidos 
print(f)#Imprimimos el resultado final

#Item 2
g <- seq(from=1,to=5,by=1)#Generamos una secuencia de numeros "12345"
g <- rep(g,times=5)#Repetimos esa secuencia obtenida 5 veces
print(g)#Imprimimos el resultado

#Ejercicio 8
help("cumprod")#Para ver mas o menos que hace esta funcion
cumprod(c(1,5,7))#Ejemplo para ver como funciona esta funcion
n <- 2#Iniciamos la variable para nuestro numerador
m <- 3#Iniciamos la variable para nuestro denominador
unidad <- vector("numeric",19)#Iniciamos nuestro vector con ceros del tipo real
for(i in 1:19){#Llenamos nuestro vector con cada fraccion que obtenemos al 
    unidad[i] <- n/m#dividir n/m
    n <- n+2#Aumentamos n y m en 2 para las siguientes asignaciones
    m <- m+2
}
unidad <- cumprod(unidad)#Esta funcion nos permite obtener la multiplicacion 
sumatoria <- 1#desde el primer termino hasta el i-esimo termino en cada termino
for(i in 1:19){#Obtenemos la suma de todos los terminos mas 1
    sumatoria <- sumatoria + unidad[i]
}
print(sumatoria)#Imprimimos el resultado
#cumsum(unidad) Otra forma de hallar el resulatdo

#Ejercicio 9
#Usemos la libreria sets para obtener los resultados posibles de los siguientes
#Evento 1 "Lanzamiento de una moneda" y "Lanzamineto de un dado"
library(sets)
Omega <- set("C","S")#Generamos todos los posibles subconjuntos de C y S
2 ^ Omega
help("expand.grid")#Para saber que hace esta funcion
expand.grid(S1=c("C","S"),S2=1:6)#Generamos los eventos del lanzamiento de la moneda y dado
expand.grid(S3=c("C","S"),S4=c("C","S"))

#Ejercicio 10
#Generamos una eleccion de 3 colores sin reemplazo
help("combn")
colores <- c("rojo","azul","verde","blanco","negro","amarillo")
combn(colores,3)
#El resultado obtenido es de 20 combinaciones sin reeemplazo

#Ejercicio 11
#Generamos primero combiaciones y luego las "concatenamos" por asi decirlo 
combn(colores,1)#Seleccionamos 1 color sin reemplazo
combn(colores,2)#Seleccionamos 2 colores sin reemplazo
combn(colores,3)#Seleccionamos 3 colores sin reemplazo
Evento1 <- combn(colores,1)
Evento2 <- combn(colores,2)
Evento3 <- combn(colores,3)
expand.grid(Evento1,Evento2,Evento3)#Tenemos todos los eventos posibles 
#Para el primer caso se obtiene 6 casos
#Para el segundo caso se obtiene 15 casos
#Para el tercer caso se obtiene 20 casos
#Todos los eventos posibles hacen un total de 333 casos posibles

#Ejercicio 12
#Calculemos la tabla de probabilidades lo guardaremos en un vector "k"
#Item a
#Primera forma
k <- vector("numeric",13)#Iniciamos un vector desde 0 a 12
k[1]#Primer elemento
for(i in 1:13){#Calculo de cada probabilidad y lo guardamos en cada i-esimo
    k[i] <- choose(12,i-1)*(1/3)^(i-1) *(1-1/3)^(12-(i-1))#terminos
    # k[i] <- (1-1/3)^12-(i-1)
}
print(k)#Imprimimos el resultado
#Segunda forma
help("dbinom")
k2 <- dbinom(0:12,12,1/3)#Funcion que nos ayuda a encontar cada probabilidad de 
print(k2)#la distribucion binomial
#El resultado obtenido nos hace ver que se obtienen resultados "iguales"

#Item b
#Ahora hallemos el CDF para el resultado obtenido "k2"
#Primera forma
cumsum(k2)
k3 <- cumsum(k2)
k3[13]
#Al obtener el resultado, el ultimo resultado es "1" con lo cual estaria
#verificando la propiedad de la distribucion acumulativa

#Segunda forma
help("pbinom")
pbinom(0:12,12,1/3)
#Al igual que la primera el ultimo resultado es "1", por lo tanto se obtiene
#el mismo resultado
pbinom(8:12,12,1/3)
#Con P(X>7) se obtiene los valores de los CDF a partir de X=8 hasta X=12

#Ejercicio 13
#Item a Hallemos la probabilidad de una persona que mide menos de 1.90
help("pnorm")
pnorm(1.90)
pnorm(1.90,mean = 0,sd = 1,lower.tail = TRUE)#Equivalente P[X<=1.90]
pnorm(1.90,mean = 0,sd = 1)
pnorm(1.90,mean = 0)
#Cualquiera de los 4 que utilicemos dara el mismo resultado que es "0.9712834"

#Item b
pnorm(1.60,mean = 0,sd = 1,lower.tail = FALSE)#Equivalente P[x>=1.60]
pnorm(1.60)#Equivalente P[x<1.60]

#Ejercicio 14
help("pexp")#Ayuda para ver que hace esta funcion
pexp(10,rate = 1,lower.tail = TRUE)#Equivalente a decir P[x<=10]
pexp(10,rate = 1)
pexp(10)
#cualquiera de las tres formas se obtiene el mismo resultado "0.9999546"

#Ejercicio 15
#Veamos que hace las siguientes lineas
set.seed(50)#Genera numeros aleatorios
xVec <- sample(0:999,250,replace=T)#Genera un vector de 250 elementos enteros
yVec <- sample(0:999,250,replace=T)#en el rango de 0 a 999
help("set.seed")
print(xVec)
print(yVec)
#FIN 