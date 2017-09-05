\name{ValProfile}
\alias{ValProfile}
\title{
An?lisis de Perfil (Profile Analysis)
}
\description{
M?todo multivariante que prueba la hipotesis de que la trayectoria de los datos reales y la salida del modelo son paralelas.
}
\usage{
ValProfile(x, y, instantetiempo)
}
\arguments{
\item{x}{
vector, matriz o data frame correspondiente a los valores simulados.
}
  \item{y}{
vector, matriz o data frame correspondiente a los valores reales u observados.
}
  \item{instantetiempo}{
cantidad de instantes en el tiempo en donde se tomaron las muestras. Cantidad de instantes en el tiempo en donde el modelo realiza la simulacion. 
}

}
\value{
Esta funcion retorna los siguientes valores:
\item{T2 }{Valor del estadistico Hotellings}
\item{valorp }{Probabilidad asociada al estadistico Hotellings}
}
\details{
Este metodo permite evaluar modelos en donde se tienen distintas variables que tratan de simular el comportamiento presentado en ciertos instantes de tiempo de un sistema real. La hipotesis nula que se prueba es que la diferencia entre el modelo y los datos es 0 para todos y cada uno de los instantes de tiempo en comparacion. Hace uso del estadistico Hotelling's para el cual se dispone de tablas de probabilidad. Este enfoque sirve para numerosas variables de respuesta y diversos intervalos de tiempo. Sin embargo, una desventaja de este m?todo es que requiere un numero relativamente grande de replicas, que puede calcularse como n>q(k-1), donde q es el numero de variables respuesta y k el numero de instantes de tiempo considerados.

El paquete ICSNP debe estar instalado.

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estan incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Timm N. H. (1975). Multi-variate Analysis wih Apllications in Education and Psychology. Montery: Brooks/Coloe Publishing Company.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
}


\seealso{
La funcion \code{\link{HotellingsT2}} del paquete \code{\link{ICSNP}}
}
\examples{
data(PlanktonR) #Ejemplo 8.2 pag. 160 de Haefner
data(PlanktonM)
ValProfile(PlanktonM,PlanktonR,3)
}
\keyword{Analisis de perfil}
