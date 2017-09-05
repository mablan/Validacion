pkgname <- "Validacion"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
options(pager = "console")
library('Validacion')

assign(".oldSearch", search(), pos = 'CheckExEnv')
cleanEx()
nameEx("Lacteos")
### * Lacteos

flush(stderr()); flush(stdout())

### Name: Lacteos
### Title: Datos reales y resultados de la simulaci<c3><b3>n de la
###   producci<c3><b3>n de quesos madurados
### Aliases: Lacteos
### Keywords: datasets

### ** Examples

data(Lacteos)



cleanEx()
nameEx("Mixteque")
### * Mixteque

flush(stderr()); flush(stdout())

### Name: Mixteque
### Title: Din<c3><a1>mica de agua en el suelo durante el ciclo del cultivo
###   de papa en la poblaci<c3><b3>n de Mixteque en el p<c3><a1>ramo andino
### Aliases: Mixteque
### Keywords: datasets

### ** Examples

data(Mixteque)



cleanEx()
nameEx("PlanktonM")
### * PlanktonM

flush(stderr()); flush(stdout())

### Name: PlanktonM
### Title: Datos de phytoplankton y biomasa de zooplankton de un modelo
### Aliases: PlanktonM
### Keywords: datasets

### ** Examples

data(PlanktonM)



cleanEx()
nameEx("PlanktonR")
### * PlanktonR

flush(stderr()); flush(stdout())

### Name: PlanktonR
### Title: Datos observados de phytoplankton y biomasa de zooplankton
### Aliases: PlanktonR
### Keywords: datasets

### ** Examples

data(PlanktonR)



cleanEx()
nameEx("ValAIC")
### * ValAIC

flush(stderr()); flush(stdout())

### Name: ValAIC
### Title: Coeficiente de informaci<c3><b3>n de Akaike (AIC)
### Aliases: ValAIC
### Keywords: Coeficiente de Información de Akaike

### ** Examples

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




cleanEx()
nameEx("ValBayes")
### * ValBayes

flush(stderr()); flush(stdout())

### Name: ValBayes
### Title: Inferencia bayesiana
### Aliases: ValBayes
### Keywords: Bayes

### ** Examples

data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValBayes(x,y)



cleanEx()
nameEx("ValCorrela")
### * ValCorrela

flush(stderr()); flush(stdout())

### Name: ValCorrela
### Title: Coeficiente de correlaci<c3><a1>n de Spearman (ro)
### Aliases: ValCorrela
### Keywords: Correlación

### ** Examples

data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValCorrela(x, y)



cleanEx()
nameEx("ValEF")
### * ValEF

flush(stderr()); flush(stdout())

### Name: ValEF
### Title: Indice de Eficiencia (EF)
### Aliases: ValEF
### Keywords: Indice de eficiencia

### ** Examples

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



cleanEx()
nameEx("ValMAE")
### * ValMAE

flush(stderr()); flush(stdout())

### Name: ValMAE
### Title: Error Absoluto Medio (MAE)
### Aliases: ValMAE
### Keywords: Error Absoluto Medio

### ** Examples

## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValMAE(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValMAE(x, y)



cleanEx()
nameEx("ValMSE")
### * ValMSE

flush(stderr()); flush(stdout())

### Name: ValMSE
### Title: Error cuadr<c3><a1>tico medio (MSE)
### Aliases: ValMSE
### Keywords: Error cuadrático medio

### ** Examples

## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValMSE(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValMSE(x, y)



cleanEx()
nameEx("ValProfile")
### * ValProfile

flush(stderr()); flush(stdout())

### Name: ValProfile
### Title: An<c3><a1>lisis de Perfil (Profile Analysis)
### Aliases: ValProfile
### Keywords: Análisis de perfil

### ** Examples

data(PlanktonR) #Ejemplo 8.2 pag. 160 de Haefner
data(PlanktonM)
ValProfile(PlanktonM,PlanktonR,3)



cleanEx()
nameEx("ValPruebaF")
### * ValPruebaF

flush(stderr()); flush(stdout())

### Name: ValPruebaF
### Title: Prueba F de Fisher
### Aliases: ValPruebaF
### Keywords: Prueba F de Fisher

### ** Examples

## Ejemplo1
data(Mixteque)
x<-data.frame(Mixteque$Mod1SimulaBaja,Mixteque$Mod2SimulaBaja,Mixteque$Mod3SimulaBaja)
y<-data.frame(Mixteque$Mod1DatosBaja)
ValPruebaF(x,y)

## Ejemplo2
data(Lacteos)
x<-Lacteos$InventarioGrutaBacterianaSimula
y<-Lacteos$InventarioGrutaBacterianaDatos
ValPruebaF(x, y)
    




cleanEx()
nameEx("ValPruebat")
### * ValPruebat

flush(stderr()); flush(stdout())

### Name: ValPruebat
### Title: Prueba t de Student
### Aliases: ValPruebat
### Keywords: Prueba t de Student

### ** Examples

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




cleanEx()
nameEx("ValR2")
### * ValR2

flush(stderr()); flush(stdout())

### Name: ValR2
### Title: Coeficiente de determinaci<c3><b3>n R cuadrado
### Aliases: ValR2
### Keywords: Coeficiente de determinación R cuadrado

### ** Examples

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




cleanEx()
nameEx("ValTheil")
### * ValTheil

flush(stderr()); flush(stdout())

### Name: ValTheil
### Title: Indice de Theil
### Aliases: ValTheil
### Keywords: Indice de Theil

### ** Examples

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




cleanEx()
nameEx("ValWillmott")
### * ValWillmott

flush(stderr()); flush(stdout())

### Name: ValWillmott
### Title: Indice de ajuste Willmott
### Aliases: ValWillmott
### Keywords: Indice de ajuste Willmott

### ** Examples

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



cleanEx()
nameEx("Validacion-package")
### * Validacion-package

flush(stderr()); flush(stdout())

### Name: Validacion-package
### Title: Validaci<c3><b3>n de Modelos de Simulaci<c3><b3>n
### Aliases: Validacion-package Validacion
### Keywords: validacion

### ** Examples

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



### * <FOOTER>
###
cat("Time elapsed: ", proc.time() - get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')
