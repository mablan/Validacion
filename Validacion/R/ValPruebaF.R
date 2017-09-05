ValPruebaF <-
function(x,y) {
##########################################
#Esta funci?n calcula la prueba F que tiene como hip?tesis nula que el
#intercepto es 0 y la pendiente es 1, de acuerdo a Haefner, p. 154
#Tiene como entradas los vectores x, de los valores simulados, y y, 
#de los valores reales u observados.

#?ltima modificaci?n: 15/10/2010
#############################################
x<-as.data.frame(x)
y<-as.data.frame(y)
numreal<-length(y)
numsim<-length(x)
Famb<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
ValP<-matrix(nrow=numreal,ncol=numsim,dimnames=list(paste("Observacion", 1:numreal), paste("Modelo", 1:numsim)))
for (i in 1:length(x)){
for (j in 1:length(y)){
xxx<-x[i]
yyy<-y[j]
z<-data.frame(xxx,yyy)
zz<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
xx<-data.frame(zz[1])
yy<-data.frame(zz[2])
xx<-as.matrix(xx)
yy<-as.matrix(yy)
m1<-lm(yy~xx) # Se hace la regresi?n lineal con pendiente 1 e intercepto 0
a<-as.numeric(m1$coefficients[1])
b<-as.numeric(m1$coefficients[2])
n<-length(xx)
s2xy<-as.numeric(sum(m1$residuals^2)/(n-2))
est<-(n*a^2 + 2*a*(b-1)*sum(xx) + (b-1)^2*sum(xx^2))/(2*s2xy)
# Famb: estadistico F
Famb[j,i]<-est
# ValP: probabilidad del estadistico F
ValP[j,i]<-pf(est,2,n-2,lower.tail=FALSE)
}
}
# Devuelve los dos valores anteriores
return(list(F=Famb,p=ValP))
}
