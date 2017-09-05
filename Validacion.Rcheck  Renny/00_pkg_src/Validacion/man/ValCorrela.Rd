\name{ValCorrela}
\alias{ValCorrela}
\title{
Coeficiente de correlacián de Spearman (ro)
}
\description{
Medida de la correlación (la asociación o interdependencia) entre dos variables aleatorias continuas.}
\usage{
ValCorrela(x, y)
}
\arguments{
  \item{x}{
vector, matriz o data frame correspondiente a los valores simulados.
}
  \item{y}{
vector, matriz o data frame correspondiente a los valores reales u observados.}
}
\value{
El valor que retorna la función:
  \item{correla}{Coeficiente de correlación}
}
\details{
Los valores que puede tomar el coeficiente de correlación r son: -1 < r < 1

    Si r > 0, la correlación lineal es positiva. 

    Si r < 0, la correlación lineal es negativa. 

    Si r = 0, no existe correlación lineal entre las variables. Aunque podría existir otro tipo de correlación (parabólica, exponencial, etc.)

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estén incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberían estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparación entre datos de una observación en particular y un determinado modelo.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny Márquez, Yuraima Rivas, José Querales
}
\seealso{
\code{\link{cor}}
}
\examples{
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValCorrela(x, y)
}
\keyword{Correlación}

