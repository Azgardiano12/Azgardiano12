/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.5.5-10.4.28-MariaDB : Database - tejal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tejal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `tejal`;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `responsable` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `areas` */

LOCK TABLES `areas` WRITE;

UNLOCK TABLES;

/*Table structure for table `areas_emps` */

DROP TABLE IF EXISTS `areas_emps`;

CREATE TABLE `areas_emps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_area` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_area` (`id_area`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `areas_emps` */

LOCK TABLES `areas_emps` WRITE;

UNLOCK TABLES;

/*Table structure for table `catalogo` */

DROP TABLE IF EXISTS `catalogo`;

CREATE TABLE `catalogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_catalogo` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `catalogo` */

LOCK TABLES `catalogo` WRITE;

insert  into `catalogo`(`id`,`id_catalogo`,`descripcion`,`valor`) values (1,3,'Papas',2),(2,3,'Papas',2);

UNLOCK TABLES;

/*Table structure for table `catalogos` */

DROP TABLE IF EXISTS `catalogos`;

CREATE TABLE `catalogos` (
  `Id_` int(100) NOT NULL AUTO_INCREMENT,
  `ID_Catalogo` int(100) NOT NULL,
  `Descripcion` varchar(45) NOT NULL,
  `Valor` int(100) NOT NULL,
  PRIMARY KEY (`Id_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `catalogos` */

LOCK TABLES `catalogos` WRITE;

UNLOCK TABLES;

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Usr` int(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `A_Paterno` varchar(45) NOT NULL,
  `A_Materno` varchar(45) NOT NULL,
  `RFC` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Ra_Social` varchar(45) NOT NULL COMMENT 'uso burocratico',
  `No_Cliente` int(45) NOT NULL,
  `Tipo` int(45) NOT NULL,
  `Estatus` int(45) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ID_Usr` (`ID_Usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `clientes` */

LOCK TABLES `clientes` WRITE;

UNLOCK TABLES;

/*Table structure for table `det_pedido` */

DROP TABLE IF EXISTS `det_pedido`;

CREATE TABLE `det_pedido` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `ID_pedido` int(100) NOT NULL,
  `ID_producto` int(100) NOT NULL,
  `cantidad` int(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_pedido` (`ID_pedido`),
  KEY `ID_producto` (`ID_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `det_pedido` */

LOCK TABLES `det_pedido` WRITE;

UNLOCK TABLES;

/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Usr` int(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `A_Paterno` varchar(45) NOT NULL,
  `A_Materno` varchar(45) NOT NULL,
  `RFC` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `No_Emp` int(45) NOT NULL,
  `Tipo` int(45) NOT NULL,
  `estatus` int(45) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ID_Usr` (`ID_Usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `empleados` */

LOCK TABLES `empleados` WRITE;

UNLOCK TABLES;

/*Table structure for table `estados` */

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `siglas` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estados` */

LOCK TABLES `estados` WRITE;

insert  into `estados`(`id`,`nombre`,`siglas`) values (1,'0','M'),(2,'Mexico','M');

UNLOCK TABLES;

/*Table structure for table `fotos` */

DROP TABLE IF EXISTS `fotos`;

CREATE TABLE `fotos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NOT NULL,
  `tipo` int(100) NOT NULL,
  `foto` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fotos` */

LOCK TABLES `fotos` WRITE;

UNLOCK TABLES;

/*Table structure for table `franquizias` */

DROP TABLE IF EXISTS `franquizias`;

CREATE TABLE `franquizias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_zona` int(50) NOT NULL,
  `ID_localidad` int(50) NOT NULL,
  `ID_cliente` int(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `franquizias` */

LOCK TABLES `franquizias` WRITE;

UNLOCK TABLES;

/*Table structure for table `inventario` */

DROP TABLE IF EXISTS `inventario`;

CREATE TABLE `inventario` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `ID_Producto` int(100) NOT NULL,
  `Lote` int(100) NOT NULL,
  `Cantidad` int(100) NOT NULL,
  `Fec_cre` int(100) NOT NULL,
  `Fec_Caduc` int(100) NOT NULL,
  `Exitencia` int(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Producto` (`ID_Producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `inventario` */

LOCK TABLES `inventario` WRITE;

UNLOCK TABLES;

/*Table structure for table `localidad` */

DROP TABLE IF EXISTS `localidad`;

CREATE TABLE `localidad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_municipio` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_municipio` (`id_municipio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `localidad` */

LOCK TABLES `localidad` WRITE;

UNLOCK TABLES;

/*Table structure for table `materia_prima` */

DROP TABLE IF EXISTS `materia_prima`;

CREATE TABLE `materia_prima` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` int(50) NOT NULL,
  `cantidad` int(50) NOT NULL,
  `Tipo` int(50) NOT NULL,
  `valor_max` int(50) NOT NULL COMMENT 'valor maximo que se puede tener',
  `valor_min` int(50) NOT NULL,
  `fecha_act` date NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `materia_prima` */

LOCK TABLES `materia_prima` WRITE;

UNLOCK TABLES;

/*Table structure for table `modulos` */

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_padre` int(11) DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  `icon` varchar(50) NOT NULL COMMENT 'imagen',
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `modulos` */

LOCK TABLES `modulos` WRITE;

insert  into `modulos`(`id`,`id_padre`,`nombre`,`icon`,`url`) values (2,0,'CLIENTE','fa fa-picutre-o',''),(3,2,'NUEVOS CLIENTES','fa fa-picutre-o','./modulos/clientes/'),(4,0,'EMPLEADOS','fa fa-partici-o',''),(5,4,'NUEVOS EMPLEADOS','fa fa-partici-o','./modulos/empleados/');

UNLOCK TABLES;

/*Table structure for table `municipio` */

DROP TABLE IF EXISTS `municipio`;

CREATE TABLE `municipio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estado` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `municipio` */

LOCK TABLES `municipio` WRITE;

UNLOCK TABLES;

/*Table structure for table `pedidos` */

DROP TABLE IF EXISTS `pedidos`;

CREATE TABLE `pedidos` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `ID_Cliente` int(100) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` int(100) NOT NULL,
  `Total` int(100) NOT NULL,
  `T_pagado` int(100) NOT NULL,
  `Estatus_pago` int(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Cliente` (`ID_Cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `pedidos` */

LOCK TABLES `pedidos` WRITE;

UNLOCK TABLES;

/*Table structure for table `perm_modulo` */

DROP TABLE IF EXISTS `perm_modulo`;

CREATE TABLE `perm_modulo` (
  `ID` int(100) NOT NULL AUTO_INCREMENT,
  `ID_Usr` int(100) NOT NULL,
  `ID_Modulo` int(100) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_Modulo` (`ID_Modulo`),
  KEY `ID_Usr` (`ID_Usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `perm_modulo` */

LOCK TABLES `perm_modulo` WRITE;

UNLOCK TABLES;

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Descrip` varchar(50) NOT NULL,
  `Costo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `productos` */

LOCK TABLES `productos` WRITE;

UNLOCK TABLES;

/*Table structure for table `telefono` */

DROP TABLE IF EXISTS `telefono`;

CREATE TABLE `telefono` (
  `Id` int(100) NOT NULL AUTO_INCREMENT,
  `Id_Usr` int(100) NOT NULL,
  `Telefono` int(100) NOT NULL,
  `Tipo` int(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `telefono` */

LOCK TABLES `telefono` WRITE;

UNLOCK TABLES;

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Tipo` int(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuarios` */

LOCK TABLES `usuarios` WRITE;

insert  into `usuarios`(`ID`,`Usuario`,`Contraseña`,`Tipo`) values (20,'carlos','d9b1d7db4cd6e70935368a1ef',1),(22,'carlos','d9b1d7db4cd6e70935368a1ef',1),(23,'carlos','d9b1d7db4cd6e70935368a1ef',1),(24,'carlos','d9b1d7db4cd6e70935368a1ef',1),(25,'Jose','01e5d709971fa03e1ac541710',1),(26,'pep','202cb962ac59075b964b07152',1),(27,'emma','202cb962ac59075b964b07152d234b70',1);

UNLOCK TABLES;

/*Table structure for table `zonas` */

DROP TABLE IF EXISTS `zonas`;

CREATE TABLE `zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `zonas` */

LOCK TABLES `zonas` WRITE;

insert  into `zonas`(`id`,`nombre`) values (15,'Mexico');

UNLOCK TABLES;

/* Function  structure for function  `crud_area_EMP_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_area_EMP_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_area_EMP_R`(num INT, id INT, id_area INT, id_user INT) RETURNS text CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado TEXT;
    CASE 
        WHEN num = 1 THEN
            UPDATE areas_emps 
            SET id_area = id_area,
                id_user = id_user 
            WHERE id = id; 
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM areas_emps WHERE id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO areas_emps (id_area, id_user)
            VALUES (id_area, id_user);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SET resultado = 'Operación no válida';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_ar_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_ar_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_ar_R`(num INT, nombre VARCHAR(100), descripcion VARCHAR(100), responsable VARCHAR(100)) RETURNS text CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE areas
            SET nombre = nombre,
            descripcion = descripcion,
            responsable = responsable
            WHERE id = id;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM areas WHERE id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO areas (nombre, descripcion, responsable)
            VALUES (nombre, descripcion, responsable);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SET resultado = 'Operación no válida';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_Catalogo_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_Catalogo_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_Catalogo_R`(id_catalogo INT, 
    Usuario VARCHAR(100), 
    descripcion VARCHAR(255), 
    valor INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN id_catalogo = 1 THEN 
            UPDATE catalogo 
            SET descripcion = descripcion,
                valor = valor 
            WHERE descripcion = descripcion;
            SET resultado = 'editar';
            
        WHEN id_catalogo = 2 THEN
            DELETE FROM catalogo
            WHERE descripcion = descripcion;
            SET resultado = 'eliminar';
        WHEN id_catalogo = 3 THEN 
            INSERT INTO catalogo (id_catalogo, descripcion, valor) 
            VALUES (id_catalogo, descripcion, valor);
            SET resultado = 'insertar';
            
        WHEN id_catalogo = 0 THEN 
            SET resultado = 'Operacion no valida';
            
        ELSE 
            SET resultado = 'Valor no valido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_Clientes_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_Clientes_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_Clientes_R`(operacion VARCHAR(10),
    Id INT,
    ID_Usr INT,
    Nombre VARCHAR(45),
    A_Paterno VARCHAR(45),
    A_Materno VARCHAR(45),
    RFC VARCHAR(45),
    Email VARCHAR(45),
    Ra_Social VARCHAR(45),
    No_Cliente INT,
    Tipo INT,
    Estatus INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN operacion = 'crear' THEN
            INSERT INTO clientes (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, Ra_Social, No_Cliente, Tipo, Estatus)
            VALUES (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, Ra_Social, No_Cliente, Tipo, Estatus);
            SET resultado = 'insertar';
        WHEN operacion = 'leer' THEN
            SELECT CONCAT('Id: ', Id, ', Usuario: ', ID_Usr, ', Nombre: ', Nombre, ', A_Paterno: ', A_Paterno, ', A_Materno: ', A_Materno, ', RFC: ', RFC, ', Email: ', Email, ', Ra_Social: ', Ra_Social, ', No_Cliente: ', No_Cliente, ', Tipo: ', Tipo, ', Estatus: ', Estatus)
            INTO resultado
            FROM clientes
            WHERE Id = Id;
        WHEN operacion = 'actualizar' THEN
            UPDATE clientes
            SET Nombre = Nombre,
                A_Paterno = A_Paterno,
                A_Materno = A_Materno,
                RFC = RFC,
                Email = Email,
                Ra_Social = Ra_Social,
                No_Cliente = No_Cliente,
                Tipo = Tipo,
                Estatus = Estatus
            WHERE Id = Id;
            SET resultado = 'editar';
        WHEN operacion = 'eliminar' THEN
            DELETE FROM clientes
            WHERE Id = Id;
            SET resultado = 'eliminar';
        ELSE 
            SET resultado = 'Operacion no valida';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_Det_pedido_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_Det_pedido_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_Det_pedido_R`(num INT,   
    clave INT,    
    pedido INT,
    producto INT,
    Cantidad INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE 
        WHEN num = 1 THEN
            UPDATE det_pedido
            SET ID_pedido = pedido, ID_producto = producto, Cantidad = Cantidad
            WHERE ID = clave;
            SET resultado = 'Update';
        
        WHEN num = 2 THEN
            DELETE FROM det_pedido WHERE ID = clave;
            SET resultado = 'Eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO det_pedido (ID_pedido, ID_producto, Cantidad) 
            VALUES (pedido, producto, Cantidad);
            SET resultado = 'Insertar';
            
        ELSE
            SET resultado = 'Valor no valido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_estados_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_estados_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_estados_R`(operacion INT,
    id_estado INT,
    nombre INT,
    siglas VARCHAR(50)
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN operacion = 1 THEN
            UPDATE estados 
            SET nombre = nombre,
                siglas = siglas
            WHERE id = id_estado;
            SET resultado = 'editado';
        WHEN operacion = 2 THEN
            DELETE FROM estados 
            WHERE id = id_estado;
            SET resultado = 'eliminado';
        WHEN operacion = 3 THEN
            INSERT INTO estados (nombre, siglas)
            VALUES (nombre, siglas);
            SET resultado = 'insertado';
        WHEN operacion = 0 THEN
            SET resultado = 'Operación no válida';
        ELSE
            SET resultado = 'Valor no válido para operacion';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_fotos_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_fotos_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_fotos_R`(num INT, clave INT, id_user INT, tipo INT, fotos LONGBLOB) RETURNS text CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE fotos 
            SET id_user = id_user,
                tipo = tipo,
                fotos = fotos
            WHERE id = clave;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM fotos WHERE id = clave;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO fotos(id_user, tipo, fotos)
            VALUES (id_user, tipo, fotos);
            SET resultado = 'insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_franquizias_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_franquizias_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_franquizias_R`(num INT,
    clave INT,              
    zona INT,
    localidad INT,
    cliente INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            UPDATE franquizias
            SET ID_zona = zona,
                ID_localidad = localidad,
                ID_cliente = cliente
            WHERE ID = clave;
            SET resultado = 'Update';
        
        WHEN num = 2 THEN
            DELETE FROM franquizias 
            WHERE ID = clave;
            SET resultado = 'Eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO franquizias (ID_zona, ID_localidad, ID_cliente)
            VALUES (zona, localidad, cliente);
            SET resultado = 'Insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_inventario_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_inventario_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_inventario_R`(num INT,
    clave INT,
    ID_pr INT,
    lotes INT,
    cantidades INT,
    fec DATE,
    fec_C DATE,
    Exis INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            UPDATE inventario
            SET ID_Producto = ID_pr, Lote = lotes, Cantidad = cantidades, Fec_cre = fec, Fec_Caduc = fec_C, Exitencia = Exis
            WHERE ID = clave;
            SET resultado = 'editar';
        
        WHEN num = 2 THEN
            DELETE FROM inventario WHERE ID = clave;
            SET resultado = 'eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO inventario (ID_Producto, Lote, Cantidad, Fec_cre, Fec_Caduc,Exitencia) 
            VALUES (ID_pr, lotes, cantidades, fec, fec_C, Exis);
            SET resultado = 'insert';
        
        ELSE
            SET resultado = 'Valor no valido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_localidad_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_localidad_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_localidad_R`(num INT,clave INT,id_municipio INT ,nombre VARCHAR(100) ) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `localidad`
            SET nombre = nombre ,id_municipio = id_municipio
            WHERE ID = clave;
            
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM `localidad`
            WHERE ID = clave;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO `localidad` (nombre,id_municipio)
            VALUES (nombre , id_municipio);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SELECT 'operacion no valida' INTO resultado;
        ELSE
            SET resultado = 'valor no valido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_mods_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_mods_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_mods_R`(num INT, padre INT, nombre VARCHAR(100), con LONGBLOB, url VARCHAR(100)) RETURNS text CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado TEXT;
    CASE 
        WHEN num = 1 THEN
            UPDATE modulos
            SET id_padre = padre,
                nombre = nombre,
                icon = con,
                url = url
            WHERE id = id; 
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM modulos WHERE id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO modulos (id_padre, nombre, icon, url)
            VALUES (id_padre, nombre, icon, url);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SET resultado = 'Operación no válida';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_municipio_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_municipio_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_municipio_R`(num INT,clave INT,id_estado int ,nombre VARCHAR(100) ) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `municipio`
            SET nombre = nombre ,id_estado = id_estado
            WHERE ID = clave;
            
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM `municipio`
            WHERE ID = clave;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO `municipio` (nombre,id_estado)
            VALUES (nombre , id_estado);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SELECT 'operacion no valida' INTO resultado;
        ELSE
            SET resultado = 'valor no valido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `Crud_Pedido_R` */

/*!50003 DROP FUNCTION IF EXISTS `Crud_Pedido_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `Crud_Pedido_R`(num INT,
    clave INT,
    cliente INT,
    Fech DATE,
    estado INT,
    totales INT,
    pagado INT,
    Estatus INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            UPDATE pedidos
            SET Fecha = Fech,
                Estado = estado,
                Total = totales,
                T_pagado = pagado,
                Estatus_pago = Estatus
            WHERE ID = clave;
            SET resultado = 'Editar';
        
        WHEN num = 2 THEN
            DELETE FROM pedidos 
            WHERE ID = clave;
            SET resultado = 'Eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO pedidos (ID_Cliente, Fecha, Estado, Total, T_pagado, Estatus_pago) 
            VALUES (cliente, Fech, estado, totales, pagado, Estatus);
            SET resultado = 'Insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_PermMod_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_PermMod_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_PermMod_R`(num INT,
    clave INT,              
    us INT,
    ID_M INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE result VARCHAR(100);
    CASE 
        WHEN num = 1 THEN
            UPDATE perm_modulo
            SET ID_Usr = us, 
                ID_Modulo = ID_M
            WHERE ID = clave;
            SET result = 'Update';
        
        WHEN num = 2 THEN
            DELETE FROM perm_modulo 
            WHERE ID = clave;
            SET result = 'Eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO perm_modulo(ID_Usr, ID_Modulo)
            VALUES (us, ID_M);
            SET result = 'Insertar';
        ELSE
            SET result = 'Valor no valido para num';
    END CASE;
    RETURN result;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_productos_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_productos_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_productos_R`(num INT, clave INT, nombre VARCHAR(100), descrip VARCHAR(100), costo DECIMAL(10,2)) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `productos`
            SET nombre = nombre, descrip = descrip, costo = costo
            WHERE id = clave;
            SET resultado = 'editado';
        WHEN num = 2 THEN
            DELETE FROM `productos`
            WHERE id = clave;
            SET resultado = 'eliminado';
        WHEN num = 3 THEN
            INSERT INTO `productos` (nombre, descrip, costo)
            VALUES (nombre, descrip, costo);
            SET resultado = 'insertado';
        WHEN num = 0 THEN
            SET resultado = 'operación no válida';
        ELSE
            SET resultado = 'valor no válido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_telefono_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_telefono_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_telefono_R`(operacion VARCHAR(10),
    Id INT,
    Id_Usr INT,
    Telefono INT,
    Tipo INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN operacion = 'crear' THEN
            INSERT INTO telefono (Id_Usr, Telefono, Tipo)
            VALUES (Id_Usr, Telefono, Tipo);
            SET resultado = 'insertar';
        WHEN operacion = 'leer' THEN
            SELECT CONCAT('Id: ', Id, ', Usuario: ', Id_Usr, ', Telefono: ', Telefono, ', Tipo: ', Tipo)
            INTO resultado
            FROM telefono
            WHERE Id = Id;
        WHEN operacion = 'actualizar' THEN
            UPDATE telefono
            SET Telefono = Telefono,
                Tipo = Tipo
            WHERE Id = Id;
            SET resultado = 'editar';
        WHEN operacion = 'eliminar' THEN
            DELETE FROM telefono
            WHERE Id = Id;
            SET resultado = 'eliminar';
        ELSE 
            SET resultado = 'Operacion no valida';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_usuarios_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_usuarios_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_usuarios_R`(num INT, clave INT, usuario VARCHAR(100), Contraseña VARCHAR(100), tipo int) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `usuarios`
            SET usuario = usuario, contraseña= md5(Contraseña), tipo = tipo
            WHERE id = clave;
            SET resultado = 'editado';
        WHEN num = 2 THEN
            DELETE FROM `usuarios`
            WHERE id = clave;
            SET resultado = 'eliminado';
        WHEN num = 3 THEN
            INSERT INTO `usuarios` (usuario, Contraseña, tipo)
            VALUES (usuario, md5(Contraseña), tipo);
            SET resultado = 'insertado';
        WHEN num = 0 THEN
            SET resultado = 'operación no válida';
        ELSE
            SET resultado = 'valor no válido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `crud_zonas_R` */

/*!50003 DROP FUNCTION IF EXISTS `crud_zonas_R` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `crud_zonas_R`(num INT, 
    clave INT, 
    nombre VARCHAR(100)
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE zonas
            SET nombre = nombre
            WHERE id = clave;
            SET resultado = 'editado';
        WHEN num = 2 THEN
            DELETE FROM zonas
            WHERE id = clave;
            SET resultado = 'eliminado';
        WHEN num = 3 THEN
            INSERT INTO zonas (nombre)
            VALUES (nombre);
            SET resultado = 'insertado';
        WHEN num = 0 THEN
            SET resultado = 'operación no válida';
        ELSE
            SET resultado = 'valor no válido para num';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Function  structure for function  `EmpleadosCRUD` */

/*!50003 DROP FUNCTION IF EXISTS `EmpleadosCRUD` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` FUNCTION `EmpleadosCRUD`(operacion VARCHAR(10),
    Id INT,
    ID_Usr INT,
    Nombre VARCHAR(45),
    A_Paterno VARCHAR(45),
    A_Materno VARCHAR(45),
    RFC VARCHAR(45),
    Email VARCHAR(45),
    No_Emp INT,
    Tipo INT,
    estatus INT
) RETURNS varchar(100) CHARSET utf8mb4 COLLATE utf8mb4_general_ci
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN operacion = 'crear' THEN
            INSERT INTO empleados (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, No_Emp, Tipo, estatus)
            VALUES (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, No_Emp, Tipo, estatus);
            SET resultado = 'insertar';
        WHEN operacion = 'leer' THEN
            SELECT CONCAT('Id: ', Id, ', Usuario: ', ID_Usr, ', Nombre: ', Nombre, ', A_Paterno: ', A_Paterno, ', A_Materno: ', A_Materno, ', RFC: ', RFC, ', Email: ', Email, ', No_Emp: ', No_Emp, ', Tipo: ', Tipo, ', Estatus: ', estatus)
            INTO resultado
            FROM empleados
            WHERE Id = Id;
        WHEN operacion = 'actualizar' THEN
            UPDATE empleados
            SET Nombre = Nombre,
                A_Paterno = A_Paterno,
                A_Materno = A_Materno,
                RFC = RFC,
                Email = Email,
                No_Emp = No_Emp,
                Tipo = Tipo,
                estatus = estatus
            WHERE Id = Id;
            SET resultado = 'editar';
        WHEN operacion = 'eliminar' THEN
            DELETE FROM empleados
            WHERE Id = Id;
            SET resultado = 'eliminar';
        ELSE 
            SET resultado = 'Operacion no valida';
    END CASE;
    RETURN resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `Clientes_Usuarios` */

/*!50003 DROP PROCEDURE IF EXISTS  `Clientes_Usuarios` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Clientes_Usuarios`()
begin

    select clientes.`Id`, clientes.`ID_Usr`, clientes.`Nombre`, clientes.`A_Paterno`, clientes.`A_Materno`, clientes.`Email`, clientes.`No_Cliente`,
    clientes.`Ra_Social`, clientes.`RFC`, clientes.`Tipo`, clientes.`Estatus`
    
    from clientes
    inner join usuarios on usuarios.clientes_id = clientes.`Id`;
end */$$
DELIMITER ;

/* Procedure structure for procedure `Delete_U` */

/*!50003 DROP PROCEDURE IF EXISTS  `Delete_U` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Delete_U`(in id int(50))
BEGIn
	delete from `usuarios` where ID = id;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_Inventario` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_Inventario` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_Inventario`()
BEGIN
    END */$$
DELIMITER ;

/* Procedure structure for procedure `select_Pedido` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_Pedido` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_Pedido`()
BEGIN
    SELECT 
        productos.Nombre,
        productos.Descrip,
        productos.Costo,
        pedidos.ID_Cliente,
        pedidos.Fecha,
        pedidos.Estado,
        pedidos.Total,
        pedidos.T_pagado,
        det_pedido.ID_pedido,
        det_pedido.ID_producto,
        det_pedido.cantidad
    FROM 
        productos
    INNER JOIN 
        det_pedido ON productos.ID = det_pedido.ID_producto
    INNER JOIN 
        pedidos ON det_pedido.ID_pedido = pedidos.ID;
END */$$
DELIMITER ;

/* Procedure structure for procedure `select_z` */

/*!50003 DROP PROCEDURE IF EXISTS  `select_z` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `select_z`()
BEGIN
    SELECT 
        z.id, 
        z.nombre, 
        z.siglas,
        z.id_estado,
        z.id_municipio
    FROM 
        `zonas` z
    JOIN 
        `estados` e ON z.id_estado = e.id_estado
    JOIN 
        `municipio` m ON z.id_municipio = m.id_municipio
    JOIN 
        `localidad` l ON m.id_municipio = l.id_municipio;
END */$$
DELIMITER ;

/* Procedure structure for procedure `Usuarios_Empleados` */

/*!50003 DROP PROCEDURE IF EXISTS  `Usuarios_Empleados` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Usuarios_Empleados`()
begin

    select usuarios.`ID`, usuarios.`Usuario`, usuarios.`Contraseña`, usuarios.`Tipo`
    
   from usuarios
   inner join empleados on empleados.usuarios_id = usuarios.`ID`;
end */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
