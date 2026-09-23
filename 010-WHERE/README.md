# SQL Server Desde Cero

## Capítulo 010 - WHERE

En el capítulo anterior aprendimos a consultar datos utilizando:

```sql
SELECT
```

Ahora aprenderemos a seleccionar solamente los registros que cumplen una determinada condición mediante:

```sql
WHERE
```

---

## Sintaxis

La estructura básica es:

```sql
SELECT columnas
FROM tabla
WHERE condicion;
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
```

Podemos interpretarlo como:

```text
SELECT Nombre, Precio
        ↓
¿Qué queremos ver?

FROM Productos
        ↓
¿De qué tabla?

WHERE Precio > 20000
        ↓
¿Qué registros queremos?
```

---

## Nuestra tabla

Continuamos utilizando `Productos`:

```text
IdProducto | Nombre      | Precio    | Stock
-----------|-------------|-----------|------
1          | Mouse       | 15000.00  | 10
2          | Teclado     | 25000.00  | 8
3          | Monitor     | 180000.00 | 5
4          | Auriculares | 32000.00  | 12
```

---

# Filtrar números

Podemos consultar productos cuyo precio sea mayor a `20000`:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
```

Resultado:

```text
Nombre      | Precio
------------|----------
Teclado     | 25000.00
Monitor     | 180000.00
Auriculares | 32000.00
```

---

# Operadores de comparación

Los principales operadores que podemos utilizar son:

```text
=     Igual a

<>    Distinto de

>     Mayor que

<     Menor que

>=    Mayor o igual que

<=    Menor o igual que
```

Ejemplo:

```sql
SELECT Nombre, Stock
FROM Productos
WHERE Stock >= 10;
```

---

# Igualdad

Para buscar un valor exacto:

```sql
SELECT *
FROM Productos
WHERE Stock = 10;
```

---

# Distinto

Podemos utilizar:

```sql
<>
```

Por ejemplo:

```sql
SELECT Nombre, Stock
FROM Productos
WHERE Stock <> 5;
```

Esto devuelve los registros cuyo `Stock` no sea `5`.

---

# Comparar texto

También podemos utilizar `WHERE` con cadenas.

```sql
SELECT *
FROM Productos
WHERE Nombre = 'Mouse';
```

Los textos se escriben entre comillas simples:

```sql
'Mouse'
```

No debemos escribir:

```sql
WHERE Nombre = Mouse;
```

---

# WHERE y ORDER BY

Podemos combinar lo aprendido:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000
ORDER BY Precio DESC;
```

Primero filtramos los registros y después mostramos el resultado ordenado.

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
Resultado
```

---

# Varias condiciones

También podemos combinar condiciones.

## AND

Ambas condiciones deben cumplirse:

```sql
SELECT Nombre, Precio, Stock
FROM Productos
WHERE Precio > 20000
  AND Stock >= 8;
```

---

## OR

Debe cumplirse al menos una:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio < 20000
   OR Precio > 100000;
```

---

# ¿WHERE modifica los datos?

No.

Esta consulta:

```sql
SELECT *
FROM Productos
WHERE Precio > 20000;
```

solamente consulta información.

No elimina ni modifica los registros.

---

# Curiosidad

`WHERE` forma parte de SQL desde sus primeras etapas y continúa siendo una de sus cláusulas fundamentales.

La idea detrás de la instrucción es muy directa:

```text
De todos los registros disponibles...

¿CUÁLES cumplen esta condición?
```

Esa misma lógica aparece constantemente al consultar bases de datos.

---

# Ejercicio

Utilizando `Productos`, crear consultas para:

1. Mostrar productos con precio mayor a `30000`.
2. Mostrar productos con stock menor a `10`.
3. Buscar solamente el producto `"Teclado"`.
4. Mostrar productos cuyo stock sea distinto de `5`.

---

# Desafío

Crear una consulta que muestre:

```text
Nombre
Precio
Stock
```

solamente cuando:

```text
Precio > 20000
```

y:

```text
Stock >= 8
```

Después ordenar el resultado por precio de mayor a menor.

Pista:

```sql
SELECT
FROM
WHERE
AND
ORDER BY
```

---

# Resumen

La estructura fundamental es:

```sql
SELECT columnas
FROM tabla
WHERE condicion;
```

Por ejemplo:

```sql
SELECT Nombre, Precio
FROM Productos
WHERE Precio > 20000;
```

Podemos utilizar:

```text
=   <>   >   <   >=   <=
```

y combinar condiciones mediante:

```sql
AND
OR
```

`WHERE` será fundamental para construir consultas cada vez más específicas.
