\name{ValBayes}
\alias{ValBayes}
\title{
Inferencia bayesiana}
\description{
Esta funci�n calcula la distribuci�n posteriori de los modelos.
}
\usage{
ValBayes(x, y)
}
\arguments{
  \item{x}{
vector, matriz o data frame correspondiente a los valores simulados.}
  \item{y}{
vector, matriz o data frame correspondiente a los valores reales u observados.
}
}
\value{
Devuelve el valor de probabilidad de la distribuci�n posteriori de los modelos.
}
\details{
Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est�n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deber�an estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci�n entre datos de una observaci�n en particular y un determinado modelo.
}

\references{
HAEFNER, James W. (2005) Modeling Biological Systems Principles and Applications. Springer.
Blau and Neely (1995). Ecokinetics: A study of the fate and distribution of chemicals in laboratory ecosystems.
}
\author{
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales
}

\examples{
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValBayes(x,y)
}
\keyword{Bayes}
