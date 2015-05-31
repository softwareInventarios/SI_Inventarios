-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2015 at 06:50 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cucsoft`
--

-- --------------------------------------------------------

--
-- Table structure for table `conteos`
--

CREATE TABLE IF NOT EXISTS `conteos` (
`id` bigint(20) NOT NULL,
  `contado` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `producto_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conteos`
--

INSERT INTO `conteos` (`id`, `contado`, `eliminado`, `producto_id`) VALUES
(1, 13, 0, 1),
(2, 12, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `kardex`
--

CREATE TABLE IF NOT EXISTS `kardex` (
`id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `fecha` varchar(255) NOT NULL,
  `producto_id` bigint(20) NOT NULL,
  `tipo_de_movimiento` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kardex`
--

INSERT INTO `kardex` (`id`, `cantidad`, `eliminado`, `fecha`, `producto_id`, `tipo_de_movimiento`) VALUES
(3, 3, 0, '12/21/2015', 1, 'Entrada'),
(6, 4, 0, '21/12/20015', 1, 'Entrada'),
(7, 4, 0, '21/12/20015', 2, 'Entrada'),
(8, 2, 0, '21/12/20015', 1, 'Salida');

-- --------------------------------------------------------

--
-- Table structure for table `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
`id` bigint(20) NOT NULL,
  `cls` varchar(255) NOT NULL,
  `controlador` varchar(200) DEFAULT NULL,
  `desc_opcion` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_opcion` varchar(1) NOT NULL,
  `id_padre` bigint(20) DEFAULT NULL,
  `id_tipo_opcion` varchar(10) DEFAULT NULL,
  `nombre_opcion` varchar(100) NOT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `tiene_hijos` tinyint(4) NOT NULL,
  `url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `opciones`
--

INSERT INTO `opciones` (`id`, `cls`, `controlador`, `desc_opcion`, `eliminado`, `estado_opcion`, `id_padre`, `id_tipo_opcion`, `nombre_opcion`, `orden`, `tiene_hijos`, `url`) VALUES
(1, 'link', 'Parametro', 'Manejo de Parametros', 0, 'A', NULL, NULL, 'Parametros', NULL, 0, '/cuccrm/Parametro/index'),
(2, 'link', 'Usuario', 'Manejo de Usuarios', 0, 'A', NULL, NULL, 'Usuarios', NULL, 0, '/cucrm/Usuario/index'),
(3, 'link', 'Producto', 'Manejo de Productos', 0, 'A', NULL, NULL, 'Productos', NULL, 0, '/cuccrm/Producto/index'),
(4, '1', 'Conteo', 'conteo', 0, 'A', 1, '2', 'conteo', '1', 0, 'http://localhost:8080/GrailsApplication1/Conteo');

-- --------------------------------------------------------

--
-- Table structure for table `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
`id` bigint(20) NOT NULL,
  `acciones` varchar(1000) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_operacion` varchar(1) NOT NULL,
  `nombre_operacion` varchar(100) NOT NULL,
  `opcion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `operaciones`
--

INSERT INTO `operaciones` (`id`, `acciones`, `eliminado`, `estado_operacion`, `nombre_operacion`, `opcion_id`) VALUES
(1, 'create,', 0, 'A', 'CREAR', NULL),
(2, 'index,show,', 0, 'A', 'VER', NULL),
(3, 'edit,update,', 0, 'A', 'MODIFICAR', NULL),
(4, 'borrar,', 0, 'A', 'BORRAR', NULL),
(5, 'delete,', 0, 'A', 'DESTRUIR', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
`id` bigint(20) NOT NULL,
  `atributo` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `estado_parametro` varchar(1) NOT NULL,
  `tipo_parametro` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
`id` bigint(20) NOT NULL,
  `cantidadinicial` int(11) NOT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `nombre_producto` varchar(150) NOT NULL,
  `precio` bigint(20) DEFAULT NULL,
  `referencia_producto` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `cantidadinicial`, `eliminado`, `nombre_producto`, `precio`, `referencia_producto`) VALUES
(1, 4, 0, 'nevera', 12000, '001'),
(2, 0, 0, 'carro', 12, '002');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` bigint(20) NOT NULL,
  `desc_rol` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol` varchar(1) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `desc_rol`, `eliminado`, `estado_rol`, `nombre_rol`) VALUES
(1, 'Administrador Funcional', 0, 'A', 'Admin Funcional'),
(2, 'Administrador del Sistema', 0, 'A', 'Admin Sistema');

-- --------------------------------------------------------

--
-- Table structure for table `roles_usuarios`
--

CREATE TABLE IF NOT EXISTS `roles_usuarios` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_usuario` varchar(1) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`id`, `eliminado`, `estado_rol_usuario`, `rol_id`, `usuario_id`) VALUES
(1, 0, 'A', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rol_opcion_operacion`
--

CREATE TABLE IF NOT EXISTS `rol_opcion_operacion` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_opcion_operacion` varchar(1) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  `operacion_id` bigint(20) NOT NULL,
  `rol_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rol_opcion_operacion`
--

INSERT INTO `rol_opcion_operacion` (`id`, `eliminado`, `estado_rol_opcion_operacion`, `opcion_id`, `operacion_id`, `rol_id`) VALUES
(1, 0, 'A', 1, 2, 1),
(2, 0, 'A', 2, 2, 1),
(3, 0, 'A', 1, 1, 1),
(4, 0, 'A', 1, 4, 1),
(5, 0, 'A', 1, 5, 1),
(6, 0, 'A', 4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` bigint(20) NOT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `id_estado_usuario` varchar(10) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasena`, `eliminado`, `id_estado_usuario`, `nombre`, `usuario`) VALUES
(1, '202cb962ac59075b964b07152d234b70', 0, 'A', 'Hernan Pajaro ', 'hpajaro ');

-- --------------------------------------------------------

--
-- Table structure for table `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
`id` bigint(20) NOT NULL,
  `desc_val_parametro` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `estado_valor_parametro` varchar(1) NOT NULL,
  `orden` varchar(255) DEFAULT NULL,
  `parametro_id` bigint(20) NOT NULL,
  `valor` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `conteos`
--
ALTER TABLE `conteos`
 ADD PRIMARY KEY (`id`), ADD KEY `FK38B73497F3B3F56F` (`producto_id`);

--
-- Indexes for table `kardex`
--
ALTER TABLE `kardex`
 ADD PRIMARY KEY (`id`), ADD KEY `FKBC22C8BBF3B3F56F` (`producto_id`);

--
-- Indexes for table `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operaciones`
--
ALTER TABLE `operaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `FKEAB8C1C68490B1B` (`opcion_id`);

--
-- Indexes for table `parametros`
--
ALTER TABLE `parametros`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
 ADD PRIMARY KEY (`id`), ADD KEY `FKC9AC5A476E4093D9` (`rol_id`), ADD KEY `FKC9AC5A47665ECBF9` (`usuario_id`);

--
-- Indexes for table `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
 ADD PRIMARY KEY (`id`), ADD KEY `FKD4E68CAF6E4093D9` (`rol_id`), ADD KEY `FKD4E68CAFE0B387F9` (`operacion_id`), ADD KEY `FKD4E68CAF8490B1B` (`opcion_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `valor_parametros`
--
ALTER TABLE `valor_parametros`
 ADD PRIMARY KEY (`id`), ADD KEY `FK831254B59DCEB205` (`parametro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `conteos`
--
ALTER TABLE `conteos`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kardex`
--
ALTER TABLE `kardex`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `opciones`
--
ALTER TABLE `opciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `operaciones`
--
ALTER TABLE `operaciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `parametros`
--
ALTER TABLE `parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `valor_parametros`
--
ALTER TABLE `valor_parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `conteos`
--
ALTER TABLE `conteos`
ADD CONSTRAINT `FK38B73497F3B3F56F` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `kardex`
--
ALTER TABLE `kardex`
ADD CONSTRAINT `FKBC22C8BBF3B3F56F` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`);

--
-- Constraints for table `operaciones`
--
ALTER TABLE `operaciones`
ADD CONSTRAINT `FKEAB8C1C68490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Constraints for table `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
ADD CONSTRAINT `FKC9AC5A47665ECBF9` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
ADD CONSTRAINT `FKC9AC5A476E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
ADD CONSTRAINT `FKD4E68CAF6E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
ADD CONSTRAINT `FKD4E68CAF8490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`),
ADD CONSTRAINT `FKD4E68CAFE0B387F9` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id`);

--
-- Constraints for table `valor_parametros`
--
ALTER TABLE `valor_parametros`
ADD CONSTRAINT `FK831254B59DCEB205` FOREIGN KEY (`parametro_id`) REFERENCES `parametros` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
