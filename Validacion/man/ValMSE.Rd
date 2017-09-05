\name{ValMSE}
\alias{ValMSE}
\title{
Error cuadratico medio (MSE)
}
\description{
Medida de las diferencias en promedio entre los valores simulados y los reales u observados.
}
\usage{
ValMSE(x, y)
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
Esta funcion devuelve de igual manera la raiz del error cuadratico medio (RMSE) y su valor en porcentaje (PRMSE)
Los valores que retorna la funcion:
  \item{mse}{Error cuadratico medio}
  \item{rmse}{Raiz del error cuadratico medio}
  \item{prmse}{Porcentaje de la raiz del error cuadratico medio}
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario esten incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.
}

\references{
Haefner, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.

Rice, J.A., and P.A. Cochran (1984). Independent evaluation of a bioenergetics model for largemouth bass. Ecology.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
}

\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValMSE(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValMSE(x, y)
}
\keyword{Error cuadratico medio}
