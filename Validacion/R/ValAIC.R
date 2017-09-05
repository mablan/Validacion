ValAIC <-
function(x,y,k){

##############################################################################
# Esta funci?n se basa en el criterio de informaci?n de Akaike (AIC)
#AIC es un vector de m componentes
#m el n?mero de modelos que se est? comparando 
#k es el n?mero de par?metros que est? usando cada modelo
# Tiene como entradas los vectores x, de los valores simulados, y y, 
# de los valores reales u observados.
 
#?ltima modificaci?n: 15/10/10 
##############################################################################
x<-as.data.frame(x)
y<-as.data.frame(y)
  m<-length(x)
AIC<-numeric(m)
#AIC: Coeficiente de informaci?n de Akaike

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
AIC<--2*lL+2*k
if(max(k)!=n+1){
#AICc: Coeficiente de informaci?n de Akaike corregido
AICc<-AIC+2*k*(k+1)/(n-k-1)}
else{(cat("no se puede calcular, division entre cero"))}

#Devuelve en una lista los dos valores anteriores
return(list(AIC=AIC,AICc=AICc))
}
