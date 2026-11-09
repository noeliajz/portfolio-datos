# Práctica de SQL: inversión en investigación y desarrollo (Argentina)

Ejercicios de SQL con MySQL sobre un dataset público de inversión en investigación y desarrollo (I+D) de Argentina, 2004-2024. Es mi repositorio de práctica mientras aprendo SQL.

## Fuente de los datos

- **Portal:** [Datos Argentina](https://www.datos.gob.ar/)
- **Dataset:** _(completá con el nombre del dataset y el link directo a su página)_
- **Archivo:** `01._inversion_total_id.csv`
- **Licencia:** revisá las condiciones de uso en la página del dataset.

## Descripción del dataset

Una fila por año (21 filas, de 2004 a 2024). El archivo usa `;` como separador y `,` como separador decimal.

| Columna | Descripción |
|---|---|
| `ANIO` | Año |
| `INV_ID_PESOS_CORR` | Inversión en I+D en pesos corrientes (a precios de cada año) |
| `INV_ID_PESOS_CONS` | Inversión en I+D en pesos constantes (descontada la inflación) |
| `INV_ID_DOL_CORR` | Inversión en I+D en dólares corrientes |
| `INV_ID_DOL_PPC` | Inversión en I+D en dólares a paridad de poder de compra |
| `INV_ID_PBI` | Inversión en I+D como porcentaje del PBI |
| `INV_ID_PUB_PBI` | Parte de la inversión del sector público, como % del PBI |
| `INV_ID_PRI_PBI` | Parte de la inversión del sector privado, como % del PBI |

> La unidad exacta de los montos (por ejemplo, millones) está en el diccionario de datos del portal.

## Herramientas

- MySQL Server 8
- MySQL Workbench (primera etapa)
- DBeaver (segunda etapa)

## Cómo reproducirlo

1. Descargá el CSV (o usá el de la carpeta `data/`).
2. En MySQL Workbench, ejecutá `sql/00-setup.sql` para crear la base de datos.
3. Importá el CSV con **Table Data Import Wizard** (clic derecho en *Tables* dentro de la base).
4. Ejecutá los scripts de la carpeta `sql/` en orden.

## Notas

- Las columnas `INV_ID_PBI`, `INV_ID_PUB_PBI` e `INV_ID_PRI_PBI` se importan como `TEXT` porque usan coma decimal. Para operar con ellas las convierto con `CAST(REPLACE(columna, ',', '.') AS DECIMAL(5,2))`.
- Las funciones de ventana (`LAG`, `RANK`, etc.) requieren MySQL 8 o superior.

## Contenido

| Archivo | Temas |
|---|---|
| `sql/00-setup.sql` | Creación de la base de datos y renombrado de la tabla |
| `sql/01-select-where.sql` | `SELECT`, `WHERE`, `BETWEEN`, `IN` |
| `sql/02-order-by-limit.sql` | `ORDER BY`, `LIMIT` |
| `sql/03-agregaciones.sql` | `MAX`, `MIN`, `AVG`, `SUM`, `ROUND` |
| `sql/04-count.sql` | `COUNT`, `COUNT(DISTINCT ...)` |
| `sql/05-case-cast.sql` | `CASE`, `CAST`, `REPLACE` |
| `sql/06-group-by.sql` | `GROUP BY`, `FLOOR` |
| `sql/07-funciones-ventana.sql` | `LAG`, `OVER` |

## Autora

Noe, estudiante de Ingeniería en Sistemas de Información (UTN).
