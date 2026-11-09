USE investigacionydesarrollo;

-- Variación de la inversión en pesos corrientes respecto al año anterior
SELECT ANIO,
       INV_ID_PESOS_CORR,
       INV_ID_PESOS_CORR - LAG(INV_ID_PESOS_CORR) OVER (ORDER BY ANIO) AS variacion
FROM inversion_total;

-- Valor de la inversión en dólares de 2 filas antes (ordenado del más reciente al más antiguo)
SELECT ANIO,
       INV_ID_DOL_CORR,
       LAG(INV_ID_DOL_CORR, 2) OVER (ORDER BY ANIO DESC) AS valor_2_filas_antes
FROM inversion_total
ORDER BY ANIO DESC
LIMIT 5;
