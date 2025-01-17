/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.32-MariaDB : Database - tejal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`tejal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `tejal`;

/*Table structure for table `areas` */

DROP TABLE IF EXISTS `areas`;

CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL COMMENT 'En que area esta',
  `responsable` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `areas` */

insert  into `areas`(`id`,`nombre`,`descripcion`,`responsable`) values (4,'Nuevo Nombre','Nueva Descripción','Nuevo Responsable');

/*Table structure for table `areas_emps` */

DROP TABLE IF EXISTS `areas_emps`;

CREATE TABLE `areas_emps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_area` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_area` (`id_area`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `areas_emps` */

/*Table structure for table `catalogo` */

DROP TABLE IF EXISTS `catalogo`;

CREATE TABLE `catalogo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_catalogo` int(11) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL COMMENT 'Informacion de producto',
  `valor` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `catalogo` */

insert  into `catalogo`(`id`,`id_catalogo`,`descripcion`,`valor`) values (1,3,'Papas',2),(2,3,'Papas',2);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Usr` int(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `A_Paterno` varchar(45) NOT NULL,
  `A_Materno` varchar(45) NOT NULL,
  `RFC` varchar(45) NOT NULL COMMENT 'Minimo de 13 digitos',
  `Email` varchar(45) NOT NULL,
  `Ra_Social` varchar(45) NOT NULL COMMENT 'uso burocratico',
  `No_Cliente` int(45) NOT NULL,
  `Tipo` int(45) NOT NULL,
  `Estatus` int(45) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ID_Usr` (`ID_Usr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `clientes` */

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

/*Table structure for table `empleados` */

DROP TABLE IF EXISTS `empleados`;

CREATE TABLE `empleados` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ID_Usr` int(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `A_Paterno` varchar(45) NOT NULL,
  `A_Materno` varchar(45) NOT NULL,
  `RFC` varchar(45) NOT NULL COMMENT 'minimo de 13 digitos',
  `Email` varchar(45) NOT NULL,
  `No_Emp` int(45) NOT NULL,
  `Tipo` int(45) NOT NULL,
  `estatus` int(45) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `ID_Usr` (`ID_Usr`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `empleados` */

insert  into `empleados`(`Id`,`ID_Usr`,`Nombre`,`A_Paterno`,`A_Materno`,`RFC`,`Email`,`No_Emp`,`Tipo`,`estatus`) values (3,27,'jesus','0','0','0','0',0,0,0);

/*Table structure for table `estados` */

DROP TABLE IF EXISTS `estados`;

CREATE TABLE `estados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `siglas` varchar(50) NOT NULL COMMENT 'Avreviacion del estado',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `estados` */

insert  into `estados`(`id`,`nombre`,`siglas`) values (1,'0','M'),(2,'Mexico','M');

/*Table structure for table `fotos` */

DROP TABLE IF EXISTS `fotos`;

CREATE TABLE `fotos` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `id_user` int(100) NOT NULL,
  `tipo` int(100) NOT NULL,
  `foto` longblob NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `fotos` */

/*Table structure for table `franquicias` */

DROP TABLE IF EXISTS `franquicias`;

CREATE TABLE `franquicias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_zona` int(50) NOT NULL,
  `ID_localidad` int(50) NOT NULL,
  `ID_cliente` int(50) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `ID_ZONA` (`ID_zona`),
  KEY `id_Localidad` (`ID_localidad`),
  KEY `fk_ID_Cliente` (`ID_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `franquicias` */

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

/*Table structure for table `modulos` */

DROP TABLE IF EXISTS `modulos`;

CREATE TABLE `modulos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_padre` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `icon` varchar(100) NOT NULL COMMENT 'imagen',
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `modulos` */

insert  into `modulos`(`id`,`id_padre`,`nombre`,`icon`,`url`) values (1,0,'Productos','bi bi-cup-straw',''),(2,0,'Inventario','bi bi-archive',''),(3,0,'Clientes','bi bi-person',''),(4,0,'Empleados','bi bi-person-vcard',''),(5,0,'Pedidos','bi bi-bag',''),(6,0,'Usuarios','bi bi-people',''),(7,0,'Zonas','ph-duotone  ph-map-pin-line',''),(8,0,'Franquicia','bi bi-shop',''),(9,1,'Productos',' bi-basket3-fill','../modulos/producto.php'),(10,1,'luis pene rico','fa fa-picture-o','');

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

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Usuario` varchar(20) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Tipo` int(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `usuarios` */

/*Table structure for table `zonas` */

DROP TABLE IF EXISTS `zonas`;

CREATE TABLE `zonas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `zonas` */

insert  into `zonas`(`id`,`nombre`) values (15,'Mexico');

/* Procedure structure for procedure `CatalogoCRUD` */

/*!50003 DROP PROCEDURE IF EXISTS  `CatalogoCRUD` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `CatalogoCRUD`(
    IN num INT,
    IN IdC INT,
    IN id_ca INT,
    IN descr VARCHAR(255),
    IN val INT,
    OUT resultado VARCHAR(100)
)
BEGIN
    CASE
        WHEN num = 1 THEN 
            UPDATE catalogo 
            SET descripcion = descr,
                valor = val
            WHERE id = IdC;  
            SET resultado = 'editar';
            
        WHEN num = 2 THEN
            DELETE FROM catalogo
            WHERE id = IdC;  
            SET resultado = 'eliminar';
            
        WHEN num = 3 THEN 
            INSERT INTO catalogo (id, id_catalogo, descripcion, valor) 
            VALUES (NULL, id_ca, descr, val); 
            SET resultado = 'insertar';
            
        WHEN num = 0 THEN 
            SET resultado = 'Operacion no valida';
            
        ELSE 
            SET resultado = 'Valor no valido para num';
    END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `ClientesCRUD` */

/*!50003 DROP PROCEDURE IF EXISTS  `ClientesCRUD` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ClientesCRUD`(
    IN num INT, 
    IN IdCL INT, 
    IN id_cli INT, 
    IN Nom VARCHAR(45), 
    IN A_P VARCHAR(45),
    IN A_M VARCHAR(45), 
    IN Rf VARCHAR(45),
    IN Emai VARCHAR(45), 
    IN Ra_S VARCHAR(45),
    IN No_C INT,
    IN TP INT,
    IN Estat INT,
    OUT resultado VARCHAR(100)
)
BEGIN
    CASE
        WHEN num = 1 THEN 
            UPDATE clientes
            SET Nombre = Nom,
                A_Paterno = A_P,
                A_Materno = A_M,
                RFC = Rf,
                Email = Emai,
                Ra_Social = Ra_S,
                No_Cliente = No_C,
                Tipo = TP,
                Estatus = Estat
            WHERE Id = IdCL;  
            SET resultado = 'editar';
            
        WHEN num = 2 THEN
            DELETE FROM clientes
            WHERE Id = IdCL;  
            SET resultado = 'eliminar';
            
        WHEN num = 3 THEN 
            INSERT INTO clientes (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, Ra_Social, No_Cliente, Tipo, Estatus) 
            VALUES (id_cli, Nom, A_P, A_M, Rf, Emai, Ra_S, No_C, TP, Estat); 
            SET resultado = 'insertar';
            
        WHEN num = 0 THEN 
            SET resultado = 'Operacion no valida';
            
        ELSE 
            SET resultado = 'Valor no valido para num';
    END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_area_EMP_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_area_EMP_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_area_EMP_R`(IN num INT, IN id INT, IN id_areas INT, IN id_users INT)
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE areas_emps 
            SET id_area = id_areas,
                id_user = id_users 
            WHERE areas_emps.id = id;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM areas_emps WHERE areas_emps.id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO areas_emps (id_area, id_user)
            VALUES (id_areas, id_users);
            SET resultado = 'insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_ar_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_ar_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_ar_R`(IN num INT, IN id INT, IN nombres VARCHAR(100), IN descrip VARCHAR(100), IN responsables VARCHAR(100))
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE areas
            SET nombre = nombres,
                descripcion = descrip,
                responsable = responsables
            WHERE areas.id = id;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM areas WHERE areas.id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO areas (nombre, descripcion, responsable)
            VALUES (nombres, descrip, responsables);
            SET resultado = 'insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_Det_Pedido_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_Det_Pedido_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_Det_Pedido_R`(IN num INT,IN clave INT,IN pedido INT,IN producto INT,IN Cantidad INT)
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            BEGIN
                UPDATE det_pedido
                SET ID_producto = producto, 
                    Cantidad = Cantidad
                WHERE ID = clave;
                SET resultado = 'Update';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM det_pedido 
                WHERE ID = clave;
                SET resultado = 'Eliminar';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO det_pedido (ID_pedido, ID_producto, Cantidad) 
                VALUES (pedido, producto, Cantidad);
                SET resultado = 'Insertar';
            END;
        
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_estados_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_estados_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_estados_R`(operacion INT, clave INT, nombre VARCHAR(100), sig VARCHAR(50))
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN operacion = 1 THEN
            UPDATE estados 
            SET nombre = nombre,
                siglas = sig
            WHERE id = clave;
            SET resultado = 'editado';
        WHEN operacion = 2 THEN
            DELETE FROM estados 
            WHERE id = clave;
            SET resultado = 'eliminado';
        WHEN operacion = 3 THEN
            INSERT INTO estados (nombre, siglas)
            VALUES (nombre, sig);
            SET resultado = 'insertado';
        WHEN operacion = 0 THEN
            SET resultado = 'Operación no válida';
        ELSE
            SET resultado = 'Valor no válido para operacion';
    END CASE;
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_fotos_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_fotos_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_fotos_R`(IN num INT, IN clave INT, IN id_users INT, IN tip INT, IN fot LONGBLOB)
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE fotos 
            SET id_user = id_users,
                tipo = tip,
                foto = fot
            WHERE id = clave;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM fotos WHERE id = clave;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO fotos (id_user, tipo, foto)
            VALUES (id_users, tip, fot);
            SET resultado = 'insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_franquizias_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_franquizias_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_franquizias_R`(
    IN num INT,
    IN clave INT,              
    IN zona INT,
    IN localidad INT,
    IN cliente INT,
    OUT resultado VARCHAR(100)
)
BEGIN
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_inventario_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_inventario_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_inventario_R`(IN num INT,IN clave INT,IN ID_pr INT,IN lotes INT,IN cantidades INT,IN fec DATE,IN fec_C DATE,IN Exis INT)
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            BEGIN
                UPDATE inventario
                SET ID_Producto = ID_pr,
                    Lote = lotes,
                    Cantidad = cantidades,
                    Fec_cre = fec,
                    Fec_Caduc = fec_C,
                    Exitencia = Exis
                WHERE ID = clave;
                SET resultado = 'editar';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM inventario 
                WHERE ID = clave;
                SET resultado = 'eliminar';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO inventario (ID_Producto, Lote, Cantidad, Fec_cre, Fec_Caduc, Exitencia) 
                VALUES (ID_pr, lotes, cantidades, fec, fec_C, Exis);
                SET resultado = 'insert';
            END;
        
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_localidad_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_localidad_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_localidad_R`(num INT, clave INT, municipios INT, nombres VARCHAR(100))
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `localidad`
            SET nombre = nombres, id_municipio = municipios
            WHERE ID = clave;
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM `localidad`
            WHERE ID = clave;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO `localidad` (id, id_municipio, nombre)
            VALUES (NULL, municipios, nombres);
            SET resultado = 'insertar';
        WHEN num = 0 THEN
            SET resultado = 'operacion no valida';
        ELSE
            SET resultado = 'valor no valido para num';
    END CASE;
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_materia_pr_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_materia_pr_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_materia_pr_R`(
    IN num INT,
    IN clave INT,              
    IN Nombre VARCHAR(100),
    IN cantidad INT,
    IN Tipo INT,
    IN valor_max INT,
    IN valor_min INT,
    IN fecha_act DATE,
    OUT resultado VARCHAR(100)
)
BEGIN
    CASE 
        WHEN num = 1 THEN
            UPDATE materia_prima
            SET Nombre = Nombre,
                cantidad = cantidad,
                Tipo = Tipo,
                valor_max = valor_max,
                valor_min = valor_min,
                fecha_act = fecha_act
            WHERE ID = clave;
            SET resultado = 'Update';
        
        WHEN num = 2 THEN
            DELETE FROM materia_prima 
            WHERE ID = clave;
            SET resultado = 'Eliminar';
        
        WHEN num = 3 THEN
            INSERT INTO materia_prima (Nombre, cantidad, Tipo, valor_max, valor_min, fecha_act)
            VALUES (Nombre, cantidad, Tipo, valor_max, valor_min, fecha_act);
            SET resultado = 'Insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_mods_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_mods_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_mods_R`(IN num INT, IN id INT, IN padre INT, IN nombres VARCHAR(100), IN con LONGBLOB, IN link VARCHAR(100))
BEGIN
    DECLARE resultado TEXT;
    
    CASE 
        WHEN num = 1 THEN
            UPDATE modulos
            SET id_padre = padre,
                nombre = nombres,
                icon = con,
                url = link
            WHERE id = id; 
            SET resultado = 'editar';
        WHEN num = 2 THEN
            DELETE FROM modulos WHERE id = id;
            SET resultado = 'eliminar';
        WHEN num = 3 THEN
            INSERT INTO modulos (id_padre, nombre, icon, url)
            VALUES (padre, nombres, con, link);
            SET resultado = 'insertar';
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_municipio_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_municipio_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_municipio_R`(
    IN num INT, 
    IN clave INT, 
    IN id_es INT, 
    IN nombres VARCHAR(100)
)
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE
        WHEN num = 1 THEN
            BEGIN
                UPDATE `municipio`
                SET nombre = nombres, 
                    id_estado = id_es
                WHERE ID = clave;
                SET resultado = 'editar';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM `municipio`
                WHERE ID = clave;
                SET resultado = 'eliminar';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO `municipio` (id_estado, nombre)
                VALUES (id_es, nombres);
                SET resultado = 'insertar';
            END;
        
        ELSE
            SET resultado = 'valor no valido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_Pedido_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_Pedido_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_Pedido_R`(IN num INT,IN clave INT,IN cliente INT,IN Fech DATE,IN estado INT,IN totales INT,IN pagado INT,IN Estatus INT)
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            BEGIN
                UPDATE pedidos
                SET Fecha = Fech,
                    Estado = estado,
                    Total = totales,
                    T_pagado = pagado,
                    Estatus_pago = Estatus
                WHERE ID = clave;
                SET resultado = 'Editar';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM pedidos 
                WHERE ID = clave;
                SET resultado = 'Eliminar';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO pedidos (ID_Cliente, Fecha, Estado, Total, T_pagado, Estatus_pago) 
                VALUES (cliente, Fech, estado, totales, pagado, Estatus);
                SET resultado = 'Insertar';
            END;
        
        ELSE
            SET resultado = 'Valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_permMod_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_permMod_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_permMod_R`(IN num INT,IN clave INT,IN us INT,IN ID_M INT)
BEGIN
    DECLARE result VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            BEGIN
                UPDATE perm_modulo
                SET ID_Usr = us, 
                    ID_Modulo = ID_M
                WHERE ID = clave;
                SET result = 'Update';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM perm_modulo 
                WHERE ID = clave;
                SET result = 'Eliminar';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO perm_modulo(ID_Usr, ID_Modulo)
                VALUES (us, ID_M);
                SET result = 'Insertar';
            END;
        
        ELSE
            SET result = 'Valor no válido para num';
    END CASE;
    
    SELECT result;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_productos_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_productos_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_productos_R`(
    IN num INT, 
    IN clave INT, 
    IN nombre VARCHAR(100), 
    IN descrip VARCHAR(100), 
    IN costo DECIMAL(10,2),
    OUT resultado VARCHAR(100)
)
BEGIN
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
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_usuarios_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_usuarios_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_usuarios_R`(
    IN num INT, 
    IN clave INT, 
    IN usuario VARCHAR(100), 
    IN contra VARCHAR(100), 
    IN tipo INT
)
BEGIN
    DECLARE resultado VARCHAR(100);
    CASE
        WHEN num = 1 THEN
            UPDATE `usuarios`
            SET usuario = usuario, contraseña = MD5(contra), tipo = tipo
            WHERE id = clave;
            SET resultado = 'editado';
        WHEN num = 2 THEN
            DELETE FROM `usuarios`
            WHERE id = clave;
            SET resultado = 'eliminado';
        WHEN num = 3 THEN
            INSERT INTO `usuarios` (usuario, contraseña, tipo)
            VALUES (usuario, MD5(contra), tipo);
            SET resultado = 'insertado';
        
        ELSE
            SET resultado = 'valor no válido para num';
    END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `crud_zonas_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `crud_zonas_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `crud_zonas_R`(
    IN num INT, 
    IN clave INT, 
    IN nombres VARCHAR(100)
)
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE
        WHEN num = 1 THEN
            BEGIN
                UPDATE zonas
                SET nombre = nombres
                WHERE id = clave;
                SET resultado = 'editado';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                DELETE FROM zonas
                WHERE id = clave;
                SET resultado = 'eliminado';
            END;
        
        WHEN num = 3 THEN
            BEGIN
                INSERT INTO zonas (nombre)
                VALUES (nombres);
                SET resultado = 'insertado';
            END;
        
        ELSE
            SET resultado = 'valor no válido para num';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `EmpleadosCRUD` */

/*!50003 DROP PROCEDURE IF EXISTS  `EmpleadosCRUD` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `EmpleadosCRUD`(
    IN num INT, 
    IN IdE INT, 
    IN id_emp INT, 
    IN Nomb VARCHAR(45), 
    IN A_Pa VARCHAR(45),
    IN A_Ma VARCHAR(45), 
    IN RF VARCHAR(45),
    IN EMai VARCHAR(45), 
    IN NO_E INT,
    IN Tp INT,
    IN EstaT INT,
    OUT resultado VARCHAR(100)
)
BEGIN
    CASE
        WHEN num = 1 THEN 
            UPDATE empleados
            SET Nombre = Nomb,
                A_Paterno = A_Pa,
                A_Materno = A_Ma,
                RFC = RF,
                Email = EMai,
                No_Emp = NO_E,
                Tipo = Tp,
                Estatus = EstaT
            WHERE Id = IdE;  
            SET resultado = 'editar';
            
        WHEN num = 2 THEN
            DELETE FROM empleados
            WHERE Id = IdE;  
            SET resultado = 'eliminar';
            
        WHEN num = 3 THEN 
            INSERT INTO empleados (ID_Usr, Nombre, A_Paterno, A_Materno, RFC, Email, No_Emp, Tipo, Estatus) 
            VALUES (id_emp, Nomb, A_Pa, A_Ma, RF, EMai, NO_E, Tp, EstaT); 
            SET resultado = 'insertar';
            
        WHEN num = 0 THEN 
            SET resultado = 'Operacion no valida';
            
        ELSE 
            SET resultado = 'Valor no valido para num';
    END CASE;
END */$$
DELIMITER ;

/* Procedure structure for procedure `login_U` */

/*!50003 DROP PROCEDURE IF EXISTS  `login_U` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `login_U`(IN Usu VARCHAR(100),IN cont VARCHAR(100))
BEGIN
    DECLARE ContraseñaHash VARCHAR(100);
    declare resultado VARCHAR(100);   
   
    SET ContraseñaHash = MD5(cont);
    if exists(SELECT 1 FROM usuarios WHERE Usuario = Usu AND Contraseña = ContraseñaHash)
    
    THEn
        SET resultado = 'Login exitoso';
    ELSE
        SET resultado = 'Usuario o contraseña incorrecta';
    END IF;
END */$$
DELIMITER ;

/* Procedure structure for procedure `Select_Us_R` */

/*!50003 DROP PROCEDURE IF EXISTS  `Select_Us_R` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Select_Us_R`(IN num INT,IN us VARCHAR(100),IN clave VARCHAR(100))
BEGIN
    DECLARE resultado VARCHAR(100);
    
    CASE 
        WHEN num = 1 THEN
            BEGIN
                SELECT * FROM `usuarios`;
                SET resultado = 'Selecciona todos los usuarios';
            END;
        
        WHEN num = 2 THEN
            BEGIN
                SELECT * FROM `usuarios` WHERE Usuario = us AND Contraseña = MD5(clave);
                SET resultado = 'Seleccionaste un usuario';
            END;
        
        ELSE
            SET resultado = 'Valor no encontrado';
    END CASE;
    
    SELECT resultado;
END */$$
DELIMITER ;

/* Procedure structure for procedure `TelefonoCRUD` */

/*!50003 DROP PROCEDURE IF EXISTS  `TelefonoCRUD` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `TelefonoCRUD`(
    IN num INT, 
    IN IdT INT, 
    IN id_tel INT, 
    IN Tel INT, 
    IN Ti INT,
    OUT resultado VARCHAR(100)
)
BEGIN
    CASE
        WHEN num = 1 THEN 
            UPDATE telefono 
            SET Telefono = Tel,
                Tipo = Ti
            WHERE Id = IdT;  
            SET resultado = 'editar';
            
        WHEN num = 2 THEN
            DELETE FROM telefono
            WHERE Id = IdT;  
            SET resultado = 'eliminar';
            
        WHEN num = 3 THEN 
            INSERT INTO telefono (Id_Usr, Telefono, Tipo) 
            VALUES (id_tel, Tel, Ti); 
            SET resultado = 'insertar';
            
        WHEN num = 0 THEN 
            SET resultado = 'Operacion no valida';
            
        ELSE 
            SET resultado = 'Valor no valido para num';
    END CASE;
END */$$
DELIMITER ;

/*Table structure for table `prueba` */

DROP TABLE IF EXISTS `prueba`;

/*!50001 DROP VIEW IF EXISTS `prueba` */;
/*!50001 DROP TABLE IF EXISTS `prueba` */;

/*!50001 CREATE TABLE  `prueba`(
 `ID` int(11) ,
 `Usuario` varchar(20) ,
 `Contraseña` varchar(100) ,
 `Tipo` int(30) 
)*/;

/*View structure for view prueba */

/*!50001 DROP TABLE IF EXISTS `prueba` */;
/*!50001 DROP VIEW IF EXISTS `prueba` */;

/*!50001 CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prueba` AS select `usuarios`.`ID` AS `ID`,`usuarios`.`Usuario` AS `Usuario`,`usuarios`.`Contraseña` AS `Contraseña`,`usuarios`.`Tipo` AS `Tipo` from `usuarios` */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
