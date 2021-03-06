\name{ValCorrela}
\alias{ValCorrela}
\title{
Coeficiente de correlaci�n de Spearman (ro)
}
\description{
Medida de la correlaci�n (la asociaci�n o interdependencia) entre dos variables aleatorias continuas.}
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
El valor que retorna la funci�n:
  \item{correla}{Coeficiente de correlaci�n}
}
\details{
Los valores que puede tomar el coeficiente de correlaci�n r son: -1 < r < 1

    Si r > 0, la correlaci�n lineal es positiva. 

    Si r < 0, la correlaci�n lineal es negativa. 

    Si r = 0, no existe correlaci�n lineal entre las variables. Aunque podr�a existir otro tipo de correlaci�n (parab�lica, exponencial, etc.)

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est�n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deber�an estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci�n entre datos de una observaci�n en particular y un determinado modelo.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales
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
\keyword{Correlaci�n}

