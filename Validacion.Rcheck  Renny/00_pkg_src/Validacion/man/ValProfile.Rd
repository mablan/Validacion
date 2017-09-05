\name{ValProfile}
\alias{ValProfile}
\title{
Análisis de Perfil (Profile Analysis)
}
\description{
Método multivariante que prueba la hipótesis de que la trayectoria de los datos reales y la salida del modelo son paralelas.
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
cantidad de instantes en el tiempo en donde se tomaron las muestras. Cantidad de instantes en el tiempo en donde el modelo realiza la simulación. 
}

}
\value{
Esta función retorna los siguientes valores:
\item{T2 }{Valor del estadístico Hotellings}
\item{valorp }{Probabilidad asociada al estadístico Hotellings}
}
\details{
Este método permite evaluar modelos en donde se tienen distintas variables que tratan de simular el comportamiento presentado en ciertos instantes de tiempo de un sistema real. La hipótesis nula que se prueba es que la diferencia entre el modelo y los datos es 0 para todos y cada uno de los instantes de tiempo en comparación. Hace uso del estadístico Hotelling's para el cual se dispone de tablas de probabilidad. Este enfoque sirve para numerosas variables de respuesta y diversos intervalos de tiempo. Sin embargo, una desventaja de este método es que requiere un número relativamente grande de réplicas, que puede calcularse como n>q(k-1), donde q es el número de variables respuesta y k el número de instantes de tiempo considerados.

El paquete ICSNP debe estar instalado.

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estén incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberían estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas.
}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Timm N. H. (1975). Multi-variate Analysis wih Apllications in Education and Psychology. Montery: Brooks/Coloe Publishing Company.
}
\author{
Magdiel Ablan, Renny Márquez, Yuraima Rivas, José Querales
}


\seealso{
La función \code{\link{HotellingsT2}} del paquete \code{\link{ICSNP}}
}
\examples{
data(PlanktonR) #Ejemplo 8.2 pag. 160 de Haefner
data(PlanktonM)
ValProfile(PlanktonM,PlanktonR,3)
}
\keyword{Análisis de perfil}
