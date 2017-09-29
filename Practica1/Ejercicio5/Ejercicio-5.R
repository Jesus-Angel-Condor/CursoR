#Ejercicio 5
#Nombre:Jesus Angel Condor Torres 20141378D
#respuesta :que es lo que bota el siguiente codigo
tst4 <- function(x){
  if(x < -2)
    print("muy negativo")
  else if(x < 1)
    print("cercano a cero")
  else if(x < 3)
    print("in [1,3>")
  else
    print("large")
}
x <- scan()
tst4(x)
#Para x=0 el resultado es "cercano a cero"
#Para x=Inf el resultado es "large"
#para x=2 el resultado es "in [1,3>"

#Item b
help("ifelse")
ifelse(Tst4,yes = TRUE){
  if(x < -2)
    print("muy negativo")
  else if(x < 1)
    print("cercano a cero")
  else if(x < 3)
    print("in [1,3>")
  else
    print("large")
}
x <- scan()
Tst4(x)