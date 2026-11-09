USE investigacionydesarrollo;

-- Promedio de inversión en pesos corrientes por década, de mayor a menor
SELECT FLOOR(ANIO / 10) * 10 AS decada,
       AVG(INV_ID_PESOS_CORR) AS promedio
FROM inversion_total
GROUP BY decada
ORDER BY promedio DESC;

-- Cantidad de años de la tabla en cada década
SELECT FLOOR(ANIO / 10) * 10 AS decada,
       COUNT(*) AS cantidad_anios
FROM inversion_total
GROUP BY decada
ORDER BY decada;
