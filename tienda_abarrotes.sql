-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 14:20:11
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
-- Base de datos: `tienda_abarrotes`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'Granos', 'Arroz y productos similares'),
(2, 'Lacteos', 'Leche y derivados'),
(3, 'Bebidas', 'Bebidas para consumo'),
(4, 'Aseo', 'Productos de limpieza'),
(5, 'Dulces', 'Golosinas y chocolates'),
(6, 'Enlatados', 'Alimentos enlatados'),
(7, 'Panaderia', 'Pan y productos horneados'),
(8, 'Aceites', 'Aceites de cocina'),
(9, 'Carnes', 'Productos carnicos'),
(10, 'Frutas', 'Frutas frescas'),
(11, 'Verduras', 'Verduras frescas'),
(12, 'Condimentos', 'Productos para sazonar'),
(13, 'Cereales', 'Cereales para desayuno'),
(14, 'Congelados', 'Productos congelados'),
(15, 'Higiene', 'Productos de higiene personal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`id_cliente`, `nombre`, `apellidos`, `documento`, `telefono`, `direccion`) VALUES
(1, 'Carlos', 'Perez', '1001001', '3001111111', 'Soacha'),
(2, 'Laura', 'Gomez', '1001002', '3001111112', 'Bosa'),
(3, 'Andres', 'Rodriguez', '1001003', '3001111113', 'Terreros'),
(4, 'Maria', 'Lopez', '1001004', '3001111114', 'San Mateo'),
(5, 'Juan', 'Martinez', '1001005', '3001111115', 'Compartir'),
(6, 'Daniela', 'Torres', '1001006', '3001111116', 'Ciudad Verde'),
(7, 'Pedro', 'Ramirez', '1001007', '3001111117', 'Ducales'),
(8, 'Camila', 'Castro', '1001008', '3001111118', 'Leon XIII'),
(9, 'Miguel', 'Rojas', '1001009', '3001111119', 'Soacha'),
(10, 'Sofia', 'Diaz', '1001010', '3001111120', 'Bosa'),
(11, 'David', 'Moreno', '1001011', '3001111121', 'Terreros'),
(12, 'Valentina', 'Sanchez', '1001012', '3001111122', 'San Mateo'),
(13, 'Felipe', 'Garcia', '1001013', '3001111123', 'Compartir'),
(14, 'Natalia', 'Vargas', '1001014', '3001111124', 'Ciudad Verde'),
(15, 'Santiago', 'Herrera', '1001015', '3001111125', 'Soacha');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id_compra` int(11) NOT NULL,
  `id_proveedor` int(11) DEFAULT NULL,
  `fecha_compra` date DEFAULT NULL,
  `total_compra` float DEFAULT NULL,
  `estado` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id_compra`, `id_proveedor`, `fecha_compra`, `total_compra`, `estado`) VALUES
(1, 1, '2026-11-15', 50000, 'Pagada'),
(2, 2, '2026-11-15', 60000, 'Pagada'),
(3, 3, '2026-11-16', 45000, 'Pendiente'),
(4, 4, '2026-11-16', 35000, 'Pagada'),
(5, 5, '2026-11-17', 70000, 'Pagada'),
(6, 6, '2026-11-17', 40000, 'Pendiente'),
(7, 7, '2026-11-18', 55000, 'Pagada'),
(8, 8, '2026-11-18', 30000, 'Pagada'),
(9, 9, '2026-11-19', 65000, 'Pendiente'),
(10, 10, '2026-11-19', 50000, 'Pagada'),
(11, 11, '2026-11-20', 25000, 'Pagada'),
(12, 12, '2026-11-20', 45000, 'Pendiente'),
(13, 13, '2026-11-21', 35000, 'Pagada'),
(14, 14, '2026-11-21', 60000, 'Pagada'),
(15, 15, '2026-11-22', 40000, 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_comprar`
--

CREATE TABLE `detalle_comprar` (
  `id_detalle_compra` int(11) NOT NULL,
  `id_compra` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_comprar`
--

INSERT INTO `detalle_comprar` (`id_detalle_compra`, `id_compra`, `id_producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 1, 1, 20, 2500, 50000),
(2, 2, 2, 20, 3000, 60000),
(3, 3, 3, 15, 3000, 45000),
(4, 4, 4, 14, 2500, 35000),
(5, 5, 5, 20, 3500, 70000),
(6, 6, 6, 10, 4000, 40000),
(7, 7, 7, 20, 2750, 55000),
(8, 8, 8, 10, 3000, 30000),
(9, 9, 9, 13, 5000, 65000),
(10, 10, 10, 50, 1000, 50000),
(11, 11, 11, 25, 1000, 25000),
(12, 12, 12, 25, 1800, 45000),
(13, 13, 13, 7, 5000, 35000),
(14, 14, 14, 10, 6000, 60000),
(15, 15, 15, 5, 8000, 40000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_venta`
--

CREATE TABLE `detalle_venta` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precio_unitario` float DEFAULT NULL,
  `subtotal` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_venta`
--

INSERT INTO `detalle_venta` (`id_detalle`, `id_venta`, `id_producto`, `cantidad`, `precio_unitario`, `subtotal`) VALUES
(1, 1, 1, 2, 3500, 7000),
(2, 2, 2, 1, 4000, 4000),
(3, 3, 3, 2, 5000, 10000),
(4, 4, 4, 1, 3500, 3500),
(5, 5, 5, 1, 5000, 5000),
(6, 6, 6, 1, 6500, 6500),
(7, 7, 7, 1, 4500, 4500),
(8, 8, 8, 1, 8500, 8500),
(9, 9, 9, 1, 7000, 7000),
(10, 10, 10, 1, 1500, 1500),
(11, 11, 11, 1, 1200, 1200),
(12, 12, 12, 1, 1800, 1800),
(13, 13, 13, 1, 7000, 7000),
(14, 14, 14, 1, 8500, 8500),
(15, 15, 15, 1, 9500, 9500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio_compra` float DEFAULT NULL,
  `precio_venta` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `id_proveedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `descripcion`, `precio_compra`, `precio_venta`, `stock`, `fecha_vencimiento`, `id_categoria`, `id_proveedor`) VALUES
(1, 'Arroz', 'Arroz blanco de libra', 2500, 3500, 40, '2027-05-10', 1, 1),
(2, 'Leche', 'Leche entera', 3000, 4000, 35, '2026-12-20', 2, 3),
(3, 'Gaseosa', 'Bebida de 1 litro', 3500, 5000, 30, '2027-01-15', 3, 7),
(4, 'Jabon', 'Jabon para lavar', 2500, 3500, 25, '2028-03-10', 4, 4),
(5, 'Chocolate', 'Chocolate de mesa', 3500, 5000, 20, '2027-06-15', 5, 6),
(6, 'Atun', 'Lata de atun', 4500, 6500, 25, '2028-01-20', 6, 9),
(7, 'Pan', 'Pan tajado', 3000, 4500, 30, '2026-12-10', 7, 8),
(8, 'Aceite', 'Aceite de cocina', 6500, 8500, 20, '2027-08-15', 8, 5),
(9, 'Salchicha', 'Paquete de salchichas', 5000, 7000, 15, '2026-12-25', 9, 10),
(10, 'Manzana', 'Manzana roja', 1000, 1500, 40, '2026-12-05', 10, 2),
(11, 'Zanahoria', 'Zanahoria fresca', 800, 1200, 35, '2026-12-05', 11, 2),
(12, 'Sal', 'Sal de cocina', 1200, 1800, 50, '2028-05-10', 12, 11),
(13, 'Cereal', 'Cereal de desayuno', 5000, 7000, 20, '2027-07-15', 13, 12),
(14, 'Helado', 'Helado de vainilla', 6000, 8500, 15, '2027-01-10', 14, 13),
(15, 'Shampoo', 'Shampoo familiar', 7000, 9500, 18, '2028-02-20', 15, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `nit` varchar(20) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(60) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre_empresa`, `nit`, `telefono`, `correo`, `direccion`) VALUES
(1, 'Distribuidora Central', '900100001', '3101111111', 'central@gmail.com', 'Bogota'),
(2, 'Productos del Campo', '900100002', '3101111112', 'campo@gmail.com', 'Soacha'),
(3, 'Lacteos del Valle', '900100003', '3101111113', 'lacteos@gmail.com', 'Bogota'),
(4, 'Aseo Total', '900100004', '3101111114', 'aseo@gmail.com', 'Bosa'),
(5, 'Granos y Mas', '900100005', '3101111115', 'granos@gmail.com', 'Soacha'),
(6, 'Dulces Colombia', '900100006', '3101111116', 'dulces@gmail.com', 'Bogota'),
(7, 'Bebidas Express', '900100007', '3101111117', 'bebidas@gmail.com', 'Soacha'),
(8, 'Panaderia Central', '900100008', '3101111118', 'panaderia@gmail.com', 'Bosa'),
(9, 'Alimentos del Sur', '900100009', '3101111119', 'alimentos@gmail.com', 'Bogota'),
(10, 'Comercializadora Norte', '900100010', '3101111120', 'norte@gmail.com', 'Bogota'),
(11, 'Mercados Unidos', '900100011', '3101111121', 'mercados@gmail.com', 'Soacha'),
(12, 'La Canasta', '900100012', '3101111122', 'canasta@gmail.com', 'Bosa'),
(13, 'Productos Selectos', '900100013', '3101111123', 'selectos@gmail.com', 'Bogota'),
(14, 'Distribuciones JM', '900100014', '3101111124', 'jm@gmail.com', 'Soacha'),
(15, 'Abastos Colombia', '900100015', '3101111125', 'abastos@gmail.com', 'Bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `id_venta` int(11) NOT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `fecha_venta` date DEFAULT NULL,
  `total` float DEFAULT NULL,
  `metodo_pago` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`id_venta`, `id_cliente`, `fecha_venta`, `total`, `metodo_pago`) VALUES
(1, 1, '2026-11-20', 7000, 'Efectivo'),
(2, 2, '2026-11-20', 4000, 'Nequi'),
(3, 3, '2026-11-20', 10000, 'Efectivo'),
(4, 4, '2026-11-20', 3500, 'Transferencia'),
(5, 5, '2026-11-20', 5000, 'Efectivo'),
(6, 6, '2026-11-21', 6500, 'Nequi'),
(7, 7, '2026-11-21', 4500, 'Efectivo'),
(8, 8, '2026-11-21', 8500, 'Transferencia'),
(9, 9, '2026-11-21', 7000, 'Efectivo'),
(10, 10, '2026-11-21', 1500, 'Nequi'),
(11, 11, '2026-11-22', 1200, 'Efectivo'),
(12, 12, '2026-11-22', 1800, 'Transferencia'),
(13, 13, '2026-11-22', 7000, 'Efectivo'),
(14, 14, '2026-11-22', 8500, 'Nequi'),
(15, 15, '2026-11-22', 9500, 'Efectivo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `detalle_comprar`
--
ALTER TABLE `detalle_comprar`
  ADD PRIMARY KEY (`id_detalle_compra`),
  ADD KEY `id_compra` (`id_compra`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `id_venta` (`id_venta`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `id_cliente` (`id_cliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `detalle_comprar`
--
ALTER TABLE `detalle_comprar`
  ADD CONSTRAINT `detalle_comprar_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id_compra`),
  ADD CONSTRAINT `detalle_comprar_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `detalle_venta`
--
ALTER TABLE `detalle_venta`
  ADD CONSTRAINT `detalle_venta_ibfk_1` FOREIGN KEY (`id_venta`) REFERENCES `venta` (`id_venta`),
  ADD CONSTRAINT `detalle_venta_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `producto` (`id_producto`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
