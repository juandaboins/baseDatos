-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-08-2024 a las 20:03:28
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `productos`
--
CREATE DATABASE IF NOT EXISTS `productos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `productos`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `id_almacen` int(10) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `num_deposito` int(10) DEFAULT NULL,
  `id_prod_terminado` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`id_almacen`, `fecha_ingreso`, `num_deposito`, `id_prod_terminado`) VALUES
(1, '2022-11-01', 1, 30),
(2, '2020-12-23', 11, 38),
(3, '2022-02-17', 12, 37),
(4, '2023-03-13', 5, 36),
(5, '2021-04-12', 18, 35),
(6, '2019-05-23', 7, 34),
(7, '2020-06-20', 15, 33),
(8, '2018-09-24', 13, 32),
(9, '2021-10-23', 2, 31),
(10, '2022-11-01', 6, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aux_almacen`
--

CREATE TABLE `aux_almacen` (
  `id_almacen` int(11) NOT NULL,
  `id_prod_terminado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aux_almacen`
--

INSERT INTO `aux_almacen` (`id_almacen`, `id_prod_terminado`) VALUES
(1, 30),
(2, 31),
(3, 32),
(4, 33),
(5, 34),
(6, 35),
(7, 36),
(8, 37),
(9, 38),
(10, 39);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envasado`
--

CREATE TABLE `envasado` (
  `id_lote_env` int(10) NOT NULL,
  `id_num_orden` int(10) DEFAULT NULL,
  `presentación_prod` varchar(50) DEFAULT NULL,
  `fecha_fab` date NOT NULL,
  `fecha_ven` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `envasado`
--

INSERT INTO `envasado` (`id_lote_env`, `id_num_orden`, `presentación_prod`, `fecha_fab`, `fecha_ven`) VALUES
(3200, 1000, 'litro', '2023-01-23', '2026-01-23'),
(3201, 1001, 'galón', '2022-11-01', '2025-11-01'),
(3202, 1002, 'galón', '2020-12-23', '2024-12-23'),
(3203, 1003, 'galón', '2022-02-17', '2026-02-17'),
(3204, 1004, 'litro', '2023-03-13', '2026-03-13'),
(3205, 1005, 'litro', '2021-04-12', '2024-04-12'),
(3206, 1006, 'litro', '2019-05-23', '2023-10-23'),
(3207, 1007, 'galón', '2020-06-20', '2023-01-20'),
(3208, 1008, 'litro', '2018-09-24', '2022-09-24'),
(3209, 1009, 'galón', '2021-10-23', '2021-10-23'),
(3210, 1010, 'galón', '2019-12-12', '2023-12-12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden`
--

CREATE TABLE `orden` (
  `id_num_orden` int(10) NOT NULL,
  `descrip_producto` varchar(50) NOT NULL,
  `marca_prod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `orden`
--

INSERT INTO `orden` (`id_num_orden`, `descrip_producto`, `marca_prod`) VALUES
(1000, 'liquido', 'refrigerante ford'),
(1002, 'aceite', 'aceite para motor chevrolet'),
(1003, 'liquido', 'refrigerante ford'),
(1004, 'aceite', 'aceite para motor ford'),
(1005, 'aceite baja densidad', 'liquido para frenos'),
(1006, 'aceite', 'aceite para motor pegout'),
(1007, 'liquido', 'refrigerante chevrolet'),
(1008, 'liquido', 'refrigerante ford'),
(1009, 'aceite baja densidad', 'liquido para frenos'),
(1010, 'aceite', 'aceite para motor ford');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto_terminado`
--

CREATE TABLE `producto_terminado` (
  `id_prod_terminado` int(10) NOT NULL,
  `id_lote_env` int(10) DEFAULT NULL,
  `id_almacen` int(11) DEFAULT NULL,
  `cargo_op` varchar(50) DEFAULT NULL,
  `nombre_op` varchar(50) NOT NULL,
  `materia_prima` varchar(50) NOT NULL,
  `cantidad` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto_terminado`
--

INSERT INTO `producto_terminado` (`id_prod_terminado`, `id_lote_env`, `id_almacen`, `cargo_op`, `nombre_op`, `materia_prima`, `cantidad`) VALUES
(30, 3200, 1, 'operario A', 'juan perez', 'quimicos', 364),
(31, 3201, 2, 'operario A', 'alfredo sequera', 'quimicos', 400),
(32, 3202, 3, 'operario C', 'wilfredo jimenez', 'quimicos', 564),
(33, 3203, 4, 'operario B', 'jose salas', 'quimicos', 364),
(34, 3204, 5, 'operario A', 'gerardo silva', 'quimicos', 500),
(35, 3205, 6, 'operario C', 'daniela sosa', 'quimicos', 400),
(36, 3206, 7, 'operario B', 'jeferson vargas', 'quimicos', 364),
(37, 3207, 8, 'operario B', 'candy perez', 'quimicos', 400),
(38, 3208, 9, 'operario A', 'franco salas', 'quimicos', 564),
(39, 3209, 10, 'operario C', 'luis gonzales', 'quimicos', 564);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`id_almacen`),
  ADD UNIQUE KEY `id_prod_terminado` (`id_prod_terminado`);

--
-- Indices de la tabla `aux_almacen`
--
ALTER TABLE `aux_almacen`
  ADD UNIQUE KEY `id_almacen` (`id_almacen`),
  ADD UNIQUE KEY `id_prod_terminado` (`id_prod_terminado`);

--
-- Indices de la tabla `envasado`
--
ALTER TABLE `envasado`
  ADD PRIMARY KEY (`id_lote_env`),
  ADD UNIQUE KEY `id_num_orden` (`id_num_orden`);

--
-- Indices de la tabla `orden`
--
ALTER TABLE `orden`
  ADD PRIMARY KEY (`id_num_orden`);

--
-- Indices de la tabla `producto_terminado`
--
ALTER TABLE `producto_terminado`
  ADD PRIMARY KEY (`id_prod_terminado`),
  ADD UNIQUE KEY `id_lote_env` (`id_lote_env`),
  ADD UNIQUE KEY `id_almacen` (`id_almacen`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `id_almacen` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `envasado`
--
ALTER TABLE `envasado`
  MODIFY `id_lote_env` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3211;

--
-- AUTO_INCREMENT de la tabla `orden`
--
ALTER TABLE `orden`
  MODIFY `id_num_orden` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT de la tabla `producto_terminado`
--
ALTER TABLE `producto_terminado`
  MODIFY `id_prod_terminado` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD CONSTRAINT `almacen_ibfk_1` FOREIGN KEY (`id_prod_terminado`) REFERENCES `producto_terminado` (`id_prod_terminado`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `aux_almacen`
--
ALTER TABLE `aux_almacen`
  ADD CONSTRAINT `aux_almacen_ibfk_1` FOREIGN KEY (`id_prod_terminado`) REFERENCES `producto_terminado` (`id_prod_terminado`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `aux_almacen_ibfk_2` FOREIGN KEY (`id_almacen`) REFERENCES `almacen` (`id_almacen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `orden`
--
ALTER TABLE `orden`
  ADD CONSTRAINT `orden_ibfk_1` FOREIGN KEY (`id_num_orden`) REFERENCES `envasado` (`id_num_orden`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto_terminado`
--
ALTER TABLE `producto_terminado`
  ADD CONSTRAINT `producto_terminado_ibfk_1` FOREIGN KEY (`id_lote_env`) REFERENCES `envasado` (`id_lote_env`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
