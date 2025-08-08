# Métodos Numéricos: Ejercicios de Ecuaciones Diferenciales Ordinarias (EDOs)

Implementación en GNU Octave de métodos numéricos para la solución de problemas de valores iniciales y sistemas de ecuaciones diferenciales ordinarias, comparando soluciones analíticas y aproximadas mediante métodos de Euler y Runge-Kutta de cuarto orden.

---

## 📂 Archivos

| Problema                 | Descripción                                                                                                                                                                                                                                                                                                                                                                                                 |
|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **`Problema_25_1.m`**    | Resuelve analíticamente el problema de valores iniciales: <br><br> \(\frac{dy}{dx} = yx^2 - 1.1y,\quad y(0) = 1\) <br> Calcula la solución exacta y la grafica en el intervalo \(0 \leq x \leq 2\).                                                                                                                                                                                                                                                |
| **`Problema_25_2.m`**    | Resuelve el mismo problema del **Problema_25_1** pero aplicando el **método de Euler** con \(h = 0.5\) y \(h = 0.25\), comparando los resultados con la solución analítica. <br> Grafica las tres curvas (exacta y aproximaciones) en un mismo plano para análisis visual del error.                                                                                                                                                                |
| **`Problema_25_11.m`**   | Resuelve el sistema: <br><br> \(\frac{dy}{dx} = -2y + 4e^{-x}\) <br> \(\frac{dz}{dx} = -\frac{y z^2}{3}\) <br> con \(y(0) = 1\), \(z(0) = 2\), \(h = 0.25\) y \(0 \leq x \leq 2\). <br><br> Aplica: <br> a) Método de Euler <br> b) Método de Runge-Kutta de cuarto orden <br> Muestra tablas comparativas en consola y grafica la evolución de \(y(x)\) y \(z(x)\) para ambos métodos. |

---

## ⚙️ Requisitos

- [GNU Octave](https://www.gnu.org/software/octave/) (recomendado: versión 7.3 o superior)  
- Alternativamente, puedes usar [Octave Online](https://octave-online.net) para ejecutar los scripts sin instalación local.

---

## 🚀 Instrucciones de uso

1. Descarga los tres archivos `.m` y colócalos en el mismo directorio.  
2. Abre GNU Octave.  
3. Ejecuta cada script por separado desde la consola de Octave, por ejemplo:

```octave
Problema_25_1
Problema_25_2
Problema_25_11
```

---


## 📈 Resultado
Cada script mostrará en consola y/o en gráficas los resultados de la solución exacta y las aproximaciones numéricas según el método utilizado.

---
## 📊 Visualización
### - Problema_25_1

### - Problema_25_2

### - Problema_25_11

---

## 🧾 Créditos
- **Materia:** Métodos Numéricos
- **Asesor:** Claudio Hiram Carmona Jurado
- **Alumno:** Jonathan Eduardo Olivas Meixueiro
- **Matricula:** 240694
- **Fecha de entrega:** 08/Agosto/2025# Ejercicios-de-Ecuaciones-Diferenciales--EDOs-