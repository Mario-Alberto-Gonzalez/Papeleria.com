-- MySQL Workbench Synchronization
-- Generated: 2022-10-03 19:31
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: JAVIER CABEZAS

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `papeleria` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `papeleria`.`cliente` (
  `id_cliente` INT(11) NOT NULL,
  `Identificacion` INT(11) NOT NULL,
  `Nombres` VARCHAR(45) NOT NULL,
  `Apellidos` VARCHAR(45) NOT NULL,
  `Ciudad` VARCHAR(45) NOT NULL,
  `Direccion` VARCHAR(35) NOT NULL,
  `Correo_Electronico` VARCHAR(45) NOT NULL,
  `Numero_Celular` VARCHAR(14) NOT NULL,
  PRIMARY KEY (`id_cliente`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `papeleria`.`cliente` (
id_cliente, Identificacion, Nombres, Apellidos, Ciudad, Direccion, Correo_Electronico, Numero_Celular)
VALUES 
(50, 54031254, 'Sandra Liliana', 'Gomez', 'Bogota', 'AV 13 # 12 - 60', 'sangomez@gmail.com', 320548762),
(51, 72456890, 'Juan David', 'Perez Olarte', 'Medellin', 'cll 52sur # 20 - 35', 'juanpolarte@gmail.com', 3102036879),
(52, 1013548792, 'Karol Viviana', 'Hernandez Bautista', 'Bucaramanga', 'Cra 30 # 12-17', 'karolbautista@gmail.com', 3002105478),
(53, 52148703, 'Martha', 'Avila Correa', 'Cali', 'Cll 10 # 60 - 30', 'Macorrea@gmail.com',3225470100),
(54, 76456870, 'Ramiro Jose', 'Martinez Cuesta', 'Bogota', 'Cra 16 sur # 53-20', 'ramirojcuesta@gmail.com', 3137503215);

CREATE TABLE IF NOT EXISTS `papeleria`.`Compra_Cliente` (
  `idCompra_Cliente` INT(11) NOT NULL,
  `Inventario_idProducto` INT(11) NOT NULL,
  `Nombre_Producto` VARCHAR(45) NOT NULL,
  `Cantidad_Comprada_Por_Cliente` INT(11) NOT NULL,
  `Valor_Unitario` DOUBLE NOT NULL,
  `Valor_Compra` DOUBLE NOT NULL,
  `Medio_De_Pago` VARCHAR(45) NOT NULL,
  `Fecha_Compra` VARCHAR(45) NOT NULL,
  `idCliente` INT(11) NOT NULL,
  PRIMARY KEY (`idCompra_Cliente`),
  INDEX `idCliente_idx` (`idCliente` ASC) VISIBLE,
  INDEX `Inventario_idProducto_idx` (`Inventario_idProducto` ASC) VISIBLE,
  CONSTRAINT `idCliente`
    FOREIGN KEY (`idCliente`)
    REFERENCES `papeleria`.`Clientes` (`idClientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Inventario_idProducto`
    FOREIGN KEY (`Inventario_idProducto`)
    REFERENCES `papeleria`.`Inventario` (`idProveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `papeleria`.`Compra_Cliente` (
idCompra_Cliente, Inventario_idProducto, Nombre_Producto, Cantidad_Comprada_Por_Cliente, Valor_Unitario, Valor_Compra, Medio_De_Pago, Fecha_Compra, idCliente)
VALUES
(20, 300, 'Maletas', 3, 35000, 105000, 'Efectivo', 15-09-2022, 50),
(22, 301, 'Libros', 2, 16000, 32000, 'Efectivo', 17-09-2022, 51),
(24, 302, 'Esferos', 3, 1500, 45000, 'Tarjeta de credito', 20-09-2022, 52),
(26, 303, 'Cuadernos', 2, 6000, 12000, 'Efectivo', 20-09-2022, 53),
(28, 304, 'Marcadores', 4, 4000, 16000, 'Tarjeta debito', 22-09-2022, 54);


CREATE TABLE IF NOT EXISTS `papeleria`.`Inventario` (
  `idProducto` INT(11) NOT NULL,
  `Nombre_producto` VARCHAR(45) NOT NULL,
  `Cantidad_En_Tienda` INT(11) NULL DEFAULT NULL,
  `Cantidad_Comprada_a_Proveedor` INT(11) NOT NULL,
  `Valor_Unitario` DOUBLE NOT NULL,
  `Valor_Total` DOUBLE NOT NULL,
  `idProveedor` INT(11) NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX `idProveedor_idx` (`idProveedor` ASC) VISIBLE,
  CONSTRAINT `idProveedor`
    FOREIGN KEY (`idProveedor`)
    REFERENCES `papeleria`.`compra_proveedor` (`id_compra_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `papeleria`.`Inventario` (
idProducto, Nombre_Producto, Cantidad_En_Tienda, Cantidad_Comprada_a_Proveedor, Valor_Unitario, Valor_Total, idProveedor)
VALUES
(300, 'Cuadernos', 36, 100, 6000, 600000, 6),
(301, 'Esferos', 26, 150, 1500, 225000, 16),
(302, 'Maletas', 30, 90, 35000, 3150000, 13),
(303, 'Libros', 10, 110, 16000, 1760000, 23),
(304, 'Marcadores', 35, 60, 4000, 240000, 19);

CREATE TABLE IF NOT EXISTS `papeleria`.`compra_proveedor` (
  `id_compra_proveedor` INT(11) NOT NULL,
  `Nombre_Producto` VARCHAR(45) NOT NULL,
  `cantidad_Comprada_a_Proveedor` INT(11) NOT NULL,
  `valor_De_La_Compra` DOUBLE NOT NULL,
  `fecha_Entrega` VARCHAR(45) NOT NULL,
  `estado_pedido` VARCHAR(45) NOT NULL,
  `id_proveedor` INT(11) NOT NULL,
  PRIMARY KEY (`id_compra_proveedor`),
  INDEX `id_proveedor_idx` (`id_proveedor` ASC) VISIBLE,
  CONSTRAINT `id_proveedor`
    FOREIGN KEY (`id_proveedor`)
    REFERENCES `papeleria`.`proveedor` (`id_proveedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


CREATE TABLE IF NOT EXISTS `papeleria`.`proveedor` (
  `id_proveedor` INT(11) NOT NULL,
  `Nombre_Proveedor` VARCHAR(45) NOT NULL,
  `tipo_documento` VARCHAR(45) NOT NULL,
  `numero_documento` VARCHAR(11) NOT NULL,
  PRIMARY KEY (`id_proveedor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

INSERT INTO `papeleria`.`proveedor` (
id_proveedor, Nombre_Proveedor, tipo_documento, numero_documento)
VALUES
(1, 'Panamericana', 'nit', 8901234569),
(2, 'Office Depot', 'nit',9001475691 ),
(3, 'Dispapeles', 'nit', 8006935692),
(4, 'El Cid', 'nit',  8904562587 ),
(5, 'Bic', 'nit', 9064561258 );

INSERT INTO `papeleria`.`compra_proveedor`(
id_compra_proveedor, Nombre_Producto, cantidad_Comprada_a_Proveedor ,valor_De_La_Compra, fecha_Entrega, estado_pedido, id_proveedor)
VALUES
(1, 'Cuadernos', 100, 600000, 30-08-2022, 'Pagado', 1),
(2,  'Esferos', 150, 225000, 01-09-2022, 'Pagado', 2),
(3 , 'Maletas', 90, 3150000, 10-09-2022, 'Pagado', 3),
(4,  'Libros', 110, 1760000, 19-09-2022, 'Pagado', 1 ),
(19, 'Marcadores', 60, 240000, 19-09-2022, 'Pagado', 5);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




