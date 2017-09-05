\name{Validacion-package}
\alias{Validacion-package}
\alias{Validacion}
\docType{package}
\title{
Validacion de Modelos de Simulacion
}
\description{
La validacion es una fase importante del proceso de simulacion que permite evaluar la calidad de un modelo. Especificamente en el caso de modelos de simulacion continua se comparan datos u observaciones del sistema real con las predicciones generadas por el modelo. Para facilitar a los usuarios dicha comparacion, esta libreria consta de metodos para validar modelos de simulacion continua. Se incluyen varias de las tecnicas mas usadas para validar modelos: desde indices simples tales como el error cuadratico medio y sus derivados (indice de Theil, indice de eficiencia, etc.) hasta metodos estadisticos clasicos (regresiones predicciones del modelo versus datos, pruebas t-pareadas, entre otros). Se incluyen ademas metodos estadisticos bayesianos y basados en informacion que permiten discriminar entre versiones alternativas de un modelo.
}
\details{
\tabular{ll}{
Package: \tab Validacion\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2010-10-15\cr
License: \tab What license is it under?\cr
LazyLoad: \tab yes\cr
}
}
\author{
Magdiel Ablan, Renny Marquez, Yuraima Rivas, Jose Querales, Ana Lucia Molina

Maintainer: Magdiel Ablan <mablan@ula.ve>
Maintainer: Renny Marquez <marquezrenny@ula.ve>
}
\references{
Ablan, Magdiel; Marquez, Renny; Rivas, Yuraima; Molina, Ana y Querales, Jose (2011). Una libreria en R para validacion de modelos de simulacion. Revista Ciencia e Ingenieria, Edicion Especial: "Jornada de Modelado y Simulacion", p. 117-126. Disponible en http://150.185.136.100/pdf/cing/v32s2/art13.pdf

}

\keyword{validacion}

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

## Ejemplo3
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValR2(x,y)

## Ejemplo4
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValR2(x, y)

## Ejemplo5
AICmat<-matrix(0,3,3)
K<-c(7,12,12)

data(Mixteque)
ModelosBaja<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
DatosBaja<-data.frame(Mixteque$Mod1DatosBaja)

ModelosMedia<-data.frame(Mixteque$Mod1SimulaMedia,Mixteque$Mod2SimulaMedia,Mixteque$Mod3SimulaMedia)
DatosMedia<-data.frame(Mixteque$Mod1DatosMedia)

ModelosAlta<-data.frame(Mixteque$Mod1SimulaAlta,Mixteque$Mod2SimulaAlta,Mixteque$Mod3SimulaAlta)
DatosAlta<-data.frame(Mixteque$Mod1DatosAlta)


AICmat[1,]<-ValAIC(ModelosBaja,DatosBaja,K)$AIC
AICmat[2,]<-ValAIC(ModelosMedia,DatosMedia,K)$AIC
AICmat[3,]<-ValAIC(ModelosAlta,DatosAlta,K)$AIC

AICmat

minimo<-apply(AICmat,1,min)
AICmatG<-sweep(AICmat,1,minimo)

AICmatG

## Ejemplo6
data(PlanktonR) #Ejemplo 8.2 pag. 160 de Haeffner
data(PlanktonM)
ValProfile(PlanktonM,PlanktonR,3)
}
