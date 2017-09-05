\name{ValAIC}
\alias{ValAIC}
\title{
Coeficiente de informacion de Akaike (AIC)
}
\description{
Esta funcion calcula el coeficiente de informacion de Akaike (AIC), el cual nos informa cual modelo representa de mejor forma el sistema real.}
\usage{
ValAIC(x, y, k)
}
\arguments{
  \item{x}{
vector, matriz o data frame correspondiente a los valores simulados.
}
  \item{y}{
vector, matriz o data frame correspondiente a los valores reales u observados.
}
  \item{k}{
vector del numero de parametros de cada modelo.

}
}
\value{
\item{AIC }{Coeficiente de informacion de Akaike (AIC).}
\item{AICc }{AIC corregido para aquellos casos en donde se cuenta con gran numero de datos.}
}
\details{
Nota sobre los datos de entrada: en el caso de que los datos ingresados por el usuario esten incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.
}

\references{
Haefner, James W. (2005) Modeling Biological Systems Principles and Applications. Springer.
Blau and Neely (1995). Ecokinetics: A study of the fate and distribution of chemicals in laboratory ecosystems.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales}
\examples{
AICmat<-matrix(0,3,3)
K<-c(7,12,12)

data(Mixteque)
ModelosBaja<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
DatosBaja<-data.frame(Mixteque$Mod1DatosBaja)

ModelosMedia<-data.frame(Mixteque$Mod1SimulaMedia,Mixteque$Mod2SimulaMedia,Mixteque$Mod3SimulaMedia)
DatosMedia<-data.frame(Mixteque$Mod1DatosMedia)

ModelosAlta<-data.frame(Mixteque$Mod1SimulaAlta,Mixteque$Mod2SimulaAlta,Mixteque$Mod3SimulaAlta)
DatosAlta<-data.frame(Mixteque$Mod1DatosAlta)


AICmat[1,]<-ValAIC(ModelosBaja,DatosBaja,K)$AIC
AICmat[2,]<-ValAIC(ModelosMedia,DatosMedia,K)$AIC
AICmat[3,]<-ValAIC(ModelosAlta,DatosAlta,K)$AIC

AICmat

minimo<-apply(AICmat,1,min)
AICmatG<-sweep(AICmat,1,minimo)

AICmatG

}
\keyword{Coeficiente de informacion de Akaike}

