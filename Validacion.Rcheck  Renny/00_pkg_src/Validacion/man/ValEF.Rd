\name{ValEF}
\alias{ValEF}
\title{
Indice de Eficiencia (EF)
}
\description{
Se refiere al tamaño del error estándar. 
Al comparar dos estadísticas de una muestra y se trata de decidir cuál de ellas es un estimador más eficiente, se escogería la estadística que tuviera el menor error estándar o la menor desviación estándar de la distribución de muestreo. Tiene sentido pensar que un estimador con un error estándar menor (con menos desviación) tendrá una mayor oportunidad de producir una estimación más cercana al parámetro de población que se está considerando.}
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
El valor que retorna la función:
  \item{eficiencia}{Indice de eficiencia}
}
\details{
Esta función se usa para calcular la variabilidad del error del modelo. 
    El índice de eficiencia está definido en el intervalo (-inf,1] por lo que: 
\itemize{
\item Si EF=1 el modelo es perfecto.
\item Si EF=0 indica que la predicción del modelo son tan precisa como la media de los datos observados.
\item Si EF<0 indica que la varianza residual es mayor que la varianza de los datos.
}

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario estén incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberían estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparación entre datos de una observación en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Mayer and Butler(1992). Statistical validation.
}
\author{
Magdiel Ablan, Renny Márquez, Yuraima Rivas, José Querales
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

