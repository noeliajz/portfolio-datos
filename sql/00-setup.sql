-- Preparación: crear la base de datos y renombrar la tabla importada desde el CSV
-- Dataset: inversión en investigación y desarrollo (ID) de Argentina

CREATE DATABASE IF NOT EXISTS investigacionydesarrollo;
USE investigacionydesarrollo;

-- El asistente de importación creó la tabla con un nombre largo; la renombro
RENAME TABLE `01._inversion_total_id` TO inversion_total;

-- Verificar que cargó bien
SELECT * FROM inversion_total LIMIT 10;
DESCRIBE inversion_total;
