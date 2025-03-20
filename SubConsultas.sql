# Obtener el usuario con más cotizaciones registradas.
SELECT * FROM Usuarios  
WHERE ID = (SELECT Usuario_ID FROM Cotizaciones  
            GROUP BY Usuario_ID  
            ORDER BY COUNT(*) DESC  
            LIMIT 1);

# Obtener el automóvil con más cotizaciones registradas.
SELECT * FROM Automoviles  
WHERE ID = (SELECT Automovil_ID FROM Cotizaciones  
            GROUP BY Automovil_ID  
            ORDER BY COUNT(*) DESC  
            LIMIT 1);

# Consultar el nombre del usuario que solicitó una cotización para "Instalación de alarma".
SELECT Nombre FROM Usuarios
WHERE ID = (SELECT ID FROM Cotizaciones WHERE ServicioRealizado="Instalación de alarma");

# Mostrar los usuarios que han participado en trabajos de mantenimiento.
SELECT * FROM usuarios
WHERE ID IN (SELECT usuario_ID FROM TrabajosMantenimiento);

# Obtener los empleados que tienen al menos un automóvil registrado.
SELECT * FROM Usuarios
WHERE Rol_ID=2 and ID IN (SELECT Usuario_ID FROM Automoviles);

# Mostrar los procesos asociados a las cotizaciones de un usuario específico (ID = 3).
SELECT * FROM Procesos  
WHERE Cotizacion_ID IN (SELECT ID FROM Cotizaciones WHERE Usuario_ID = 3);

# Obtener los trabajos de mantenimiento de la cotización más antigua registrada.
SELECT * FROM TrabajosMantenimiento  
WHERE Proceso_ID IN (SELECT ID FROM Procesos WHERE Cotizacion_ID = (SELECT ID FROM Cotizaciones  
                                           WHERE Fecha = (SELECT MIN(Fecha) FROM Cotizaciones)));

# Consultar los usuarios que tienen más de un automóvil registrado.
SELECT * FROM Usuarios  
WHERE ID IN (SELECT Usuario_ID FROM Automoviles  
             GROUP BY Usuario_ID  
             HAVING COUNT(*) > 1);

# Obtener la cotización más cara registrada en la base de datos.
SELECT * FROM Cotizaciones  
WHERE Precio = (SELECT MAX(Precio) FROM Cotizaciones);

# Mostrar el usuario que ha realizado el último proceso de mantenimiento registrado.
SELECT * FROM Usuarios  
WHERE ID = (SELECT Usuario_ID FROM TrabajosMantenimiento  
            WHERE Proceso_ID = (SELECT MAX(Proceso_ID) FROM TrabajosMantenimiento));
