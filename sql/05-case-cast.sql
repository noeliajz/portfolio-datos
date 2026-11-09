USE investigacionydesarrollo;

-- Clasificar cada año según si su inversión en dólares está sobre o bajo el promedio
SELECT ANIO,
       INV_ID_DOL_CORR,
       CASE
         WHEN INV_ID_DOL_CORR >= (SELECT AVG(INV_ID_DOL_CORR) FROM inversion_total)
           THEN 'Mayor que el promedio'
         ELSE 'Menor que el promedio'
       END AS categoria
FROM inversion_total;

-- Convertir INV_ID_PBI (texto con coma decimal) a número
SELECT ANIO,
       CAST(REPLACE(INV_ID_PBI, ',', '.') AS DECIMAL(5,2)) AS inv_pbi
FROM inversion_total;
