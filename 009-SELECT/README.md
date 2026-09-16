# SQL Server Desde Cero

## Capítulo 009 - SELECT

En el capítulo anterior utilizamos:

```sql
INSERT
```

para agregar registros a nuestra tabla.

Ahora aprenderemos a consultar esos datos utilizando:

```sql
SELECT
```

`SELECT` es una de las instrucciones fundamentales de SQL.

---

## ¿Qué aprenderás?

- Qué hace `SELECT`.
- Cómo consultar una tabla.
- Qué significa `SELECT *`.
- Cómo seleccionar columnas específicas.
- Cómo utilizar alias con `AS`.
- Cómo comenzar a filtrar con `WHERE`.
- Cómo ordenar resultados con `ORDER BY`.

---

# Nuestra tabla

Continuamos trabajando con:

```text
Productos
```

Supongamos que contiene:

```text
IdProducto | Nombre      | Precio    | Stock
-----------|-------------|-----------|------
1          | Mouse       | 15000.00  | 10
2          | Teclado     | 25000.00  | 8
3          | Monitor     | 180000.00 | 5
4          | Auriculares | 32000.00  | 12
```

---

# Nuestro primer SELECT

La consulta:

```sql
SELECT *
FROM Productos;
```

devuelve todas las columnas de la tabla.

El símbolo:

```text
*
```

significa:

```text
todas las columnas
```

Por lo tanto:

```sql
SELECT *
```

puede interpretarse como:

```text
Seleccionar todas las columnas.
```

---

# FROM

Después tenemos:

```sql
FROM Productos
```

`FROM` indica de dónde queremos obtener los datos.

En este caso:

```text
Productos
```

es nuestra tabla.

---

# Estructura básica

Podemos pensar:

```sql
SELECT columnas
FROM tabla;
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos;
```

---

# Seleccionar columnas específicas

No siempre necesitamos todas las columnas.

Podemos solicitar únicamente:

```sql
SELECT Nombre, Precio
FROM Productos;
```

Resultado:

```text
Nombre      | Precio
------------|----------
Mouse       | 15000.00
Teclado     | 25000.00
Monitor     | 180000.00
Auriculares | 32000.00
```

Esto resulta más claro cuando solamente necesitamos cierta información.

---

# Utilizar alias

Podemos cambiar temporalmente el nombre mostrado para una columna utilizando:

```sql
AS
```

Por ejemplo:

```sql
SELECT
    Nombre AS Producto,
    Precio AS PrecioUnitario
FROM Productos;
```

El resultado puede mostrarse como:

```text
Producto    | PrecioUnitario
------------|---------------
Mouse       | 15000.00
Teclado     | 25000.00
Monitor     | 180000.00
Auriculares | 32000.00
```

El alias no modifica el nombre real de la columna.

Solamente modifica cómo aparece en el resultado de esa consulta.

---

# Filtrar registros

Podemos comenzar a combinar `SELECT` con:

```sql
WHERE
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
```

Podemos interpretarlo como:

```text
Seleccionar Nombre y Precio
        ↓
de Productos
        ↓
solamente cuando Precio > 20000
```

Resultado:

```text
Nombre      | Precio
------------|----------
Teclado     | 25000.00
Monitor     | 180000.00
Auriculares | 32000.00
```

Más adelante profundizaremos en filtros y condiciones.

---

# Ordenar resultados

Podemos utilizar:

```sql
ORDER BY
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC;
```

`DESC` significa orden descendente.

Resultado:

```text
Monitor
Auriculares
Teclado
Mouse
```

según el precio de mayor a menor.

---

# ASC y DESC

Podemos utilizar:

```sql
ORDER BY Precio ASC;
```

para ordenar:

```text
menor → mayor
```

o:

```sql
ORDER BY Precio DESC;
```

para ordenar:

```text
mayor → menor
```

`ASC` es el orden ascendente y es el predeterminado si no indicamos otro.

---

# La estructura empieza a crecer

Ahora podemos escribir:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000
ORDER BY Precio DESC;
```

Podemos interpretarlo así:

```text
SELECT
¿Qué columnas quiero?

        ↓

FROM
¿De qué tabla?

        ↓

WHERE
¿Qué registros cumplen mi condición?

        ↓

ORDER BY
¿Cómo quiero ordenar el resultado?
```

---

# SELECT no modifica los datos

Este concepto es importante.

Cuando ejecutamos:

```sql
SELECT *
FROM Productos;
```

estamos consultando la información.

Los registros originales permanecen almacenados en la tabla.

Podemos resumir:

```text
INSERT
↓
agrega registros


SELECT
↓
consulta registros
```

---

# SELECT * o columnas específicas

Para aprender y explorar una tabla resulta cómodo utilizar:

```sql
SELECT *
FROM Productos;
```

Pero en consultas reales suele ser preferible indicar las columnas que necesitamos:

```sql
SELECT Nombre, Precio
FROM Productos;
```

Esto hace más explícita la intención de la consulta y evita recuperar columnas innecesarias.

---

# Ejemplo completo

```sql
USE TiendaDB;
GO

SELECT *
FROM Productos;
GO

SELECT Nombre, Precio
FROM Productos;
GO

SELECT
    Nombre AS Producto,
    Precio AS PrecioUnitario
FROM Productos;
GO

SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
GO

SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC;
GO
```

---

# Ejercicio

Utilizando la tabla:

```text
Productos
```

realizá las siguientes consultas:

1. Mostrar todos los registros.
2. Mostrar solamente `Nombre` y `Precio`.
3. Mostrar los productos cuyo precio sea mayor a `20000`.
4. Ordenar los productos por precio de menor a mayor.

Intentá resolver cada consulta antes de mirar los ejemplos anteriores.

---

# Desafío

Creá una consulta que:

1. Muestre solamente `Nombre`, `Precio` y `Stock`.
2. Seleccione productos con precio superior a `20000`.
3. Ordene el resultado desde el producto más caro hasta el más barato.

La consulta debería combinar:

```sql
SELECT
FROM
WHERE
ORDER BY
```

---

# Dato importante

Podemos pensar una consulta SQL como una serie de preguntas:

```text
SELECT
¿Qué quiero ver?

FROM
¿De dónde?

WHERE
¿Qué debe cumplir?

ORDER BY
¿En qué orden?
```

Aprender a formular correctamente estas preguntas es una de las bases para construir consultas SQL.

---

# Resumen

Nuestra estructura básica es:

```sql
SELECT columnas
FROM tabla;
```

Y podemos comenzar a ampliarla:

```sql
SELECT columnas
FROM tabla
WHERE condicion
ORDER BY columna;
```

Con `SELECT` empezamos a transformar los datos almacenados en información que podemos consultar y analizar.
