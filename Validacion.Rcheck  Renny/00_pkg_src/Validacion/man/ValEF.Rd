\name{ValEF}
\alias{ValEF}
\title{
Indice de Eficiencia (EF)
}
\description{
Se refiere al tama�o del error est�ndar. 
Al comparar dos estad�sticas de una muestra y se trata de decidir cu�l de ellas es un estimador m�s eficiente, se escoger�a la estad�stica que tuviera el menor error est�ndar o la menor desviaci�n est�ndar de la distribuci�n de muestreo. Tiene sentido pensar que un estimador con un error est�ndar menor (con menos desviaci�n) tendr� una mayor oportunidad de producir una estimaci�n m�s cercana al par�metro de poblaci�n que se est� considerando.}
\usage{
ValEF(x, y)
}
\arguments{
  \item{x}{
vector, matriz o data frame correspondiente a los valores simulados.}
  \item{y}{
          vector, matriz o data frame correspondiente a los valores reales u observados.
}
}

\value{
El valor que retorna la funci�n:
  \item{eficiencia}{Indice de eficiencia}
}
\details{
Esta funci�n se usa para calcular la variabilidad del error del modelo. 
    El �ndice de eficiencia est� definido en el intervalo (-inf,1] por lo que: 
\itemize{
\item Si EF=1 el modelo es perfecto.
\item Si EF=0 indica que la predicci�n del modelo son tan precisa como la media de los datos observados.
\item Si EF<0 indica que la varianza residual es mayor que la varianza de los datos.
}

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario est�n incompletos (cuando falten algunas observaciones) las posiciones en las cuales deber�an estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci�n entre datos de una observaci�n en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Mayer and Butler(1992). Statistical validation.
}
\author{
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales
}
\examples{
## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValEF(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValEF(x, y)
}
\keyword{Indice de eficiencia}

