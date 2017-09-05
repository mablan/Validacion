ValR2 <-
function(x,y) {
##############################################################################
# Esta funci?n calcula el Coeficiente de Determinaci?n rcuadrado
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#?ltima modificaci?n: 24/03/13 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
rcuadrado<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
n<-nrow(xx)
#Rcuadrado: coeficiente de correlaci?n al cuadrado
rcuadrado[j,i]=(cor(xx,yy))^2
}
}
#Devuelve el valor del coeficiente de determinaci?n rcuadrado
return(list(rcuadrado=rcuadrado))
}
