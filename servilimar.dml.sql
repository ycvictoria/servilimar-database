-- Tipo de usuario
INSERT INTO tipo_usuario (tipo_usuario_id, nombre_tipo) VALUES
(1, 'Empleado'),
(2, 'Cliente'),
(3, 'Proveedor');

-- Ciudades
INSERT INTO ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogotá', '11001'),
(2, 'Medellín', '05001'),
(3, 'Cali', '76001'),
(4, 'Barranquilla', '08001'),
(5, 'Cartagena', '13001'),
(6, 'Pereira', '66001'),
(7, 'Manizales', '17001'),
(8, 'Bucaramanga', '68001'),
(9, 'Cúcuta', '54001'),
(10, 'Santa Marta', '47001');

-- Usuarios
INSERT INTO usuario (usuario_id, nombre, apellido, tipo_usuario_id, ciudad_id) VALUES
(1, 'Carlos', 'Gómez', 2, 1),
(2, 'María', 'López', 1, 2),
(3, 'Juan', 'Pérez', 1, 3),
(4, 'Ana', 'Torres', 2, 4),
(5, 'Luis', 'Ramírez', 3, 5),
(6, 'Paula', 'Martínez', 1, 6),
(7, 'Diego', 'Castro', 3, 7),
(8, 'Sofía', 'Vargas', 2, 8),
(9, 'Andrés', 'Jiménez', 1, 9),
(10, 'Camila', 'Reyes', 2, 10);

-- Condiciones especiales
INSERT INTO condicion_especial (condicion_id, nombre_condicion) VALUES
(1, 'Discapacidad visual'),
(2, 'Discapacidad auditiva'),
(3, 'Adulto mayor'),
(4, 'Embarazo'),
(5, 'Veterano'),
(6, 'Menor de edad'),
(7, 'Movilidad reducida'),
(8, 'Acompañante requerido'),
(9, 'Atención prioritaria'),
(10, 'Otro');

-- Usuario_condicion
INSERT INTO usuario_condicion (usuario_id, condicion_id) VALUES
(1, 3),
(2, 4),
(3, 1),
(4, 2),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);

-- Departamentos
INSERT INTO departamento (departamento_id, nombre_departamento) VALUES
(1, 'Ventas'),
(2, 'Soporte'),
(3, 'Marketing'),
(4, 'Garantía'),
(5, 'Consultoría'),
(6, 'Logística'),
(7, 'Atención al Cliente'),
(8, 'Administración'),
(9, 'Finanzas'),
(10, 'Recursos Humanos');

-- Cargos (Roles)
INSERT INTO cargo (cargo_id, nombre_cargo) VALUES
(1, 'Vendedor'),
(2, 'Soporte Técnico'),
(3, 'Marketing'),
(4, 'Garantía'),
(5, 'Consultor'),
(6, 'Coordinador de Logística'),
(7, 'Atención al Cliente'),
(8, 'Gerente de Proyecto'),
(9, 'Analista'),
(10, 'Auxiliar Administrativo');

-- Empleados (solo usuarios tipo Empleado)
INSERT INTO empleado (empleado_id, usuario_id, cargo_id, departamento_id) VALUES
(1, 2, 1, 1),
(2, 3, 2, 2),
(3, 6, 3, 3),
(4, 9, 4, 4),
(5, 2, 5, 5),
(6, 3, 6, 6),
(7, 6, 7, 7),
(8, 9, 8, 8),
(9, 2, 9, 9),
(10, 3, 10, 10);

-- Servicios
INSERT INTO servicio (servicio_id, nombre_servicio, descripcion, estado) VALUES
(1, 'Soporte Técnico', 'Asistencia técnica a clientes', 'Activo'),
(2, 'Consultoría', 'Asesoramiento especializado', 'Activo'),
(3, 'Mantenimiento', 'Mantenimiento preventivo y correctivo', 'Activo'),
(4, 'Capacitación', 'Cursos y talleres empresariales', 'Inactivo'),
(5, 'Desarrollo Web', 'Creación de sitios web', 'Activo'),
(6, 'Marketing Digital', 'Gestión de campañas online', 'Activo'),
(7, 'Logística', 'Gestión de entregas y transporte', 'Activo'),
(8, 'Atención al Cliente', 'Soporte y asistencia a usuarios', 'Activo'),
(9, 'Seguridad', 'Monitoreo y protección', 'Activo'),
(10, 'Administración de Datos', 'Gestión de información empresarial', 'Activo');

-- Turnos
INSERT INTO turno (turno_id, usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, 1, '2025-10-01', '08:00', '12:00', 'Completado'),
(2, 4, 2, 2, '2025-10-02', '09:00', '13:00', 'Pendiente'),
(3, 8, 3, 3, '2025-10-03', '10:00', '14:00', 'Cancelado'),
(4, 10, 4, 4, '2025-10-04', '07:00', '11:00', 'Completado'),
(5, 5, 5, 5, '2025-10-05', '08:30', '12:30', 'Completado'),
(6, 7, 6, 6, '2025-10-06', '09:30', '13:30', 'Pendiente'),
(7, 1, 7, 7, '2025-10-07', '10:30', '14:30', 'Completado'),
(8, 4, 8, 8, '2025-10-08', '11:00', '15:00', 'Pendiente'),
(9, 8, 9, 9, '2025-10-09', '08:00', '12:00', 'Completado'),
(10, 10, 10, 10, '2025-10-10', '07:00', '11:00', 'Pendiente');

-- Medios
INSERT INTO medio (medio_id, usuario_id, tipo_medio, valor_medio) VALUES
(1, 1, 'Correo', 'carlos@correo.com'),
(2, 2, 'Teléfono', '3100000002'),
(3, 3, 'Correo', 'juan@correo.com'),
(4, 4, 'Teléfono', '3100000004'),
(5, 5, 'Correo', 'luis@correo.com'),
(6, 6, 'Teléfono', '3100000006'),
(7, 7, 'Correo', 'diego@correo.com'),
(8, 8, 'Teléfono', '3100000008'),
(9, 9, 'Correo', 'andres@correo.com'),
(10, 10, 'Teléfono', '3100000010');

-- Notificaciones
INSERT INTO notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Su turno ha sido confirmado', '2025-10-01 08:00:00', 'Enviado'),
(2, 2, 2, 'Nuevo servicio disponible', '2025-10-02 09:00:00', 'Enviado'),
(3, 3, 3, 'Recordatorio de cita', '2025-10-03 10:00:00', 'Pendiente'),
(4, 4, 4, 'Actualización de datos', '2025-10-04 11:00:00', 'Enviado'),
(5, 5, 5, 'Gracias por su preferencia', '2025-10-05 12:00:00', 'Enviado'),
(6, 6, 6, 'Su solicitud está en proceso', '2025-10-06 13:00:00', 'Pendiente'),
(7, 7, 7, 'Nuevo servicio disponible', '2025-10-07 14:00:00', 'Enviado'),
(8, 8, 8, 'Confirmación de registro', '2025-10-08 15:00:00', 'Enviado'),
(9, 9, 9, 'Su turno ha sido reprogramado', '2025-10-09 16:00:00', 'Pendiente'),
(10, 10, 10, 'Actualización de sistema', '2025-10-10 17:00:00', 'Enviado');
