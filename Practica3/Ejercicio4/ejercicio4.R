#Nombre: Jesus Condor Torres
#Respuesta 4:
#item a
f1 <- function(x={y<-1;2},y=0){
  x+y
}
f1()
#da como resultado 3 debido a la suma de elemntos que contiene cada variable
#x contiene 2 variables, y contiene 1 variable

#item b
trims <- c(0,0.1,0.2,0.5)
x <- rcauchy(100)

lapply(trims, function(trim) mean(x,trim = trim))#primera llamada
lapply(trims,mean,x=x)#Segunda llamada
#En la primera llamada llama a la funcion trim la cual se opera con x
#En la segunda llamada es mas directo ya que estas afirmando a la variable x

#item c
