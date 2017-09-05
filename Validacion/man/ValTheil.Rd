\name{ValTheil}
\alias{ValTheil}
\title{
Indice de Theil 
}
\description{
Indice que describe la variabilidad entre el modelo y los datos reales.
}
\usage{
ValTheil(x, y)
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
Esta funci?n retorna los siguientes valores:
  \item{Theil MC}{Componente de Theil del sesgo}
  \item{Theil SC}{Componente de Theil de la varianza}
  \item{Theil RC}{Componente de Theil de la correlacion}
  
}

\details{
Media del error de prediccion al cuadrado medio (MSE), esta se 
descompone en tres terminos, los cuales son: 
-Cuadrado de la Diferencia entre las medias de los datos del modelo y real(MC) dividido por MSE
-Diferencia de las varianzas de los datos reales y simulados (SC) 
-Desviacion del modelo y correlacion(RC).
Todas estas se dividen por MSE.
Si MC=0 las medias son iguales
Si SC=0 las variazas son iguales
Si RC=0 la correlacion es uno o sd(y)=0

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario esten incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.

}

\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Mincer, J. and V. Zarnowitz (1969). The Evaluation of Economic.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
}
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValTheil(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValTheil(x, y)

}

\keyword{Indice de Theil}

