\name{ValR2}
\alias{ValR2}
\title{
Coeficiente de determinaci�n R cuadrado
}
\description{
 Funci�n que calcula el coeficiente de determinaci�n r^2, que representa la 
   proporci�n de varianza en los datos observados que son explicadas por los
   resultados del modelo. Donde 0<=r^2<=1. Si r^2=1, entonces toda la variaci�n
   en los datos es explicada por el modelo. Si r^2=0, entonces la variaci�n en 
   los datos no es explicada por el modelo. La desventaja es que el valor r^2 
   es sensible a los valores at�picos (valores que est�n muy alejados de la media) 
   que lo incrementan falsamente.
}
\usage{
ValR2(x, y)
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
El valor que retorna la funci�n:
  \item{rcuadrado}{Coeficiente de Determinaci�n Rcuadrado}
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est�n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deber�an estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci�n entre datos de una observaci�n en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005) Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales
}
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValR2(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValR2(x, y)

}
\keyword{Coeficiente de determinaci�n R cuadrado}
