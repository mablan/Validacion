\name{ValMSE}
\alias{ValMSE}
\title{
Error cuadrático medio (MSE)
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
Esta función devuelve de igual manera la raíz del error cuadrático medio (RMSE) y su valor en porcentaje (PRMSE)
Los valores que retorna la función:
  \item{mse}{Error cuadrático medio}
  \item{rmse}{Raíz del error cuadrático medio}
  \item{prmse}{Porcentaje de la raíz del error cuadrático medio}
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estén incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberían estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparación entre datos de una observación en particular y un determinado modelo.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Rice, J.A., and P.A. Cochran (1984). Independent evaluation of a bioenergetics model for largemouth bass. Ecology.
}
\author{
Magdiel Ablan, Renny Márquez, Yuraima Rivas, José Querales
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
\keyword{Error cuadrático medio}
