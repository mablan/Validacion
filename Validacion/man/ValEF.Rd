\name{ValEF}
\alias{ValEF}
\title{
Indice de Eficiencia (EF)
}
\description{
Se refiere al tama?o del error estandar. 
Al comparar dos estadisticas de una muestra y se trata de decidir cual de ellas es un estimador mas eficiente, se escogeria la estadistica que tuviera el menor error estandar o la menor desviacion estandar de la distribucion de muestreo. Tiene sentido pensar que un estimador con un error estandar menor (con menos desviacion) tendra una mayor oportunidad de producir una estimacion mas cercana al parametro de poblacion que se este considerando.}
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
El valor que retorna la funci?n:
  \item{eficiencia}{Indice de eficiencia}
}
\details{
Esta funcion se usa para calcular la variabilidad del error del modelo. 
    El indice de eficiencia esta definido en el intervalo (-inf,1] por lo que: 
\itemize{
\item Si EF=1 el modelo es perfecto.
\item Si EF=0 indica que la prediccion del modelo son tan precisa como la media de los datos observados.
\item Si EF<0 indica que la varianza residual es mayor que la varianza de los datos.
}

Nota sobre los datos de entrada: En el caso de que los datos ingresados por el usuario esten incompletos (cuando falten algunas observaciones) las posiciones en las cuales deberian estar los elementos faltantes deben catalogarse como NA.
Las filas en las cuales existan valores NA son eliminadas al momento de realizar la comparaci?n entre datos de una observaci?n en particular y un determinado modelo.
}
\references{
HAEFNER, James W. (2005). Modeling Biological Systems Principles and Applications. Springer.
Mayer and Butler(1992). Statistical validation.
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales
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

