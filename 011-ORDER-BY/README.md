# SQL Server Desde Cero

## Capítulo 011 - ORDER BY

En capítulos anteriores aprendimos a consultar información:

```sql
SELECT *
FROM Productos;
```

y a filtrarla:

```sql
SELECT *
FROM Productos
WHERE Precio > 20000;
```

Ahora aprenderemos a **ordenar los resultados** utilizando:

```sql
ORDER BY
```

---

## Sintaxis básica

```sql
SELECT columnas
FROM tabla
ORDER BY columna;
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio;
```

Si no especificamos otra cosa, SQL Server utiliza orden ascendente.

---

# ASC

`ASC` significa:

```text
ASCENDENTE
```

Ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio ASC;
```

Si tenemos:

```text
Producto       Precio

Arroz          150
Yerba          320
Azúcar         380
Fideos         420
Aceite         650
```

los precios aparecen:

```text
150
320
380
420
650
```

De menor a mayor.

---

# DESC

`DESC` significa:

```text
DESCENDENTE
```

Utilizamos:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio DESC;
```

Resultado:

```text
650
420
380
320
150
```

De mayor a menor.

---

# ASC es el valor predeterminado

Estas dos consultas producen el mismo orden:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio;
```

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Precio ASC;
```

Sin embargo, escribir `ASC` puede hacer más explícita nuestra intención.

---

# Ordenar textos

`ORDER BY` no funciona solamente con números.

También podemos ordenar textos:

```sql
SELECT Nombre, Precio
FROM Productos
ORDER BY Nombre ASC;
```

Esto permite obtener los productos ordenados alfabéticamente según las reglas de ordenación aplicables a la columna.

---

# Combinar WHERE y ORDER BY

Podemos combinar lo aprendido:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000
ORDER BY Precio DESC;
```

Conceptualmente:

```text
Productos
    ↓
WHERE
Precio > 20000
    ↓
Registros filtrados
    ↓
ORDER BY
Precio DESC
    ↓
Resultado ordenado
```

---

# Ordenar por varias columnas

También podemos utilizar más de una columna.

```sql
SELECT Nombre, Precio, Stock
FROM Productos
ORDER BY Stock ASC, Precio DESC;
```

SQL Server primero ordenará utilizando:

```text
Stock ASC
```

y cuando varios registros tengan el mismo stock, utilizará:

```text
Precio DESC
```

como segundo criterio.

---

# ¿ORDER BY modifica los datos?

No.

Esta consulta:

```sql
SELECT *
FROM Productos
ORDER BY Precio DESC;
```

solamente modifica el **orden en que se presenta el resultado de la consulta**.

No reorganiza físicamente los registros de la tabla ni modifica sus valores.

---

# Un concepto importante

No debemos depender del orden en que los registros parecen estar almacenados.

Si necesitamos un resultado en un orden determinado, debemos solicitarlo explícitamente:

```sql
ORDER BY
```

Por ejemplo:

```sql
ORDER BY Precio ASC;
```

o:

```sql
ORDER BY Precio DESC;
```

---

# Ejercicio

Crear consultas que muestren los productos:

1. Por precio de menor a mayor.
2. Por precio de mayor a menor.
3. Por nombre en orden ascendente.
4. Con precio mayor a `20000`, ordenados de mayor a menor.

---

# Desafío

Crear una consulta que muestre:

```text
Nombre
Precio
Stock
```

Solamente para productos cuyo:

```text
Precio > 20000
```

y ordenarlos primero por:

```text
Stock ASC
```

y después por:

```text
Precio DESC
```

Pista:

```sql
SELECT
FROM
WHERE
ORDER BY
```

---

# Resumen

Orden ascendente:

```sql
ORDER BY Precio ASC;
```

Orden descendente:

```sql
ORDER BY Precio DESC;
```

Varias columnas:

```sql
ORDER BY Stock ASC, Precio DESC;
```

La idea principal:

```text
SELECT   → qué datos queremos

FROM     → de dónde

WHERE    → cuáles registros

ORDER BY → en qué orden
```

`ORDER BY` nos permite controlar cómo se presentan los resultados de nuestras consultas.
