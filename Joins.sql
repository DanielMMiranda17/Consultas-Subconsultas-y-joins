-- 3️⃣ CONSULTAS CON JOINS

-- Obtener el nombre del cliente y los detalles de su automóvil
SELECT Clientes.Nombre, Automoviles.Marca, Automoviles.Placa
FROM Clientes
INNER JOIN Automoviles ON Clientes.ID = Automoviles.Cliente_ID;

-- Listar los empleados y los trabajos de mantenimiento que han realizado
SELECT Empleados.Nombre, TrabajosMantenimiento.Tipo
FROM Empleados
INNER JOIN TrabajosMantenimiento ON Empleados.ID = TrabajosMantenimiento.Empleado_ID;

-- Obtener las cotizaciones junto con el nombre del cliente
SELECT Cotizaciones.ID, Cotizaciones.ServicioRealizado, Cotizaciones.Precio, Clientes.Nombre
FROM Cotizaciones
INNER JOIN Clientes ON Cotizaciones.Cliente_ID = Clientes.ID;

-- Mostrar el historial de clientes con su nombre y la fecha de entrada/salida
SELECT Clientes.Nombre, HistorialClientes.Entrada, HistorialClientes.Salida
FROM HistorialClientes
INNER JOIN Clientes ON HistorialClientes.Cliente_ID = Clientes.ID;

-- Obtener los procesos con el nombre del servicio cotizado
SELECT Procesos.ID, Cotizaciones.ServicioRealizado, Procesos.Tipo_Proceso
FROM Procesos
INNER JOIN Cotizaciones ON Procesos.Cotizacion_ID = Cotizaciones.ID;

-- Listar los registros de mantenimiento con el nombre del empleado que los realizó
SELECT RegistroMantenimiento.Fecha, RegistroMantenimiento.Descripcion, Empleados.Nombre
FROM RegistroMantenimiento
INNER JOIN TrabajosMantenimiento ON RegistroMantenimiento.Trabajo_ID = TrabajosMantenimiento.ID
INNER JOIN Empleados ON TrabajosMantenimiento.Empleado_ID = Empleados.ID;

-- Obtener los trabajos de mantenimiento con el automóvil correspondiente
SELECT TrabajosMantenimiento.Tipo, Automoviles.Marca, Automoviles.Placa
FROM TrabajosMantenimiento
INNER JOIN Procesos ON TrabajosMantenimiento.Proceso_ID = Procesos.ID
INNER JOIN Cotizaciones ON Procesos.Cotizacion_ID = Cotizaciones.ID
INNER JOIN Automoviles ON Cotizaciones.Cliente_ID = Automoviles.Cliente_ID;

-- Mostrar los clientes y la cantidad de automóviles que poseen
SELECT Clientes.Nombre, COUNT(Automoviles.ID) AS Total_Autos
FROM Clientes
LEFT JOIN Automoviles ON Clientes.ID = Automoviles.Cliente_ID
GROUP BY Clientes.ID;

-- Listar los empleados junto con los trabajos de mantenimiento que han realizado y su costo
SELECT Empleados.Nombre, TrabajosMantenimiento.Tipo, RegistroMantenimiento.Costo
FROM Empleados
INNER JOIN TrabajosMantenimiento ON Empleados.ID = TrabajosMantenimiento.Empleado_ID
INNER JOIN RegistroMantenimiento ON TrabajosMantenimiento.ID = RegistroMantenimiento.Trabajo_ID;

-- Obtener el historial de clientes junto con el vehículo que ingresaron al taller
SELECT Clientes.Nombre, Automoviles.Marca, Automoviles.Placa, HistorialClientes.Entrada, HistorialClientes.Salida
FROM HistorialClientes
INNER JOIN Clientes ON HistorialClientes.Cliente_ID = Clientes.ID
INNER JOIN Automoviles ON Clientes.ID = Automoviles.Cliente_ID;