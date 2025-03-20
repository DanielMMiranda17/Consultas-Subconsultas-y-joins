# Obtener todos los usuarios registrados.
SELECT * FROM Usuarios;

# Obtener todos los automóviles registrados.
SELECT * FROM Automoviles;

# Mostrar los servicios realizados en las cotizaciones.
SELECT ServicioRealizado FROM Cotizaciones;

# Consultar el historial de clientes registrado.
SELECT * FROM HistorialClientes;

# Obtener los tipos de proceso registrados en la base de datos.
SELECT Tipo_Proceso FROM Procesos;

# Mostrar los procesos de mantenimiento con su ID y tipo.
SELECT Proceso_ID, Tipo FROM TrabajosMantenimiento;

# Consultar los procesos cuyo tipo de proceso comienza con "Revisión".
SELECT * FROM Procesos
WHERE Tipo_Proceso LIKE "Revisión%";

# Obtener todas las cotizaciones realizadas por el usuario con ID 5.
SELECT * FROM Cotizaciones
WHERE Usuario_ID = 5;

# Consultar la información del automóvil con la placa "KLM789".
SELECT * FROM Automoviles
WHERE Placa = "KLM789";

# Calcular el promedio de precios de las cotizaciones.
SELECT AVG(Precio) FROM Cotizaciones;
