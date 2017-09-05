\name{ValWillmott}
\alias{ValWillmott}
\title{Indice de ajuste Willmott}
\description{
   Funcion que calcula el Indice de ajuste W (Willmott).
   Donde 0<=W<=1. Si W=1 entonces hay un ajuste perfecto 
   del modelo y el peor de los casos es cuando W=0. El termino
   cuadrado hace que el indice sea sensible a los valores atipicos.
}
\usage{
ValWillmott(x, y)
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
Indice de Ajuste W
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estan incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparacion entre datos de una observacion en particular y un determinado modelo.
}

\references{
  Wainwright J. & Mulligan Mark, (2005). London UK.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales, Ana Lucia Molina
}
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValWillmott(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValWillmott(x, y)
}

\keyword{Indice de ajuste Willmott}

