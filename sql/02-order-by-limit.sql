USE investigacionydesarrollo;

-- Inversión como % del PBI, del año más reciente al más antiguo
SELECT ANIO, INV_ID_PBI
FROM inversion_total
ORDER BY ANIO DESC;

-- Inversión en dólares corrientes, del año más antiguo al más reciente
SELECT ANIO, INV_ID_DOL_CORR
FROM inversion_total
ORDER BY ANIO ASC;

-- Los dos años más recientes
SELECT ANIO, INV_ID_PBI
FROM inversion_total
ORDER BY ANIO DESC
LIMIT 2;

-- Los 4 años más recientes a partir de 2014
SELECT ANIO
FROM inversion_total
WHERE ANIO >= 2014
ORDER BY ANIO DESC
LIMIT 4;

-- Los 3 años con mayor inversión en dólares corrientes
SELECT ANIO, INV_ID_DOL_CORR
FROM inversion_total
ORDER BY INV_ID_DOL_CORR DESC
LIMIT 3;
