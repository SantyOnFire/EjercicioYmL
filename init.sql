CREATE TABLE mascotas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    edad INT,
    peso DECIMAL(5,2)
) ENGINE=InnoDB;

CREATE TABLE consultas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    fecha DATE NOT NULL,
    descripcion TEXT,
    costo DECIMAL(10,2),
    FOREIGN KEY (mascota_id) REFERENCES mascotas(id) ON DELETE CASCADE
) ENGINE=InnoDB;

CREATE TABLE duenos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    telefono VARCHAR(20),
    correo VARCHAR(100) UNIQUE
) ENGINE=InnoDB;

CREATE TABLE citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    mascota_id INT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo VARCHAR(255),
    FOREIGN KEY (mascota_id) REFERENCES mascotas(id) ON DELETE CASCADE
) ENGINE=InnoDB;
