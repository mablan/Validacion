ValMAE <-
function(x,y) {
##############################################################################
# Esta funci?n calcula el error absoluto medio y su porcentaje. 
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#Ultima modificacion: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
mae<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
pmae<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])

n<-nrow(xx)
#mae : error absoluto medio
mae[j,i]<-sum(abs(xx-yy))/n
#pmae : % del error absoluto medio
pmae[j,i]<-mae[j,i]/colMeans(yy)*100
}
}
#Devuelve en una lista los tres valores anteriores
return(list(mae=mae,pmae=pmae))
}
