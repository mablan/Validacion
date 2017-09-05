ValEF <-
function(x,y) {
##############################################################################
# Esta funci?n calcula el ?ndice de eficiencia 
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#?ltima modificaci?n: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
EF<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
#EF : ?ndice de eficiencia
EF[j,i] <- 1 - (sum((xx-yy)^2)/sum((yy-colMeans(yy))^2))
}
}
#Devuelve el valor del ?ndice de eficiencia
return(list(Eficiencia=EF))
}
