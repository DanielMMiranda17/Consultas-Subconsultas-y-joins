#Obtener los usuarios junto con su rol asignado.
SELECT Usuarios.Nombre, Roles.Tipo FROM usuarios
JOIN Roles ON Usuarios.Rol_ID = Usuarios.ROL_ID;

#Ver las cotizaciones junto con el nombre del usuario que las realizó.
SELECT Usuarios.Nombre, Cotizaciones.ServicioRealizado FROM Cotizaciones  
JOIN Usuarios ON Cotizaciones.Usuario_ID = Usuarios.ID;

#Mostrar los procesos junto con la cotización asociada.
SELECT cotizaciones.ServicioRealizado, Tipo_Proceso FROM procesos
JOIN cotizaciones ON procesos.Cotizacion_ID = Cotizacion.ID;

#Obtener los trabajos de mantenimiento con el usuario que los realizó.
SELECT TrabajosMantenimiento.Tipo, Usuarios.Nombre  
FROM TrabajosMantenimiento  
JOIN Usuarios ON TrabajosMantenimiento.Usuario_ID = Usuarios.ID;

#Ver el historial de clientes junto con la información del usuario.
SELECT usuarios.*,HistorialClientes.* FROM HistorialClientes
JOIN Usuarios ON HistorialClientes.Usuario_ID = usuarios.ID;

#Consultar los automóviles junto con el propietario asociado.
SELECT Automoviles.*, Usuarios.Nombre FROM Automoviles  
JOIN Usuarios ON Automoviles.Usuario_ID = Usuarios.ID;

#Obtener los trabajos de mantenimiento con el proceso correspondiente.
SELECT TrabajosMantenimiento.Tipo, Procesos.Tipo_Proceso, Procesos.Fecha_Registro FROM TrabajosMantenimiento  
JOIN Procesos ON TrabajosMantenimiento.Proceso_ID = Procesos.ID;

#Mostrar las cotizaciones con los servicios realizados y su usuario.
SELECT Cotizaciones.ServicioRealizado, Cotizaciones.Precio, Usuarios.Nombre FROM Cotizaciones  
JOIN Usuarios ON Cotizaciones.Usuario_ID = Usuarios.ID;

#Ver los procesos con la fecha de registro y su cotización relacionada.
SELECT Procesos.Tipo_Proceso, Procesos.Fecha_Registro, Cotizaciones.ServicioRealizado FROM Procesos  
JOIN Cotizaciones ON Procesos.Cotizacion_ID = Cotizaciones.ID;

#Obtener los usuarios con sus automóviles registrados.
SELECT Usuarios.Nombre, Automoviles.Marca, Automoviles.Modelo, Automoviles.Placa FROM Usuarios  
JOIN Automoviles ON Usuarios.ID = Automoviles.Usuario_ID;








