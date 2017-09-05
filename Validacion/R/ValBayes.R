ValBayes <-
function(x,y){
##############################################################################
#Esta función se basa en la inferencia bayesiana
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#Última modificación: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
  m<-length(x) #m es el número de modelos
L<-numeric(m)
numerador<-numeric(m)
apriori<-rep(1/m,m)          
#lL es el vector que almacena la verosimilitud de cada modelo
lL<-numeric(m)
sigmas2<-numeric(m)    
rss<-numeric(m)
      z<-data.frame(y,x)
modelo<-na.omit(z) # Elimina las filas correspondientes a los datos faltantes
n<-nrow(z)
for(i in 1:m){ 
rss[i]<-sum((modelo[,1]-modelo[,i+1])^2)
sigmas2[i]<-rss[i]/n
lL[i]<-(-n/2)*(log(sigmas2[i]))
      }
#L: función de verosimulitud
L<-exp(lL)                   
numerador<-apriori*L
denominador<-sum(numerador)
#posteriori: valor de la inferencia bayesiana 
posteriori<-numerador/denominador

#Devuelve un valor con la probabilidad
return(posteriori)
}
