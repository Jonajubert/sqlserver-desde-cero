# SQL Server Desde Cero

## Capítulo 007 - Tipos de datos

En el capítulo anterior aprendimos a crear una tabla utilizando:

```sql
CREATE TABLE
```

También definimos columnas como:

```sql
IdProducto INT
Nombre VARCHAR(100)
Precio DECIMAL(10,2)
```

Ahora vamos a entender qué significan esos tipos de datos.

---

# ¿Qué aprenderás?

- Qué es un tipo de dato.
- Para qué sirve `INT`.
- Cómo almacenar texto.
- Diferencias básicas entre `VARCHAR` y `NVARCHAR`.
- Cómo utilizar `DECIMAL`.
- Cómo almacenar fechas.
- Para qué sirve `BIT`.
- Por qué debemos elegir correctamente el tipo de cada columna.

---

# ¿Qué es un tipo de dato?

Cuando creamos una columna, SQL Server necesita conocer qué tipo de información almacenará.

Por ejemplo:

```sql
Stock INT
```

indica que `Stock` almacenará números enteros.

Mientras que:

```sql
Nombre VARCHAR(100)
```

indica que `Nombre` almacenará texto.

Podemos visualizarlo así:

```text
COLUMNA          TIPO

IdProducto   →   INT
Nombre       →   VARCHAR(100)
Precio       →   DECIMAL(10,2)
Stock        →   INT
FechaAlta    →   DATE
Activo       →   BIT
```

---

# INT

`INT` permite almacenar números enteros.

```sql
Stock INT
```

Ejemplos:

```text
0
10
150
-20
```

No contiene una parte decimal.

---

# VARCHAR

`VARCHAR` permite almacenar texto de longitud variable.

```sql
Nombre VARCHAR(100)
```

El número:

```text
100
```

define el límite máximo establecido para esa columna.

Ejemplos:

```text
Monitor
Teclado
Mouse inalámbrico
```

---

# NVARCHAR

También podemos encontrar:

```sql
NVARCHAR(100)
```

Al igual que `VARCHAR`, permite almacenar texto.

`NVARCHAR` está pensado para almacenar caracteres Unicode.

Por ejemplo:

```sql
Descripcion NVARCHAR(200)
```

Para aplicaciones modernas que pueden trabajar con diferentes idiomas y caracteres, es una alternativa importante.

---

# DECIMAL

Para valores decimales podemos utilizar:

```sql
DECIMAL(10,2)
```

Por ejemplo:

```sql
Precio DECIMAL(10,2)
```

Los dos valores representan:

```text
DECIMAL(10,2)
         │  │
         │  └── 2 posiciones decimales
         │
         └───── 10 dígitos totales
```

Ejemplos válidos:

```text
1500.00
2499.90
125000.50
```

---

# DATE

Para almacenar una fecha podemos utilizar:

```sql
DATE
```

Por ejemplo:

```sql
FechaAlta DATE
```

Un valor podría ser:

```text
2026-09-02
```

SQL Server reconoce el dato como una fecha y no simplemente como texto.

---

# DATETIME2

Si necesitamos fecha y hora podemos utilizar:

```sql
DATETIME2
```

Por ejemplo:

```sql
FechaRegistro DATETIME2
```

Puede representar información como:

```text
2026-09-02 14:30:00
```

---

# BIT

Para datos que representan dos estados podemos utilizar:

```sql
BIT
```

Por ejemplo:

```sql
Activo BIT
```

Podemos trabajar conceptualmente con:

```text
1 → Verdadero
0 → Falso
```

Esto resulta útil para información como:

```text
Activo / Inactivo
Disponible / No disponible
Sí / No
```

---

# Nuestra tabla

Podemos combinar estos tipos:

```sql
CREATE TABLE ProductosEjemplo
(
    IdProducto INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Precio DECIMAL(10,2) NOT NULL,
    Stock INT NOT NULL,
    FechaAlta DATE NOT NULL,
    Activo BIT NOT NULL
);
```

Tenemos:

```text
ProductosEjemplo
│
├── IdProducto → INT
├── Nombre     → VARCHAR(100)
├── Precio     → DECIMAL(10,2)
├── Stock      → INT
├── FechaAlta  → DATE
└── Activo     → BIT
```

---

# ¿Por qué importa el tipo de dato?

Imaginemos que almacenamos:

```text
Precio = "2500"
```

como texto.

Visualmente parece un número.

Pero conceptualmente le estamos diciendo a SQL Server:

```text
ESTO ES TEXTO
```

Si queremos trabajar con precios, es preferible definir una columna numérica adecuada:

```sql
Precio DECIMAL(10,2)
```

Lo mismo ocurre con las fechas.

En lugar de guardar una fecha como texto:

```sql
Fecha VARCHAR(20)
```

podemos utilizar:

```sql
Fecha DATE
```

---

# Elegir según el dato

Una guía inicial puede ser:

```text
NÚMERO ENTERO
      ↓
     INT


TEXTO
      ↓
VARCHAR / NVARCHAR


DECIMAL EXACTO
      ↓
   DECIMAL


FECHA
      ↓
    DATE


FECHA + HORA
      ↓
 DATETIME2


DOS ESTADOS
      ↓
     BIT
```

---

# Ejercicio

Crear una tabla:

```text
Clientes
```

con la siguiente información:

```text
IdCliente
Nombre
Edad
Email
FechaNacimiento
Activo
```

Elegí un tipo de dato adecuado para cada columna.

Una posible solución sería:

```sql
CREATE TABLE Clientes
(
    IdCliente INT IDENTITY(1,1) PRIMARY KEY,
    Nombre NVARCHAR(100) NOT NULL,
    Edad INT,
    Email VARCHAR(150),
    FechaNacimiento DATE,
    Activo BIT NOT NULL
);
```

---

# Desafío extra

Pensá qué tipo utilizarías para almacenar:

```text
Cantidad de productos
Nombre de una ciudad
Temperatura
Fecha de una venta
Usuario habilitado
Precio de un producto
```

No escribas primero el SQL.

Intentá identificar primero:

```text
¿QUÉ TIPO DE INFORMACIÓN ES?
```

y después elegí el tipo de dato.

---

# Dato importante

El tipo de dato no describe solamente cómo queremos que se vea un valor.

Define:

```text
QUÉ INFORMACIÓN
puede almacenar una columna.
```

Elegir correctamente los tipos ayuda a construir bases de datos más consistentes y facilita trabajar posteriormente con esa información.

---

# Próximo capítulo

Ya sabemos crear bases de datos, tablas y definir qué tipo de información puede almacenar cada columna.

Con la estructura preparada, podremos comenzar a trabajar con los datos almacenados.
