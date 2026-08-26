# SQL Server Desde Cero

## Capítulo 006 - Crear una tabla

En el capítulo anterior creamos nuestra primera base de datos:

```sql
CREATE DATABASE TiendaDB;
```

Ahora comenzaremos a construir su estructura creando nuestra primera tabla.

---

# ¿Qué aprenderás?

- Qué es una tabla.
- Cómo utilizar `CREATE TABLE`.
- Qué son las columnas.
- Qué son los tipos de datos.
- Qué significa `PRIMARY KEY`.
- Cómo funciona `IDENTITY`.
- Qué significa `NOT NULL`.

---

# ¿Qué es una tabla?

Una tabla permite organizar información mediante filas y columnas.

Por ejemplo, queremos almacenar productos:

```text
Productos

IdProducto | Nombre | Precio | Stock
-----------|--------|--------|------
1          | Café   | 4500   | 10
2          | Té     | 2500   | 15
```

Cada fila representa un producto.

Cada columna representa una característica.

---

# Crear nuestra tabla

Primero seleccionamos la base:

```sql
USE TiendaDB;
GO
```

Luego creamos la tabla:

```sql
CREATE TABLE Productos
(
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL
);
GO
```

---

# CREATE TABLE

La instrucción:

```sql
CREATE TABLE
```

indica a SQL Server que queremos crear una nueva tabla.

Después especificamos su nombre:

```sql
CREATE TABLE Productos
```

Y entre paréntesis definimos sus columnas:

```sql
CREATE TABLE Productos
(
    ...
);
```

---

# Las columnas

Nuestra tabla tiene cuatro columnas:

```text
Productos
│
├── IdProducto
├── Nombre
├── Precio
└── Stock
```

Cada columna necesita un nombre y un tipo de dato.

---

# INT

Utilizamos:

```sql
INT
```

para almacenar números enteros.

Por ejemplo:

```sql
Stock INT
```

puede almacenar:

```text
0
10
25
100
```

---

# VARCHAR

Utilizamos:

```sql
VARCHAR(100)
```

para almacenar texto de longitud variable.

Por ejemplo:

```sql
Nombre VARCHAR(100)
```

permite almacenar nombres como:

```text
Café
Yerba Mate
Azúcar
```

El `100` indica la longitud máxima definida para esa columna.

---

# DECIMAL

Para precios podemos utilizar:

```sql
DECIMAL(10,2)
```

El segundo valor indica que reservamos dos posiciones para la parte decimal.

Ejemplos:

```text
1500.00
2450.50
99999.99
```

Más adelante podemos profundizar en precisión y escala.

---

# PRIMARY KEY

Observemos:

```sql
IdProducto INT PRIMARY KEY
```

`PRIMARY KEY` define la clave primaria de la tabla.

Su función es identificar de forma única cada fila.

Por ejemplo:

```text
IdProducto
──────────
1
2
3
4
```

No deberíamos tener dos productos con el mismo `IdProducto`.

---

# IDENTITY

También utilizamos:

```sql
IDENTITY(1,1)
```

En nuestro ejemplo:

```sql
IdProducto INT IDENTITY(1,1) PRIMARY KEY
```

Podemos interpretar:

```text
IDENTITY(1,1)
         │ │
         │ └── Incremento
         │
         └──── Valor inicial
```

Por lo tanto:

```text
1
2
3
4
5
...
```

SQL Server genera estos valores automáticamente cuando posteriormente agreguemos registros.

---

# NOT NULL

Utilizamos:

```sql
NOT NULL
```

cuando queremos indicar que una columna debe contener un valor.

Por ejemplo:

```sql
Nombre VARCHAR(100) NOT NULL
```

significa que no queremos un producto sin nombre.

También aplicamos:

```sql
Precio DECIMAL(10,2) NOT NULL
Stock INT NOT NULL
```

---

# Nuestra estructura

Finalmente obtenemos:

```text
PRODUCTOS
────────────────────────────────────

IdProducto
INT
PRIMARY KEY
IDENTITY

Nombre
VARCHAR(100)
NOT NULL

Precio
DECIMAL(10,2)
NOT NULL

Stock
INT
NOT NULL
```

---

# ¿La tabla ya contiene productos?

No.

`CREATE TABLE` crea la estructura.

Por ejemplo:

```text
IdProducto | Nombre | Precio | Stock
-----------|--------|--------|------
```

Todavía no existen filas.

Más adelante tendremos que insertar información.

---

# Base de datos vs tabla

En el capítulo anterior:

```text
TiendaDB
```

Ahora:

```text
TiendaDB
│
└── Productos
```

Más adelante podremos tener:

```text
TiendaDB
│
├── Productos
├── Clientes
├── Ventas
└── Proveedores
```

Una base de datos puede contener muchas tablas.

---

# Ejercicio

Crear una nueva tabla:

```text
Clientes
```

con las columnas:

```text
IdCliente
Nombre
Email
Edad
```

Intentá elegir un tipo de dato adecuado para cada columna.

Como punto de partida:

```sql
CREATE TABLE Clientes
(
    IdCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Email VARCHAR(150) NOT NULL,
    Edad INT
);
```

---

# Dato importante

Crear una tabla y agregar datos son operaciones diferentes.

```sql
CREATE TABLE
```

crea la estructura.

Todavía no estamos almacenando registros.

---

# Próximo capítulo

Nuestra base de datos ya tiene su primera tabla.

El próximo paso será comenzar a guardar información dentro de ella.
