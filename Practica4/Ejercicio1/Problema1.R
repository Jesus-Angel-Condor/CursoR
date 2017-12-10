#Nombre: Jesus Condor Torres
#Respuesta 1: El codigo genera 9 generaciones con sus respectivos histogramas

popular <- data.frame(m = rnorm(100,160,20), f = rnorm(100,160,20))
popular
#funcion que ayudara a permutar el dataframe
prox.gen <- function(popular){
   popular$m <- sample(popular$m)
   popular$m <- apply(popular,1,mean)
   popular$f <- popular$m
   return(popular)
}

help("hist")
#hist(5, main = popular)
hombre <- popular[,1]#Agregamos a un vector el "m" del dataframe
hist(hombre, plot = TRUE, border = 'black',main = 'Distribucion de alturas masculinas',
             col = 'blue')
for(i in 1:9){#obtenemos los diagramas de las alturas masculinas
    prox.gen(popular)
    varon <- popular$m
    hist(hombre, plot = TRUE, border = 'black',main = 'Distribucion de alturas masculinas',
         col = 'blue',xlab = 'Generaciones de varones',ylab = 'Altura(decimetros)')
}
