USE investigacionydesarrollo;

-- Mayor inversión en pesos corrientes
SELECT MAX(INV_ID_PESOS_CORR) AS maximo
FROM inversion_total;

-- Menor inversión en pesos corrientes
SELECT MIN(INV_ID_PESOS_CORR) AS minimaInversion
FROM inversion_total;

-- Promedio de inversión en pesos corrientes
SELECT AVG(INV_ID_PESOS_CORR) AS promedio
FROM inversion_total;

-- Máximo, mínimo y promedio en una sola consulta
SELECT MAX(INV_ID_PESOS_CORR) AS inversionMaxima,
       MIN(INV_ID_PESOS_CORR) AS inversionMinima,
       AVG(INV_ID_PESOS_CORR) AS promedio
FROM inversion_total;

-- Primer año de la serie
SELECT MIN(ANIO) AS menorAnio
FROM inversion_total;

-- Mayor inversión entre 2010 y 2014
SELECT MAX(INV_ID_PESOS_CORR) AS maximaInversion
FROM inversion_total
WHERE ANIO BETWEEN 2010 AND 2014;

-- Inversión total acumulada en dólares corrientes
SELECT SUM(INV_ID_DOL_CORR) AS sumaTotalAcumulada
FROM inversion_total;

-- Promedio de inversión en dólares, redondeado a entero
SELECT ROUND(AVG(INV_ID_DOL_CORR)) AS promedioDolares
FROM inversion_total;

-- Suma de inversión en dólares, redondeada a entero
SELECT ROUND(SUM(INV_ID_DOL_CORR)) AS totalDolares
FROM inversion_total;

-- Promedio de los primeros años de la serie (hasta 2010)
SELECT AVG(INV_ID_PESOS_CORR) AS promedioPrimerosAnios
FROM inversion_total
WHERE ANIO <= 2010;
