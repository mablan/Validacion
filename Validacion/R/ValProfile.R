ValProfile <-
function(x,y,instantetiempo) {
##############################################################################
# Esta funci?n hace uso del estad?stico Hottelings  
# Tiene como entradas los vectores x, de los valores simulados, y, 
# de los valores reales u observados, y el n?mero de instantes de tiempo
# en el cual se tomaron r?plicas
 
#?ltima modificaci?n: 31/03/13 
##############################################################################
#library(ICSNP)
x<-as.data.frame(x)
y<-as.data.frame(y)
y<-na.omit(y) # Elimina las filas correspondientes a los datos reales faltantes
tam<-length(y)
ins<-instantetiempo
temp3<-ins-1
temp4<-nrow(x)
var<-tam/ins
T2<-numeric(temp4)
valorp<-numeric(temp4)
for(m in 1:temp4){
fila<-x[m,]
yyy<-matrix(nrow=nrow(y),ncol=temp3*var)
k<-1
for(i in 1:var){
temp1<-(i-1)*ins+1
temp2<-ins*i
yy<-y[temp1:temp2]
xx<-fila[temp1:temp2]
yy=as.matrix(yy)
xx=as.matrix(xx)
for(j in 1:temp3){
yyy[,k]=yy[,j]-yy[,j+1]-xx[,j]+xx[,j+1]
k<-k+1
}
}
res<-HotellingsT2(yyy, test="chi")
#T2 : estadistico de Hotellings
T2[m]<-res$statistic
valorp[m]<-res$p.value
}
#Devuelve en una lista los dos valores anteriores
return(list(T2=T2,valorp=valorp))
}
