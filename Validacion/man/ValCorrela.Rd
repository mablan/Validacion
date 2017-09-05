\name{ValCorrela}
\alias{ValCorrela}
\title{
Coeficiente de correlacion de Spearman (ro)
}
\description{
Medida de la correlacion (la asociacion o interdependencia) entre dos variables aleatorias continuas.}
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
El valor que retorna la funcion:
  \item{correla}{Coeficiente de correlacion}
}
\details{
Los valores que puede tomar el coeficiente de correlacion r son: -1 < r < 1

    Si r > 0, la correlacion lineal es positiva. 

    Si r < 0, la correlacion lineal es negativa. 

    Si r = 0, no existe correlacion lineal entre las variables. Aunque podria existir otro tipo de correlacion (parabolica, exponencial, etc.)

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est?n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
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
\keyword{Correlacion}

