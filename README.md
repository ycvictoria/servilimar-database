ServiLimar - Base de Datos
Descripción

Este proyecto implementa la base de datos para el sistema de gestión de turnos y servicios de Servicios LiMar.
Permite manejar usuarios (empleados, clientes y proveedores), condiciones especiales, empleados con roles y departamentos, servicios, turnos, medios de comunicación y notificaciones.

Tecnologías:

PostgreSQL 12 (contenedor Docker)
pgAdmin 4 (administración visual)
SQL puro para creación de tablas e inserción de datos

Creación y despliegue de la base de datos
1. Crear contenedor de PostgreSQL
docker run --name LiMarContainer \
  -e POSTGRES_USER=ulimar \
  -e POSTGRES_PASSWORD=ex4men_db \
  -p 5432:5432 -d postgres:12

2. Crear contenedor de pgAdmin 4
docker run --name pgadmin4 -p 5050:80 \
  -e "PGADMIN_DEFAULT_EMAIL=usuario@servilimar.com" \
  -e "PGADMIN_DEFAULT_PASSWORD=limar#123" \
  --link LiMarContainer:postgres \
  -d dpage/pgadmin4

3. Conectar pgAdmin al servidor PostgreSQL
Host: LiMarContainer
Usuario: ulimar
Contraseña: ex4men_db
Puerto: 5432

4. Creación de tablas:
nombre de base datos: servilimar

Se crearon las siguientes tablas:
tipo_usuario
ciudad
usuario
condicion_especial
usuario_condicion
departamento
cargo
empleado
servicio
turno
medio
notificacion

Las relaciones se definen mediante llaves primarias y foráneas, asegurando la integridad referencial.

5. Inserción de datos

Se insertaron registros de prueba:

3 tipos de usuario: Empleado, Cliente, Proveedor

Usuarios con condiciones especiales

Empleados con roles: Vendedor, Soporte Técnico, Marketing, Garantía, etc.

Servicios, turnos, medios y notificaciones

Archivo de inserciones: servilimar.dml.sql
