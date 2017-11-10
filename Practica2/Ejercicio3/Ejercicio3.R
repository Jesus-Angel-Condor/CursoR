#Nombre : Jesus Condor Torres
#Respuesta 3: El codigo muestra la extraccion de k elementos desde el inicio o desde
#el final
#item a y b
#primera funcion
primero <- function(c,k){#mete un vector y un entero
  nuevo <- x[1:k]
  print(nuevo)#retorna el nuevo vector
}
ultimo <- function(c,k,n){#metemos un vector, un entero y el size del vector
  nuevo_final <- x[n-k:n]
  print (nuevo_final)#retorna el nuevo vector
}
cat("Ingrese cuantos elementos tendra el vector")
n <- scanf()#leemos por teclado el tamano del vector
x <- sample(c(2,3,4,5),n,replace = TRUE)
#help("sample")
cat("Ingrese cuantos elementos se van a extraer")
k <- scanf()#leemos por teclado el tamano del vector
if(k <= n){
  primero(x,k)#Imprimimos los rsultados
  ultimo(x,k,n)
}
else{
  print(x)#Esto es para el caso b si k>n
}

#Item c
primero <- function(x,k,n){
  nuevo <- c(x,rep(NA,k-n))#concatenamos el vector original con NA
  print (nuevo)#retornamos el nuevo vector
}
ultimo <- function(x,k,n){#concatenamos el vector original con NA
  nuevo_final <- c(rep(NA,k-n),x)
  print (nuevo_final)#retornamos el nuevo vector
}
cat("Ingrese cuantos elementos tendra el vector")
n <- scanf()
x <- sample(c(2,3,4,5),n,replace = TRUE)
#help("sample")
cat("Ingrese cuantos elementos se van a extraer")
k <- scanf()
if(k > n){
  primero(x,k)#obtenemos los resultados
  ultimo(x,k,n)
}

