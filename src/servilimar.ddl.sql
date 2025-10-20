CREATE TABLE tipo_usuario(
    tipo_usuario_id INT PRIMARY KEY,
    nombre_tipo VARCHAR(50) NOT NULL
);
CREATE TABLE ciudad(
    ciudad_id INT PRIMARY KEY,
    nombre_ciudad VARCHAR(100),
    codigo_postal VARCHAR(10)
);
CREATE TABLE usuario(
    usuario_id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    tipo_usuario_id INT,
    ciudad_id INT,
    FOREIGN KEY (tipo_usuario_id) REFERENCES tipo_usuario(tipo_usuario_id),
    FOREIGN KEY (ciudad_id) REFERENCES ciudad(ciudad_id)
);


CREATE TABLE condicion_especial(
    condicion_id INT PRIMARY KEY,
    nombre_condicion VARCHAR(100) NOT NULL
);

CREATE TABLE usuario_condicion(
    usuario_id INT,
    condicion_id INT,
    PRIMARY KEY (usuario_id, condicion_id),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (condicion_id) REFERENCES condicion_especial(condicion_id)
);


CREATE TABLE departamento(
    departamento_id INT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);
CREATE TABLE cargo(
    cargo_id INT PRIMARY KEY,
    nombre_cargo VARCHAR(100) NOT NULL
);

CREATE TABLE empleado(
    empleado_id INT PRIMARY KEY,
    usuario_id INT ,
    cargo_id INT,
    departamento_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (cargo_id) REFERENCES cargo(cargo_id),
    FOREIGN KEY (departamento_id) REFERENCES departamento(departamento_id)
);


CREATE TABLE servicio(
    servicio_id INT PRIMARY KEY,
    nombre_servicio VARCHAR(100) NOT NULL,
    descripcion VARCHAR(200) NOT NULL,
    estado VARCHAR(20) NOT NULL
);
CREATE TABLE turno(
    turno_id INT PRIMARY KEY,
    usuario_id INT NOT NULL,
    servicio_id INT NOT NULL,
    empleado_id INT,
    fecha DATE NOT NULL,
    hora_inicio TIME,
    hora_fin TIME,
    estado VARCHAR(20),
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id),
    FOREIGN KEY (servicio_id) REFERENCES servicio(servicio_id),
    FOREIGN KEY (empleado_id) REFERENCES empleado(empleado_id)
);



CREATE TABLE medio(
    medio_id INT PRIMARY KEY,
    usuario_id INT NOT NULL,
    tipo_medio VARCHAR(50) NOT NULL,    -- Ej: 'Correo', 'Teléfono', 'SMS'
    valor_medio VARCHAR(150) NOT NULL,  -- Ej: correo o número
    FOREIGN KEY (usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE notificacion(
    notificacion_id INT PRIMARY KEY,
    usuario_id INT NOT NULL,
    medio_id INT NOT NULL,
    mensaje VARCHAR(100) NOT NULL,
    fecha_envio TIMESTAMP,
    estado VARCHAR(20) ,
     FOREIGN KEY (usuario_id) REFERENCES  usuario(usuario_id),
    FOREIGN KEY (medio_id) REFERENCES medio(medio_id)
);
