#pregunta 1
#item 1
s <- 3+4
s <- s*2
s <- s+1
print(s)
#item 2
help("power")
power(lambda = 1)

r <- 4^3 + 3^(2+1)
print(r)
#item 3
sqrt((4+3)*(2+1))

#item 4
((1+2)/(3+4))^2

#pregunta 2
help("set_dissimilarity")
sd(0:100)#Desviacion estandar de 0 a 100

#pregunta 3
demo(plot(Math))
#se ve operadores matematicos, funciones para que sirve y como se codifica

#pregunta 4
x <- c(1,8,2,6,3,8,5,5,5,5)
#Hallemos su promedio
#Item a
y <- sum(x)
promedio <- y/10
print(promedio)
#Hay otras forma pero este es el mas practico creo

#Item b
l <- log10(x)
print(l)

#Item c
m <- (x-4.4)/2.875
print(m)

#Item d
p <- cummin(x)
q <- cummax(x)
diferencia <- q[10]-p[10]
print(diferencia)

#pregunta 5 
#Item a
v <- rep(3,times=50)
u <- c(1:50)
w <- v^u
print(w)

#Item b
h <- c(1:100)
i <- c(1:2)
j <- h^i
print(j)

#Item c
v <- seq(from=1,to=-1,by=-2)
z <- vector("integer",40)
a <- 0
for(i in 1:40){
    if(i%%2==0){
      z[i] <- -1
    }
    else{
      z[i] <- a+1
      a <- a+1
    }
}
print(z)

#pregunta 6
#Item a
solar.radiacion <- c(11.1,10.6,6.3,8.8,10.7,11.2,8.9,12.2)

#Item b
mean(solar.radiacion)#media
median(solar.radiacion)#mediana
var(solar.radiacion)#varianza
sd(solar.radiacion)#desviancion estandar

#Item c
sr10 <- solar.radiacion + 10
mean(sr10)
median(sr10)
var(sr10)
sd(sr10)
#La media y la mediana aumentan su valor en 10 mientras que la 
#varianza y la desviacion estandar son iguales al del anterior

#Item d
srm2 <- solar.radiacion * -2
mean(srm2)
median(srm2)
var(srm2)
sd(srm2)
#Cuando multiplicamos por un numero negativo cambia todos los resultados con
#respecto al original

#problema 7
help("rivers")
rivers
#El ultimo valor es 1770

#problema 8
data.frame(Orange)
#Sus tres variables son: tree(arbol), age(año), circumference(circunferencia)

#problema 9
#Lo unico que se me ocurre es copiar la data de tree y ponerlo en un nuevo vector
a <- rep(1,times=7)#genero un vector de 7 elementos con el numero 1
b <- rep(2,times=7)#genero un vector de 7 elementos con el numero 2
c <- rep(3,times=7)#genero un vector de 7 elementos con el numero 3
d <- rep(4,times=7)#genero un vector de 7 elementos con el numero 4
e <- rep(5,times=7)#genero un vector de 7 elementos con el numero 5
tree <- c(a,b,c,d,e)#"Concateno todos los "arreglos" obtenidos"
mean(tree)#Calculo la media
#La edad media es "3"
apply(data.frame(Orange[,3]),2,mean)

#problema 10
#Del resultado anterior el valor maximo de circunferencia es de "214"
apply(data.frame(Orange[,]),2,max)

#Problema 11
#Item a
#R es un lenguaje de entorno computacional y graficos
#su pagina de proyecto es: http://r-project.org/ sus caracteristicas son :
#ofrece variedades de tecnicas estadisticas, estructuras de programacion
#se puede vincular con c/c++ o fortran, posee facilidades graficas, etc.
#Item b
#por ejemplo para iniciar un vector
x <- c(1:10)
x1 <- seq(from=1,to=10,by=1)
#dan el mismo resultado
#Otro ejemplo seria para imprimir
#por ejemplo
for(i in 1:10){
  print(x[i])
}
print(x)
#Imorime los resultados perode forma distintas

#Item c
x <- c(8:27)
#comando para enumerar del 8 al 27

#Item d
#La funcion para buscar ayuda es "help"

#Item e
#Creo que es cran.r-projects o tambien puedes servir "conda"

#problema 12
help("inf")#Es una valor "infinito" (muy grande) por asi decirlo
help(NA)#Es un valor no disponible
help(NaN)#Es un valor no mumerico

#problema 13
#generamos aleatoriamente 1000 mascotas
mascota <- factor(sample(c("perro","gato","pollo","pez-dorado"),1000,prob = c(1/4,1/4,1/4,1/4), replace = TRUE))
mascota
head(mascota,n=10L)
summary(mascota)
#por alguna razon que no entiendo las probabilidades no son las mismas

#problema 14
#formas de asignar
x <- 2
2 -> x

#problema 15
#Item a  Calcualando la tangente inversa
t <- c(0:1000)
help("tanpi")
atan(t)
#calculamos el arco tangente
#item b
x <- c(1:1000)
y <- atan(x)
z <- tan(y)
z
#se hizo la operacion de tangente inversa y tangente de las variables