#Nombre: Jesus Condor Torres 20141378D
#Respuesta 2: 
#item a: corregimos las siguientes lineas
mtcars[0:4,]#originalmente mtcars[-1:4,]
mtcars[mtcars$cyl<=5,]#originalmente mtcars[mtcars$cyl<=5]
mtcars[mtcars$cyl==4|6,]#no hubo error en esta linea

#item b
x <- 1:5
x[NA]
#porque el vector es de longitud 5, sin embargo al no tener el indice un valor 
#el programa trata de buscar un valor real en el vector pero como no lo encuentra 
#simplemente sale por pantalla "NA" 5 veces

#item c
help("mtcars")
mtcars[1:20]
mtcars[1:20,]
#Porque mtcars es un dataframe y es una estructura bidimensional eso hace que 
#necesites especificar la columna o simplemente hacer notar la columna

#item d
df[is.na(df)] <- 0
df
#Muestra por pantalla una tabla con columnas x , y donde x tiene como datos del 
#1 al 3 mientras que la comna y muestra las palabras "python","R"y "c++".Debe 
#funcionar con una cuestion logica de TRUE O FALSE