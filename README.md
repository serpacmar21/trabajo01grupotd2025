# Trabajo 1

Este repositorio contiene el proyecto individual correspondiente a la asignatura **Teoría de la Decisión**, realizado en **RStudio**.

El trabajo tiene como objetivo **formular y resolver dos problemas de decisión bajo incertidumbre**, aplicando los métodos vistos en la asignatura mediante el uso del fichero de funciones proporcionado por el profesor (`teoriadecision_funciones_incertidumbre.R`).

---

## Contenido del repositorio

- **`Trabajo1.R`** → Solición de los dos problemas planteados con su código correspondiente.  
- **`Enunciados_Trabajo1.R`** → Enunciados de los dos problemas.  
- **`teoriadecision_funciones_incertidumbre.R`** → Archivo de funciones proporcionado por el profesor.  
- **`README.md`** → Este archivo de descripción del proyecto.

---

## Descripción de los problemas

### **Problema 1 – Estrategia de marketing bajo incertidumbre**

Una empresa tecnológica debe decidir entre tres estrategias de lanzamiento de un nuevo producto.  
Se plantea una tabla de pagos con beneficios esperados en distintos escenarios de demanda.  
El problema se resuelve mediante los criterios:

- Optimista (Maximax)  
- Pesimista (Wald / Maximin)  
- Hurwicz (α = 0.6)  
- Laplace  
- Savage (min. arrepentimiento)  
- Punto Ideal  

La resolución se realiza tanto en **situación favorable** como **desfavorable**, y se incluye una **conclusión final** que justifica la decisión más robusta.

---

### **Problema 2 – Localización de una planta solar**

Una empresa de energías renovables debe decidir la ubicación óptima para una nueva planta solar.  
Se evalúan tres alternativas (Andalucía, Castilla-La Mancha y Aragón) bajo tres niveles posibles de radiación solar (Alta, Media, Baja).

El problema se resuelve con la **función global `criterio.Todos()`**, que aplica automáticamente todos los métodos de decisión bajo incertidumbre y devuelve la tabla resumen con las alternativas óptimas según cada criterio.


