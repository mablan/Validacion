\name{ValMAE}
\alias{ValMAE}
\title{
Error Absoluto Medio (MAE)
}
\description{
Funci?n que calcula el error absoluto medio MAE, que mide la magnitud promedio de los errores en un conjunto de prediciones.
Consiste en el valor absoluto de las diferencias entre los datos reales y los observados en el modelo.}
\usage{
ValMAE(x, y)
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
Esta funcion retorna los siguientes valores:
  \item{mae}{Error absoluto medio}
  \item{prmse}{Porcentaje del error absoluto medio}
}
\details{
En el error medio absoluto (MAE) si los valores de x son cercanos o iguales a y el error abosoluto medio sera pequeno.

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estan incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.

}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny M?rquez, Yuraima Rivas, Jos? Querales
}

\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValMAE(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValMAE(x, y)
}
\keyword{Error Absoluto Medio}

