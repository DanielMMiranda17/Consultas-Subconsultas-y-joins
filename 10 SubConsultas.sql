-- 2️⃣ SUBCONSULTAS

-- Obtener los clientes que tienen automóviles registrados
SELECT * FROM Clientes WHERE ID IN (SELECT Cliente_ID FROM Automoviles);

-- Mostrar los empleados que realizaron trabajos de mantenimiento
SELECT * FROM Empleados WHERE ID IN (SELECT Empleado_ID FROM TrabajosMantenimiento);

-- Obtener las cotizaciones con un precio mayor al precio promedio de todas las cotizaciones
SELECT * FROM Cotizaciones WHERE Precio > (SELECT AVG(Precio) FROM Cotizaciones);

-- Listar los clientes que han realizado cotizaciones
SELECT Nombre FROM Clientes WHERE ID IN (SELECT Cliente_ID FROM Cotizaciones);

-- Mostrar los automóviles de clientes cuyo correo termina en "@gmail.com"
SELECT * FROM Automoviles WHERE Cliente_ID IN (SELECT ID FROM Clientes WHERE Correo LIKE '%@gmail.com');

-- Obtener los procesos que corresponden a cotizaciones realizadas antes de 2024
SELECT * FROM Procesos WHERE Cotizacion_ID IN (SELECT ID FROM Cotizaciones WHERE Fecha < '2024-01-01');

-- Mostrar los registros de mantenimiento más costosos que el costo promedio
SELECT * FROM RegistroMantenimiento WHERE Costo > (SELECT AVG(Costo) FROM RegistroMantenimiento);

-- Obtener los empleados que no han realizado trabajos de mantenimiento
SELECT * FROM Empleados WHERE ID NOT IN (SELECT Empleado_ID FROM TrabajosMantenimiento);

-- Mostrar los administradores que han registrado procesos
SELECT * FROM Administradores WHERE ID IN (SELECT DISTINCT ID FROM Procesos);

-- Obtener los clientes que tienen más de un automóvil registrado
SELECT * FROM Clientes WHERE ID IN (
    SELECT Cliente_ID FROM Automoviles GROUP BY Cliente_ID HAVING COUNT(*) > 1
);