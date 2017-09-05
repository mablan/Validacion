ValWillmott <-
function(x,y) {
##############################################################################
# Esta funci?n calcula el ?ndice de ajuste W (Willmott)
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#?ltima modificaci?n: 31/03/13 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
W<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
numerador<- sum((yy-xx)^2)
denominador<- sum((abs(xx-colMeans(yy)) + abs(yy-colMeans(yy)))^2)
# W es el ?ndice de ajuste
W[j,i]=(1-numerador/denominador)
}
}
#Devuelve el valor del ?ndice de ajuste (Willmott)
return(list(W=W))
}
