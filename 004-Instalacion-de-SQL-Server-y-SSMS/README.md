# SQL Server Desde Cero

## Capítulo 004 - Instalación de SQL Server y SSMS

Hasta ahora aprendimos qué es una base de datos, qué función cumple un motor y conocimos algunos de los motores más utilizados.

Ahora prepararemos nuestro entorno para comenzar a trabajar con SQL.

---

# ¿Qué aprenderás?

- Qué debemos instalar.
- Diferencia entre SQL Server y SSMS.
- Cómo instalar SQL Server.
- Cómo instalar SQL Server Management Studio.
- Cómo conectarnos al servidor.
- Cómo ejecutar nuestra primera consulta.

---

# ¿Qué necesitamos?

Vamos a utilizar dos herramientas:

## SQL Server

SQL Server es el motor de base de datos.

Será el encargado de:

- Almacenar los datos.
- Procesar consultas.
- Administrar las bases de datos.
- Controlar usuarios y permisos.

Para esta serie utilizaremos SQL Server 2025.

---

## SQL Server Management Studio

SQL Server Management Studio, también conocido como SSMS, es la herramienta que utilizaremos para trabajar con SQL Server.

Nos proporciona una interfaz gráfica para:

- Conectarnos al servidor.
- Crear bases de datos.
- Crear tablas.
- Escribir consultas SQL.
- Visualizar resultados.
- Administrar nuestro servidor.

Para esta serie utilizaremos SSMS 22.

---

# SQL Server y SSMS no son lo mismo

Es importante comprender esta diferencia desde el principio.

```text
SQL SERVER
Motor de base de datos

        ↕

SSMS
Herramienta de administración

        ↕

NOSOTROS
```

SQL Server puede funcionar sin SSMS.

SSMS es una herramienta que nos permite conectarnos y trabajar cómodamente con SQL Server.

---

# 1. Instalar SQL Server

Descargar SQL Server desde el sitio oficial de Microsoft.

Para estudiar y desarrollar podemos utilizar una edición gratuita destinada a desarrollo.

Durante la instalación debemos prestar atención al nombre de la instancia, ya que posteriormente lo utilizaremos para conectarnos.

---

# 2. Instalar SSMS

SQL Server Management Studio se instala por separado.

Actualmente SSMS 22 utiliza Visual Studio Installer.

El instalador inicial se llama:

```text
vs_SSMS.exe
```

Ejecutamos el instalador y seguimos el asistente hasta completar la instalación.

---

# 3. Abrir SSMS

Una vez finalizada la instalación buscamos:

```text
SQL Server Management Studio
```

en el menú Inicio de Windows.

Abrimos la aplicación.

---

# 4. Conectarnos a SQL Server

Al iniciar SSMS debemos seleccionar nuestra instancia de SQL Server.

La configuración dependerá de cómo hayamos instalado el motor.

Una vez establecida la conexión veremos el servidor en:

```text
Object Explorer
```

Desde allí podremos acceder posteriormente a:

```text
Databases
Security
Server Objects
Management
```

---

# 5. Nuestra primera consulta

Seleccionamos:

```text
New Query
```

y escribimos:

```sql
SELECT '¡SQL Server funciona!' AS Mensaje;
```

Presionamos:

```text
Execute
```

---

# Resultado esperado

Deberíamos obtener:

```text
Mensaje
-----------------------
¡SQL Server funciona!
```

Si vemos este resultado significa que:

1. SQL Server está funcionando.
2. SSMS pudo conectarse.
3. Podemos ejecutar consultas.

Nuestro entorno está listo.

---

# ¿Qué significa SELECT?

Todavía no necesitamos aprender su funcionamiento completo.

Por ahora alcanza con saber que `SELECT` permite consultar información.

Lo estudiaremos con detalle en los próximos capítulos.

---

# Dato importante

SQL Server y SQL Server Management Studio son herramientas diferentes.

```text
SQL Server → administra los datos.

SSMS → nos permite trabajar con SQL Server.
```

Esta diferencia suele generar confusión cuando comenzamos a estudiar bases de datos.

---

# Probalo vos

Una vez conectado, ejecutá:

```sql
SELECT 'Hola SQL' AS Mensaje;
```

Después modificá el texto y volvé a ejecutar la consulta.

---

# Próximo capítulo

## Nuestra primera base de datos

A partir del próximo capítulo comenzaremos a construir la base de datos que utilizaremos durante el resto de la serie.
