-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2021 a las 16:36:35
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `betterware`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dwh_productos_d`
--

CREATE TABLE `dwh_productos_d` (
  `DWHR_CODPROD_C` int(11) NOT NULL COMMENT 'Contiene el ID del producto, es PK.',
  `DWHR_CANTDISP_S` int(11) NOT NULL COMMENT 'Cantidad disponible de producto.',
  `DWHR_NOMPROD_S` varchar(60) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Nombre de producto.',
  `DWHR_DESC_S` varchar(255) COLLATE utf8_spanish2_ci NOT NULL COMMENT 'Descripción del producto',
  `DWHR_COSTPUB_S` float NOT NULL COMMENT 'Costo publico de producto',
  `DWHR_FECCAR_D` date NOT NULL COMMENT 'Fecha de carga en el inventario.',
  `DWHR_FECULTACT_D` date NOT NULL COMMENT 'Fecha de última actualización en el inventario.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci COMMENT='Tabla con información de los productos betterware.';

--
-- Volcado de datos para la tabla `dwh_productos_d`
--

INSERT INTO `dwh_productos_d` (`DWHR_CODPROD_C`, `DWHR_CANTDISP_S`, `DWHR_NOMPROD_S`, `DWHR_DESC_S`, `DWHR_COSTPUB_S`, `DWHR_FECCAR_D`, `DWHR_FECULTACT_D`) VALUES
(11851, 247, 'Abre Latas Facil', '', 99.9, '2021-04-16', '2021-04-16'),
(13365, 30, 'Repisa Ajustable Regadera', '', 399, '2021-04-16', '2021-04-16'),
(16108, 20, 'Repuesto Mob', '', 69.9, '2021-04-16', '2021-04-16'),
(16752, 5, 'Graba Todo', '', 99.9, '2021-04-16', '2021-04-16'),
(17704, 15, 'Respaldo Confort Lumbar', '', 149, '2021-04-16', '2021-04-16'),
(17725, 211, 'Guardapolvo Translucent', '', 69.9, '2021-04-16', '2021-04-16'),
(18445, 12, 'Descansa ojos', '', 49.9, '2021-04-16', '2021-04-16'),
(18706, 24, 'Luz Llantas', '', 59.9, '2021-04-16', '2021-04-16'),
(18812, 1654, 'Organi utensilios', '', 79.9, '2021-04-16', '2021-04-16'),
(18824, 245, 'Escurridor Black', '', 429, '2021-04-16', '2021-04-16'),
(19088, 25, 'Cubiertos Mickey', '', 119, '2021-04-16', '2021-04-16'),
(19532, 564, 'Rallador Ultra', '', 399, '2021-04-16', '2021-04-16'),
(19775, 25, 'Porta Cel Plegable', '', 89.9, '2021-04-16', '2021-04-16'),
(20002, 25, 'Lunch Lock', '', 239, '2021-04-16', '2021-04-16'),
(20426, 25, 'Esquinero Eco Resist', '', 299, '2021-04-16', '2021-04-16'),
(20550, 24, 'Better Pop', '', 549, '2021-04-16', '2021-04-16'),
(20705, 65, 'Cangurera Cel', '', 139, '2021-04-16', '2021-04-16'),
(20719, 585, 'Hexa Espejos', '', 135, '2021-04-16', '2021-04-16'),
(20752, 54, 'No me mires Persiana', '', 99.9, '2021-04-16', '2021-04-16'),
(20757, 125, 'Cinema Cel', '', 129, '2021-04-16', '2021-04-16'),
(20771, 214, 'Cangurera Secret', '', 99.9, '2021-04-16', '2021-04-16'),
(20778, 263, 'Ajusta cubrebocas', '', 24.9, '2021-04-16', '2021-04-16'),
(20782, 58, 'Eco Mesita', '', 299, '2021-04-16', '2021-04-16'),
(20784, 57, 'Eco Repisa', '', 229, '2021-04-16', '2021-04-16'),
(20841, 475, 'Organi Fregadero Pro', '', 119, '2021-04-16', '2021-04-16'),
(20844, 2585, 'Canasta Black', '', 199, '2021-04-16', '2021-04-16'),
(20847, 99, 'Estufa Protect', '', 89.9, '2021-04-16', '2021-04-16'),
(21101, 65, 'Sani Spray', '', 169, '2021-04-16', '2021-04-16'),
(21702, 542, 'Better Frazada', '', 299, '2021-04-16', '2021-04-16'),
(49250, 268, 'Tapa Antisalpicaduras Micro', '', 49.9, '2021-04-16', '2021-04-16'),
(60535, 4747, 'Afila Cuchillo', '', 99.9, '2021-04-16', '2021-04-16'),
(61919, 55, 'Escurridor Deluxe SET A+B', '', 359, '2021-04-16', '2021-04-16');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dwh_productos_d`
--
ALTER TABLE `dwh_productos_d`
  ADD PRIMARY KEY (`DWHR_CODPROD_C`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
