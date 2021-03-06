\name{ValPruebat}
\alias{ValPruebat}
\title{
Prueba t de Student 
}
\description{
Una prueba t de Student es donde el estad�stico utilizado tiene una distribuci�n t de Student si la hip�tesis nula es cierta. 
La Hip�tesis es que los pares de datos del modelo son iguales. 
}
\usage{
ValPruebat(x, y, confidence = 0.95)
}
\arguments{
  \item{x}{
          vector, matriz o data frame correspondiente a los valores simulados.
}
  \item{y}{
          vector, matriz o data frame correspondiente a los valores reales u observados.
}
  \item{confidence}{
Valor del nivel de confianza 
}

}
\value{
La funci�n retorna el(los) valor(es) de t calculado que debe ser comparado con el(los) indicado(s) en la tabla de t de Student y el intervalo de confianza.
\item{t}{Estadistico t}
\item{p}{Probabilidad del estad�stico F}
\item{IC}{Intervalo de confianza}
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est�n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deber�an estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci�n entre datos de una observaci�n en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
}
\author{
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales
}    
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValPruebat(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValPruebat(x, y)

##Si no se coloca valor de nivel de confianza, por defecto es 0.95
##De lo contrario para un nivel de confianza de 90%

ValPruebat(x,y,0.90)

}
\keyword{Prueba t de Student}

