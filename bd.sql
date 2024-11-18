create database Proyecto;
use Proyecto;


create table productos(
id int unsigned primary key auto_increment,
nombre varchar(100) not null,
    cantidad int unsigned not null,
    precio int unsigned not null,
    descripcion varchar(100) not null,
    imagen varchar(100) not null,
    categoria enum ("Herramientas manuales","Materiales de construccion","Iluminacion y electricidad","Jardineria y exteriores","Pinturas"),
    estado enum("Activo", "Inactivo") default 'Activo'

);


INSERT INTO productos (nombre, cantidad, precio, descripcion, imagen, categoria, estado) VALUES
('Martillo de acero', 50, 15000, 'Martillo con mango ergonómico', 'martillo.jpg', 'Herramientas manuales', 'Activo'),
('Destornillador Philips', 100, 8000, 'Destornillador estrella de 6 pulgadas', 'destornillador.jpg', 'Herramientas manuales', 'Activo'),
('Cemento Portland', 200, 25000, 'Bolsa de 50 kg de cemento', 'cemento.jpg', 'Materiales de construccion', 'Activo'),
('Arena gruesa', 300, 1000, 'Saco de arena para construcción', 'arena.jpg', 'Materiales de construccion', 'Activo'),
('Lámpara LED 10W', 150, 12000, 'Lámpara LED de bajo consumo', 'lampara_led.jpg', 'Iluminacion y electricidad', 'Activo'),
('Toma corriente doble', 500, 6000, 'Toma corriente doble con puesta a tierra', 'tomacorriente.jpg', 'Iluminacion y electricidad', 'Activo'),
('Manguera de jardín 15m', 80, 25000, 'Manguera resistente para jardinería', 'manguera.jpg', 'Jardineria y exteriores', 'Activo'),
('Abono orgánico', 120, 18000, 'Abono para plantas en crecimiento', 'abono.jpg', 'Jardineria y exteriores', 'Activo'),
('Pintura acrílica blanca 1L', 200, 22000, 'Pintura blanca para interiores', 'pintura_acrilica.jpg', 'Pinturas', 'Activo'),
('Rodillo para pintar', 150, 8000, 'Rodillo de espuma para pintura', 'rodillo.jpg', 'Pinturas', 'Activo'),
('Sierra de mano', 75, 14000, 'Sierra de mano para madera', 'sierra.jpg', 'Herramientas manuales', 'Activo'),
('Clavos de acero 2 pulgadas', 400, 2000, 'Paquete de clavos para construcción', 'clavos.jpg', 'Materiales de construccion', 'Activo'),
('Enchufe triple', 200, 5000, 'Enchufe para tres tomas', 'enchufe.jpg', 'Iluminacion y electricidad', 'Activo'),
('Tijeras de podar', 90, 16000, 'Tijeras para jardín', 'tijeras_podar.jpg', 'Jardineria y exteriores', 'Activo'),
('Brocha para pintura 2"', 160, 5000, 'Brocha para acabados finos', 'brocha.jpg', 'Pinturas', 'Activo'),
('Llave inglesa 8"', 50, 12000, 'Llave ajustable para tuercas', 'llave_inglesa.jpg', 'Herramientas manuales', 'Activo'),
('Bloques de concreto', 350, 3000, 'Bloque para construcción', 'bloques.jpg', 'Materiales de construccion', 'Activo'),
('Cable eléctrico 10m', 100, 20000, 'Cable de alta resistencia', 'cable.jpg', 'Iluminacion y electricidad', 'Activo'),
('Pala para jardín', 70, 13000, 'Pala metálica para jardinería', 'pala.jpg', 'Jardineria y exteriores', 'Activo'),
('Esmalte sintético rojo 1L', 50, 27000, 'Esmalte de alta calidad', 'esmalte.jpg', 'Pinturas', 'Activo');

DESCRIBE productos;

CREATE TABLE usuario (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nombres VARCHAR(100) NOT NULL,
    Apellidos VARCHAR(100) NOT NULL,
    Correo VARCHAR(100) UNIQUE NOT NULL,
    Contrasena VARCHAR(64) NOT NULL,
    Telefono VARCHAR(20) NOT NULL,
    Direccion varchar(255) NOT NULL,
    Genero enum('Masculino', 'Femenino') not null,
    Rol enum('Administrador', 'Almacenista', 'Cajero', 'Cliente') NOT NULL,
    Estado enum('Activo', 'Inactivo') default 'Activo',
    Usoc enum('Usada', 'NoUsada') default 'NoUsada'
);

SELECT*FROM usuario ;

INSERT INTO usuario (Nombres, Apellidos, Correo, Contrasena, Telefono, Direccion, Genero, Rol, Estado, Usoc) VALUES
-- Administradores
('Juan Carlos', 'Pérez Gómez', 'admin1@gmail.com', 'Admin123456789', '3001234567', 'Calle 123 #45-67', 'Masculino', 'Administrador', 'Activo', 'NoUsada'),
('María José', 'López Silva', 'admin2@gmail.com', 'Admin987654321', '3109876543', 'Avenida 45 #12-34', 'Femenino', 'Administrador', 'Activo', 'NoUsada'),

-- Almacenistas
('Pedro Luis', 'Ramírez Torres', 'almacen1@gmail.com', 'Almacen123456', '3201234567', 'Carrera 78 #90-12', 'Masculino', 'Almacenista', 'Activo', 'NoUsada'),
('Ana María', 'García Ruiz', 'almacen2@gmail.com', 'Almacen654321', '3157894561', 'Calle 56 #78-90', 'Femenino', 'Almacenista', 'Activo', 'NoUsada'),

-- Cajeros
('Carlos Alberto', 'Martínez Díaz', 'cajero1@gmail.com', 'Cajero123456', '3501234567', 'Carrera 34 #56-78', 'Masculino', 'Cajero', 'Activo', 'NoUsada'),
('Laura Victoria', 'Sánchez Mora', 'cajero2@gmail.com', 'Cajero654321', '3187894562', 'Avenida 67 #89-12', 'Femenino', 'Cajero', 'Activo', 'NoUsada'),

-- Clientes
('Roberto', 'González Pérez', 'cliente1@gmail.com', 'Cliente123456', '3401234567', 'Calle 89 #12-34', 'Masculino', 'Cliente', 'Activo', 'NoUsada'),
('Carmen Elena', 'Rojas Mesa', 'cliente2@gmail.com', 'Cliente654321', '3167894563', 'Carrera 12 #34-56', 'Femenino', 'Cliente', 'Activo', 'NoUsada'),
('Miguel Ángel', 'Torres Vargas', 'cliente3@gmail.com', 'Cliente789123', '3301234568', 'Avenida 90 #23-45', 'Masculino', 'Cliente', 'Activo', 'NoUsada'),
('Diana Patricia', 'Morales Luna', 'cliente4@gmail.com', 'Cliente321987', '3147894564', 'Calle 45 #67-89', 'Femenino', 'Cliente', 'Inactivo', 'NoUsada');

select*from usuario;

-- Tabla de pedidos
CREATE TABLE IF NOT EXISTS Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(255) NOT NULL,
    Numero VARCHAR(50) NOT NULL,
    Direccion TEXT NOT NULL,
    Metodo VARCHAR(100) NOT NULL,
    Fecha DATETIME NOT NULL,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo'
);

-- Tabla de detalle de pedido
CREATE TABLE IF NOT EXISTS Detalle_Pedido (
    id INT AUTO_INCREMENT PRIMARY KEY,
    pedido_Id INT NOT NULL,
    producto_Id int unsigned NOT NULL,
    cantidad INT NOT NULL,
    precio_Unitario DECIMAL(10, 2) NOT NULL,
    precio_Total DECIMAL(10, 2) NOT NULL,
    estado ENUM('activo', 'inactivo') DEFAULT 'activo',
    FOREIGN KEY (Pedido_Id) REFERENCES Pedido(id) ON DELETE CASCADE,
    FOREIGN KEY (Producto_Id) REFERENCES Productos(id)
);

CREATE TABLE ventas (
    id INT AUTO_INCREMENT PRIMARY KEY,            
    fecha_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    descuento DECIMAL(5, 2) DEFAULT 0,            
    subtotal DECIMAL(10, 2) NOT NULL,             
    iva DECIMAL(10, 2) NOT NULL,                  
    total DECIMAL(10, 2) NOT NULL,                
    metodo_pago ENUM('Tarjeta', 'Efectivo') NOT NULL,  
    usuario_id INT NOT NULL,                     
    FOREIGN KEY (usuario_id) REFERENCES usuario(ID) 
);

select*from ventas;
select*from detalle_venta;

CREATE TABLE detalle_venta (
    id INT AUTO_INCREMENT PRIMARY KEY,            
    venta_id INT NOT NULL,                         
    producto_id int unsigned,                      
    cantidad INT NOT NULL,                         
    precio_unitario DECIMAL(10, 2) NOT NULL,       
    subtotal DECIMAL(10, 2) NOT NULL,              
    FOREIGN KEY (venta_id) REFERENCES ventas(id), 
    FOREIGN KEY (producto_id) REFERENCES productos(id) 
);
select*from productos;

