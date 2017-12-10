#Nombre: Jesus Condor Torres
#Respuesta: El codigo calcula el CDF de la distribucion de Poisson

CDF <- 0
lambda <- 4.8#Le damos un valor a "lambda"
F.x <- 0#Iniciamos el CDF con cero
F <- function(x){#En principio  esta funcion iba ser el como calcular el CDF
  for(i in 0:x){
     CDF <- CDF + (labmda)/(x+1)
  } 
  return(CDF)
}

F.rand <- function(){#Modelo de funcion de calculo del CDF
  u <- runif(1)
  x <- 0
  p.x <- (exp(-lambda) * lambda^x)/factorial(x)
  F.x <- F.x + p.x
  while(F.x < u){
    x <- x+1
    p.x <- (exp(-lambda) * lambda^x)/factorial(x)
    F.x <- F.x + p.x
  }
  cat("Funcion de distribucion: ",F.x)
  return(x)
}

cat("\nVariable aleatoria confirmada segun el CDF: ",F.rand())


