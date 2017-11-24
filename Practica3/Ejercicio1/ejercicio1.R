#Nombre: Jesus Condor Torres
#Respuesta 1: El codigo pega un signo de exclamacion al final de cada elemento
f3 <- list("a",c("b","c","d","e"),"f",c("g","h","i"))
f3
help("lapply")
f4 <- lapply(f3[,"!"])
f4
