ValTheil <-
function(x,y) {
##############################################################################
# ?ndice de Theil: medida de dispersi?n de los datos
# Esta funci?n calcula los tres componentes del ?ndice de Theil: Sesgo (MC),
# Varianza (SC) y Correlacion (RC) en la escala de 0 a 1.
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#?ltima modificaci?n: 18/03/13 
##############################################################################
x <- as.data.frame(x)
y <- as.data.frame(y)
numreal <- length(y)
numsim <- length(x)
MC <- matrix(nrow = numreal, ncol = numsim, dimnames = list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
SC <- matrix(nrow = numreal, ncol = numsim, dimnames = list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
RC <- matrix(nrow = numreal, ncol = numsim, dimnames = list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)) {
for (j in 1:length(y)) {
xxx <- x[i]
yyy <- y[j]
z <- data.frame(xxx, yyy)
zz <- na.omit(z)
xx <- data.frame(zz[1])
yy <- data.frame(zz[2])
n <- nrow(xx)
MSE <- sum((xx - yy)^2)/n
MC[j, i] = ((sapply(xx,mean) - sapply(yy,mean))^2)/MSE
SC[j, i] <- ((n - 1)/n) * ((sapply(xx,sd) - sapply(yy,sd))^2)/MSE
RC[j, i] <- 2*(1 - cor(xx, yy)) * ((n - 1)/n) * (sapply(xx,sd)*sapply(yy,sd))/MSE
}
}
return(list(MC = MC, SC = SC, RC = RC))
}
