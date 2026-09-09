# SQL Server Desde Cero

## Capítulo 008 - INSERT

En los capítulos anteriores aprendimos a:

- Crear una base de datos.
- Crear una tabla.
- Elegir tipos de datos.

Ahora comenzaremos a guardar información dentro de nuestras tablas.

Para eso utilizaremos:

```sql
INSERT INTO
```

---

# ¿Qué aprenderás?

- Qué hace `INSERT`.
- Cómo utilizar `INSERT INTO`.
- Cómo utilizar `VALUES`.
- Cómo insertar un registro.
- Cómo insertar varios registros.
- Por qué el orden de columnas y valores importa.
- Qué ocurre con una columna `IDENTITY`.

---

# Nuestra tabla Productos

Partimos de una estructura similar a:

```sql
CREATE TABLE Productos
(
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);
```

La tabla existe, pero inicialmente no contiene registros.

---

# Insertar un registro

Podemos agregar un producto:

```sql
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Mouse', 15000.00, 10);
```

---

# ¿Cómo se interpreta?

Tenemos:

```sql
INSERT INTO Productos
```

Esto indica:

```text
Insertar información
en la tabla Productos.
```

Después:

```sql
(Nombre, Precio, Stock)
```

indica qué columnas queremos completar.

Finalmente:

```sql
VALUES
('Mouse', 15000.00, 10)
```

define los valores.

---

# Columnas y valores

Debemos respetar el orden.

```text
Nombre  → 'Mouse'
Precio  → 15000.00
Stock   → 10
```

Podemos visualizarlo:

```text
(Nombre, Precio, Stock)
    │       │      │
    ▼       ▼      ▼
('Mouse', 15000, 10)
```

---

# ¿Por qué no insertamos IdProducto?

Nuestra columna fue definida como:

```sql
IdProducto INT IDENTITY(1,1)
```

Por lo tanto, SQL Server genera automáticamente:

```text
1
2
3
4
...
```

No necesitamos indicar manualmente ese valor en nuestros `INSERT` normales.

---

# Consultar el resultado

Después podemos ejecutar:

```sql
SELECT *
FROM Productos;
```

Resultado:

```text
IdProducto | Nombre | Precio   | Stock
-----------|--------|----------|------
1          | Mouse  | 15000.00 | 10
```

---

# Insertar varios registros

SQL Server permite insertar varias filas en una misma instrucción.

```sql
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Teclado', 25000.00, 8),
    ('Monitor', 180000.00, 5),
    ('Auriculares', 32000.00, 12);
```

Ahora la tabla tendrá varios productos.

---

# Resultado

```text
IdProducto | Nombre       | Precio    | Stock
-----------|--------------|-----------|------
1          | Mouse        | 15000.00  | 10
2          | Teclado      | 25000.00  | 8
3          | Monitor      | 180000.00 | 5
4          | Auriculares  | 32000.00  | 12
```

---

# Textos entre comillas

Los valores de texto se escriben entre comillas simples:

```sql
'Mouse'
```

```sql
'Teclado'
```

En SQL utilizamos normalmente:

```text
'
```

para literales de texto.

---

# Valores numéricos

Los números no llevan comillas:

```sql
15000.00
```

```sql
10
```

Por ejemplo:

```sql
('Mouse', 15000.00, 10)
```

Tenemos:

```text
'Mouse'  → texto
15000.00 → decimal
10       → entero
```

---

# Insertar respetando tipos

Recordemos que nuestra tabla define:

```text
Nombre → VARCHAR
Precio → DECIMAL
Stock  → INT
```

Por eso los valores deberían corresponder con esos tipos.

Ejemplo correcto:

```sql
('Monitor', 180000.00, 5)
```

---

# Un error conceptual común

Supongamos:

```sql
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    (10, 'Mouse', 15000.00);
```

El orden ya no corresponde con las columnas.

Estamos intentando guardar:

```text
Nombre → 10
Precio → 'Mouse'
Stock  → 15000.00
```

Eso puede provocar errores de conversión o datos incorrectos.

---

# Una buena práctica

Aunque SQL Server permite ciertas formas abreviadas, para aprender y mantener scripts claros conviene indicar explícitamente las columnas:

```sql
INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Mouse', 15000.00, 10);
```

Esto hace más evidente qué dato pertenece a cada columna.

---

# Ejemplo completo

```sql
USE TiendaDB;
GO

INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Mouse', 15000.00, 10);
GO

INSERT INTO Productos
    (Nombre, Precio, Stock)
VALUES
    ('Teclado', 25000.00, 8),
    ('Monitor', 180000.00, 5),
    ('Auriculares', 32000.00, 12);
GO

SELECT *
FROM Productos;
GO
```

---

# Ejercicio

Agregar tres productos nuevos:

```text
Notebook
Webcam
Micrófono
```

Definí para cada uno:

```text
Precio
Stock
```

y agregalos utilizando:

```sql
INSERT INTO
```

Después comprobá los resultados con:

```sql
SELECT *
FROM Productos;
```

---

# Desafío extra

Crear una tabla:

```text
Clientes
```

y agregar al menos tres registros.

Podría tener:

```text
IdCliente
Nombre
Email
Edad
```

Primero definí correctamente la tabla.

Después utilizá `INSERT`.

---

# Dato importante

`CREATE TABLE` crea la estructura.

```text
Tabla
Columnas
Tipos
```

`INSERT` agrega los datos.

```text
Filas
Registros
Información
```

Son operaciones diferentes.

---

# Próximo capítulo

Ahora que tenemos registros almacenados, podremos comenzar a consultar y trabajar con esa información utilizando SQL.
