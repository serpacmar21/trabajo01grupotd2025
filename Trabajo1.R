


## PROBLEMA 1 


source("teoriadecision_funciones_incertidumbre.R")

## ---------------------------------------------------------
## 1. Definimos la tabla de pagos (beneficios en miles de euros)
## ---------------------------------------------------------


vector_pagos <- c(80,40,10,
                  100,50,-20,
                  70,60,30)

tablaX <- crea.tablaX(
  vector_matporfilas = vector_pagos,
  numalternativas = 3,
  numestados = 3,
  nb_alternativas = c("E1_Redes", "E2_TV", "E3_Mixta"),
  nb_estados = c("Alta", "Media", "Baja")
)

tablaX


## Situación favorable

wald_fav     <- criterio.Wald(tablaX, favorable = TRUE)
optimista_fav <- criterio.Optimista(tablaX, favorable = TRUE)
hurwicz_fav  <- criterio.Hurwicz(tablaX, alfa = 0.6, favorable = TRUE)
laplace_fav  <- criterio.Laplace(tablaX, favorable = TRUE)
savage_fav   <- criterio.Savage(tablaX, favorable = TRUE)
puntoideal_fav <- criterio.PuntoIdeal(tablaX, favorable = TRUE)

## Mostrar resultados
wald_fav$AlternativaOptima
optimista_fav$AlternativaOptima
hurwicz_fav$AlternativaOptima
laplace_fav$AlternativaOptima
savage_fav$AlternativaOptima
puntoideal_fav$AlternativaOptima


##Situacion desfavorable

wald_desf     <- criterio.Wald(tablaX, favorable = FALSE)
optimista_desf <- criterio.Optimista(tablaX, favorable = FALSE)
hurwicz_desf  <- criterio.Hurwicz(tablaX, alfa = 0.6, favorable = FALSE)
laplace_desf  <- criterio.Laplace(tablaX, favorable = FALSE)
savage_desf   <- criterio.Savage(tablaX, favorable = FALSE)
puntoideal_desf <- criterio.PuntoIdeal(tablaX, favorable = FALSE)


wald_desf$AlternativaOptima
optimista_desf$AlternativaOptima
hurwicz_desf$AlternativaOptima
laplace_desf$AlternativaOptima
savage_desf$AlternativaOptima
puntoideal_desf$AlternativaOptima




##Aplicamos la función global 
resultado_fav  <- criterio.Todos(tablaX, alfa = 0.6, favorable = TRUE)
resultado_desf <- criterio.Todos(tablaX, alfa = 0.6, favorable = FALSE)

resultado_fav
resultado_desf



##-Conclusión:
##- En la situación favorable, los criterios Maximax y Hurwicz recomiendan la alternativa E2 (Publicidad en TV),
##-mientras que Laplace y Punto Ideal se inclinan por E3 (Publicidad mixta), que ofrece un equilibrio entre riesgo y beneficio.
##-En la situación desfavorable, los criterios Wald, Laplace y Savage recomiendan E3, ya que presenta la menor pérdida posible.

##-Por tanto, la decisión final recomendada es E3 (Publicidad mixta), por ser la más robusta frente a la incertidumbre.



## PROBLEMA 2 


source("teoriadecision_funciones_incertidumbre.R")

## ---------------------------------------------------------
## 1. Definimos la tabla de pagos (beneficios en millones de euros)
## ---------------------------------------------------------


vector_pagos2 <- c(12, 8, 3,
                   10, 9, 6,
                   11, 7, 4)

tablaX2 <- crea.tablaX(
  vector_matporfilas = vector_pagos2,
  numalternativas = 3,
  numestados = 3,
  nb_alternativas = c("L1_Andalucía", "L2_CastillaLaMancha", "L3_Aragón"),
  nb_estados = c("Alta", "Media", "Baja")
)

tablaX2


## Aplicamos la función global


resultado_total <- criterio.Todos(tablaX2, alfa = 0.6, favorable = TRUE)

## Mostrar la tabla resumen
resultado_total

##-Conclusión:
  
##-La tabla resumen obtenida muestra las decisiones recomendadas por cada método.
##-- En este caso, la mayoría de los criterios coinciden en que la mejor alternativa es L2 (Castilla-La Mancha).
##-- Esta localización presenta el mejor equilibrio entre rendimiento medio y riesgo bajo ante la incertidumbre del nivel de radiación solar.

##-Por tanto, la decisión final recomendada es L2: Castilla-La Mancha como ubicación óptima para la nueva planta solar.

