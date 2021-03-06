\name{Validacion-package}
\alias{Validacion-package}
\alias{Validacion}
\docType{package}
\title{
Validaci�n de Modelos de Simulaci�n
}
\description{
La validaci�n es una fase importante del proceso de simulaci�n que permite evaluar la calidad de un modelo. Especificamente en el caso de modelos de simulaci�n continua se comparan datos u observaciones del sistema real con las predicciones generadas por el modelo. Para facilitar a los usuarios dicha comparaci�n, esta librer�a consta de m�todos para validar modelos de simulaci�n continua. Se incluyen varias de las t�cnicas mas usadas para validar modelos: desde �ndices simples tales como el error cuadr�tico medio y sus derivados (�ndice de Theil, �ndice de eficiencia, etc.) hasta m�todos estad�sticos cl�sicos (regresiones predicciones del modelo versus datos, pruebas t-pareadas, entre otros). Se incluyen adem�s m�todos estad�sticos bayesianos y basados en informaci�n que permiten discriminar entre versiones alternativas de un modelo.
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
Magdiel Ablan, Renny M�rquez, Yuraima Rivas, Jos� Querales, Ana Luc�a Molina

Maintainer: Magdiel Ablan <mablan@ula.ve>
Maintainer: Renny M�rquez <marquezrenny@ula.ve>
}
\references{
Ablan, Magdiel; M�rquez, Renny; Rivas, Yuraima; Molina, Ana y Querales, Jos� (2011). Una librer�a en R para validaci�n de modelos de simulaci�n. Revista Ciencia e Ingenier�a, Edici�n Especial: "Jornada de Modelado y Simulaci�n", p. 117-126. Disponible en http://150.185.136.100/pdf/cing/v32s2/art13.pdf

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
