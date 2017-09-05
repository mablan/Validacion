\name{ValPruebaF}
\alias{ValPruebaF}
\title{
Prueba F de Fisher
}
\description{
Es una prueba compara valores de los datos contra los modelos de prediccion. 
Esta funcion calcula una prueba F que tiene como hipotesis nula que el intercepto es 0 y la pendiente es 1.
}
\usage{
ValPruebaF(x, y)
}
\arguments{
  \item{x}{
          vector, matriz o data frame correspondiente a los valores simulados.
}
  \item{y}{
          vector, matriz o data frame correspondiente a los valores reales u observados.
}

}
\value{
\item{F}{Estadistico F}
\item{p}{Probabilidad del estadistico F}
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario esten incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005) Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
}
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValPruebaF(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValPruebaF(x, y)
    

}
\keyword{Prueba F de Fisher}
