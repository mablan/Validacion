ValMSE <-
function(x,y) {
##############################################################################
# Esta funci?n calcula el error cuadr?tico medio y derivados: la ra?z del error
# cuadr?tico medio y el % del error cuadr?tico medio.
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.

#?ltima modificaci?n: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
ecm<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
recm<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
precm<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
n<-nrow(xx)
#ecm : error cuadr?tico medio
ecm[j,i]<-sum((xx-yy)^2)/n
#recm : ra?z del error cuadr?tico medio
recm[j,i]<-sqrt(ecm[j,i])
#precm : % de la ra?z del error cuadr?tico medio
precm[j,i]<-recm[j,i]/colMeans(yy)*100
}
}
#Devuelve en una lista los tres valores anteriores
return(list(mse=ecm,rmse=recm,prmse=precm))
}
