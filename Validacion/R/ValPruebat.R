ValPruebat <-
function(x,y,confidence=0.95) {
##############################################################################
# Esta funci?n calcula la prueba t   
# Tiene como entradas los vectores x, de los valores simulados, y, 
# de los valores reales u observados, y el valor de confianza
# por defecto es de 0.95
 
#?ltima modificaci?n: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
Valt<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
p<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
confiinf<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
confisup<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
n<-nrow(xx)
xx<-as.matrix(xx)
yy<-as.matrix(yy)
res<-t.test(xx,yy,paired=TRUE,conf.int=confidence)
# Estad?stico t
Valt[j,i]<-res$statistic
# Probabilidad estad?tico t
p[j,i]<-res$p.value
# Limite inferior del intervalo de confianza
confiinf[j,i]<-res$conf.int[1]
# L?mite superior del intervalo de confianza
confisup[j,i]<-res$conf.int[2]
}
}
#Devuelve en una lista los cuatro valores anteriores
return(list(Estadisticot=Valt,p=p,limiteinferiorIC=confiinf,limitesuperiorIC=confisup))
}
