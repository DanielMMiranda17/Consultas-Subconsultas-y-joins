
-- 1️⃣ CONSULTAS SENCILLAS

-- Obtener todos los clientes registrados
SELECT * FROM Clientes;

-- Listar todos los empleados
SELECT * FROM Empleados;

-- Mostrar todas las cotizaciones realizadas
SELECT * FROM Cotizaciones;

-- Obtener los nombres y correos de los clientes
SELECT Nombre, Correo FROM Clientes;

-- Mostrar todos los automóviles registrados
SELECT * FROM Automoviles;

-- Obtener los trabajos de mantenimiento realizados
SELECT * FROM TrabajosMantenimiento;

-- Contar cuántos clientes hay en la base de datos
SELECT COUNT(*) AS TotalClientes FROM Clientes;

-- Obtener las cotizaciones con un precio mayor a 500.000
SELECT * FROM Cotizaciones WHERE Precio > 500000;

-- Listar los procesos registrados en una fecha específica
SELECT * FROM Procesos WHERE Fecha_Registro = '2024-03-20';

-- Ver los registros de mantenimiento más recientes
SELECT * FROM RegistroMantenimiento ORDER BY Fecha DESC LIMIT 5;