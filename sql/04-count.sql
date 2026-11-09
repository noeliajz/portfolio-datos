USE investigacionydesarrollo;

-- Cantidad de filas de la tabla
SELECT COUNT(*) AS cantidadFilas
FROM inversion_total;

-- Cantidad de años con valor (ignora los NULL)
SELECT COUNT(ANIO) AS cantidadAnios
FROM inversion_total;

-- Cantidad de valores no nulos en pesos constantes
SELECT COUNT(INV_ID_PESOS_CONS) AS cantidadPesosCons
FROM inversion_total;

-- Filas totales vs. años distintos (si coinciden, no hay años repetidos)
SELECT COUNT(*) AS filas,
       COUNT(DISTINCT ANIO) AS aniosDistintos
FROM inversion_total;
