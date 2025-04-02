-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2024 a las 13:25:13
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nano`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `telefono` bigint(20) NOT NULL,
  `fiado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellido`, `telefono`, `fiado`) VALUES
(1, 'jose', 'hernandez', 3547123456, 0),
(2, 'asa', 'fef', 23342212, 20000),
(3, 'pipo', 'gomez', 3547975611, 1311),
(5, 'Pedro', 'zuñiga', 12345678, -200),
(12, 'jose', 'fedoro', 3547624561, 2600),
(15, 'Jorge', 'nuñez', 3547123456, 30000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles_venta`
--

CREATE TABLE `detalles_venta` (
  `id_detalles_venta` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `producto` varchar(50) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalles_venta`
--

INSERT INTO `detalles_venta` (`id_detalles_venta`, `id_venta`, `producto`, `cantidad`, `precio_unitario`) VALUES
(6, 7, 'botella 1,5l cocacola', 1, 200),
(7, 7, 'botella 1,5l cocacola', 1, 200),
(8, 7, 'botella 1,5l cocacola', 1, 200),
(9, 8, 'botella 3l cocacola', 1, 400),
(10, 8, 'botella 3l drPeper', 1, 200),
(11, 8, 'botella 1,5l cocacola', 1, 200),
(12, 9, 'botella 3l cocacola', 1, 400),
(13, 9, 'botella 3l drPeper', 1, 200),
(14, 10, 'botella 1,5l cocacola', 1, 200),
(15, 11, 'botella 1,5l cocacola', 1, 200),
(16, 12, 'botella 3l cocacola', 1, 400),
(17, 13, 'botella 1,5l cocacola', 1, 200),
(18, 14, 'botella 3l cocacola', 1, 400),
(19, 15, 'botella 3l cocacola', 1, 400),
(20, 15, 'botella 3l drPeper', 1, 200),
(21, 15, 'botella 1,5l cocacola', 1, 200),
(22, 16, 'botella 1,5l cocacola', 3, 200),
(23, 17, 'botella 1,5l cocacola', 4, 200),
(24, 18, 'botella 1,5l cocacola', 3, 200),
(25, 19, 'botella 1,5l cocacola', 3, 200),
(26, 20, 'botella 1,5l cocacola', 3, 200),
(27, 21, 'botella 1,5l cocacola', 3, 200),
(28, 22, 'botella 3l drPeper', 2, 200),
(29, 22, 'botella 1,5l cocacola', 2, 200),
(30, 23, 'botella 3l cocacola', 2, 400),
(31, 24, 'botella 3l cocacola', 1, 400),
(32, 24, 'botella 3l drPeper', 1, 200),
(33, 25, 'botella 3l cocacola', 1, 400),
(34, 25, 'botella 3l drPeper', 1, 200),
(35, 25, 'botella 1,5l cocacola', 1, 200),
(36, 26, 'botella 3l drPeper', 3, 200),
(37, 26, 'botella 1,5l cocacola', 1, 200),
(38, 27, 'botella 3l drPeper', 1, 200),
(39, 28, 'botella 1,5l cocacola', 4, 200),
(40, 29, 'botella 3l cocacola', 3, 400),
(41, 29, 'botella 1,5l cocacola', 3, 200),
(42, 30, 'botella 1,5l cocacola', 6, 200),
(43, 31, 'botella 1,5l cocacola', 3, 200),
(44, 32, 'botella 1,5l cocacola', 1, 200),
(45, 33, 'botella 3l drPeper', 1, 200),
(46, 34, 'botella 3l drPeper', 1, 200),
(47, 35, 'botella 3l cocacola', 2, 400),
(48, 36, 'botella 1,5l drPeper', 1, 200),
(49, 36, 'botella 3l cocacola', 2, 400),
(50, 37, 'botella 1,5l drPeper', 1, 200),
(51, 37, 'botella 3l cocacola', 2, 400),
(52, 38, 'botella 3l cocacola', 2, 400),
(53, 38, 'botella 1,5l cocacola', 1, 200),
(54, 39, 'botella 1,5l cocacola', 2, 200),
(55, 39, 'botella 3l cocacola', 3, 400),
(56, 40, 'botella 3l cocacola', 4, 400),
(57, 41, 'botella 3l cocacola', 1, 400),
(58, 42, 'botella 3l cocacola', 1, 400);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marcas`
--

CREATE TABLE `marcas` (
  `id_marca` int(11) NOT NULL,
  `marca` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marcas`
--

INSERT INTO `marcas` (`id_marca`, `marca`) VALUES
(1, 'H2O'),
(2, 'cocacola'),
(3, 'pepsi'),
(6, 'pepitos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_marca` int(11) NOT NULL,
  `codigo` int(12) NOT NULL,
  `precio_unitario` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `id_rubro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `id_tipo`, `id_marca`, `codigo`, `precio_unitario`, `stock`, `id_rubro`) VALUES
(2, 1, 2, 748252, 200, 70, 1),
(4, 2, 2, 367255, 400, 70, 1),
(6, 1, 1, 1743532, 200, 70, 1),
(7, 2, 1, 29535, 400, 70, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `mail` text NOT NULL,
  `ubicacion` text NOT NULL,
  `telefono` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `mail`, `ubicacion`, `telefono`) VALUES
(1, 'pepitos@gmail.com', 'nonos123', 3546793455),
(3, 'chlchicha@hotmail.com', 'ituzaingo147', 3547556892);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rubro`
--

CREATE TABLE `rubro` (
  `id_rubro` int(11) NOT NULL,
  `rubro` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rubro`
--

INSERT INTO `rubro` (`id_rubro`, `rubro`) VALUES
(1, 'gaseosas'),
(2, 'galletas'),
(3, 'alcohol');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos`
--

CREATE TABLE `tipos` (
  `id_tipo` int(10) NOT NULL,
  `tipo` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipos`
--

INSERT INTO `tipos` (`id_tipo`, `tipo`) VALUES
(1, 'botella 1,5l'),
(2, 'botella 3l'),
(5, 'paquete de fideos 250gr'),
(6, 'paquete de galletas 300gr');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `nombre` varchar(30) NOT NULL,
  `contraseña` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`nombre`, `contraseña`) VALUES
('LUCIUS MAXIMUS', '12345'),
('NEGRUS ORTIVUS', '54321');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha y hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `fecha y hora`) VALUES
(2, 1, '0000-00-00 00:00:00'),
(3, 2, '0000-00-00 00:00:00'),
(4, 2, '0000-00-00 00:00:00'),
(5, 2, '0000-00-00 00:00:00'),
(6, 5, '2024-10-21 16:55:00'),
(7, 2, '2024-10-21 04:58:41'),
(8, 2, '2024-10-21 05:04:17'),
(9, 2, '2024-10-21 05:06:41'),
(10, 2, '2024-10-21 05:07:16'),
(11, 3, '2024-10-21 03:07:48'),
(12, 2, '2024-10-21 05:08:30'),
(13, 2, '2024-10-21 12:10:33'),
(14, 1, '2024-10-23 11:06:17'),
(15, 2, '2024-10-23 11:09:55'),
(16, 2, '2024-10-23 11:12:27'),
(17, 2, '2024-10-23 11:14:48'),
(18, 1, '2024-10-23 11:15:22'),
(19, 1, '2024-10-23 11:17:56'),
(20, 1, '2024-10-23 11:19:41'),
(21, 1, '2024-10-23 11:20:12'),
(22, 0, '2024-10-23 11:34:23'),
(23, 0, '2024-10-23 11:36:19'),
(24, 0, '2024-10-23 11:39:42'),
(25, 0, '2024-10-23 11:41:02'),
(26, 0, '2024-10-23 11:44:10'),
(27, 0, '2024-10-23 11:46:35'),
(28, 0, '2024-10-23 11:48:42'),
(29, 0, '2024-10-23 11:56:19'),
(30, 0, '2024-10-23 11:58:56'),
(31, 0, '2024-10-23 12:04:06'),
(32, 0, '2024-10-23 12:10:36'),
(33, 0, '2024-10-23 12:11:44'),
(34, 2, '2024-10-23 12:12:07'),
(35, 3, '2024-10-23 12:21:05'),
(36, 5, '2024-10-23 12:40:42'),
(37, 5, '2024-10-23 12:41:23'),
(38, 0, '2024-10-29 04:52:52'),
(39, 12, '2024-10-29 05:53:27'),
(40, 0, '2024-10-29 05:56:10'),
(41, 0, '2024-10-30 10:26:01'),
(42, 5, '2024-10-30 10:26:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`) USING BTREE,
  ADD UNIQUE KEY `nombre` (`nombre`,`apellido`);

--
-- Indices de la tabla `detalles_venta`
--
ALTER TABLE `detalles_venta`
  ADD PRIMARY KEY (`id_detalles_venta`);

--
-- Indices de la tabla `marcas`
--
ALTER TABLE `marcas`
  ADD PRIMARY KEY (`id_marca`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `id_codigo` (`codigo`),
  ADD UNIQUE KEY `codigo` (`codigo`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `rubro`
--
ALTER TABLE `rubro`
  ADD PRIMARY KEY (`id_rubro`);

--
-- Indices de la tabla `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`nombre`,`contraseña`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `detalles_venta`
--
ALTER TABLE `detalles_venta`
  MODIFY `id_detalles_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de la tabla `marcas`
--
ALTER TABLE `marcas`
  MODIFY `id_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `rubro`
--
ALTER TABLE `rubro`
  MODIFY `id_rubro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id_tipo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
