USE investigacionydesarrollo;

-- Inversión en pesos corrientes del año 2019
SELECT ANIO, INV_ID_PESOS_CORR
FROM inversion_total
WHERE ANIO = 2019;

-- Años entre 2015 y 2025 (con operadores de comparación)
SELECT ANIO, INV_ID_PESOS_CORR
FROM inversion_total
WHERE ANIO >= 2015 AND ANIO <= 2025;

-- Inversión en dólares corrientes entre 2016 y 2018 (con BETWEEN)
SELECT ANIO, INV_ID_DOL_CORR
FROM inversion_total
WHERE ANIO BETWEEN 2016 AND 2018;

-- Años entre 2004 y 2008, con operadores de comparación
SELECT ANIO, INV_ID_DOL_CORR
FROM inversion_total
WHERE ANIO >= 2004 AND ANIO <= 2008;

-- El mismo resultado usando BETWEEN
SELECT ANIO, INV_ID_DOL_CORR
FROM inversion_total
WHERE ANIO BETWEEN 2004 AND 2008;

-- Solo los años 2004, 2006 y 2008 (con IN)
SELECT *
FROM inversion_total
WHERE ANIO IN (2004, 2006, 2008);
