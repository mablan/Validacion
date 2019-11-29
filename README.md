# Validacion
## R package to validate continuous simulation models

La validación es una fase importante del proceso de simulación que permite evaluar la calidad de un modelo.
Especı́ficamente en el caso de modelos de simulación continua se comparan datos u observaciones del sistema
real con las predicciones generadas por el modelo. Para facilitar a los usuarios esta comparación, en este trabajo
se desarrolló una librerı́a de métodos para validar modelos de simulación continua. Se incluyeron varias de las
técnicas más usadas para validar modelos: desde ı́ndices simples tales como el error cuadrático medio y sus derivados
(ı́ndice de Theil, ı́ndice de eficiencia, etc.) hasta métodos estadı́sticos clásicos (regresiones predicciones de modelo
versus datos, pruebas t-pareadas, entre otros). Se incluyeron además métodos estadı́sticos bayesianos y basados
en información que permiten discriminar entre versiones alternativas de un modelo. La librerı́a incluye además
varios conjuntos de datos, ayuda y un manual para comprender mejor las diferentes técnicas y su aplicación. Fue
desarrollada en el lenguaje estadı́stico R y se encuentra disponible libremente.


### Abstract
Validation is an important phase in simulation that helps to evaluate model’s quality. Specifically, in continuous
simulation models, real data and model’s results are compared. In this paper we present a library of methods to
validate continuous simulation models that facilitate this task. We included several of the most used models validation
techniques: from simple index such as mean squared error and its variants (Theil statistics, model efficiency, etc.)
to classical statistical methods (model vs data regressions, paired t-test and others). We also included Bayesian
statistical methods and information criteria methods that allow choosing between different models. The library
includes several data frames, help and a manual for better understanding of the techniques and its application.
The library was developed in R language and is available.
