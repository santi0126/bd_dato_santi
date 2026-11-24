-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-11-2026 a las 17:43:17
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
-- Base de datos: `tienda_de_abarrotes_1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'lacteos', 'leche, quesos, yogures y derivados'),
(2, 'granos', 'arroz, frijol, lenteja y cereales'),
(3, 'bebidas', 'gaseosas, jugos, aguas y energizantes'),
(4, 'aseo hogar', 'detergentes, jabones y limpiadores'),
(5, 'aseo personal', 'champu, crema dental y desodorantes'),
(6, 'panaderia', 'pan tajado, ponques y galletas'),
(7, 'enlatados', 'atun, sardinas, maiz y verduras en conserva'),
(8, 'aceites y grasas', 'aceite vegetal, mantequilla y margarina'),
(9, 'condimentos', 'sal, azucar, especias y sazonadores'),
(10, 'pasabocas', 'papas fritas, platanitos y frutos secos'),
(11, 'dulceria', 'chocolates, caramelos y gomitas'),
(12, 'carnes frias', 'salchichas, jamon y mortadela'),
(13, 'frutas y verduras', 'papa, cebolla, tomate y frutas frescas'),
(14, 'mascotas', 'concentrado para perro y gato'),
(15, 'papeleria basica', 'cuadernos, esferos y bolsas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `saldo_pendiente` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `telefono`, `saldo_pendiente`) VALUES
(1, 'consumidor final', '0000000000', 0.00),
(2, 'carlos mendoza', '3204449988', 12000.00),
(3, 'maria fernanda rojas', '3112223344', 0.00),
(4, 'jorge enrique castro', '3156667788', 5500.00),
(5, 'luisa fernanda perez', '3109998877', 0.00),
(6, 'andres felipe gomez', '3123334455', 8000.00),
(7, 'diana carolina torres', '3147778899', 0.00),
(8, 'santiago morales', '3181112233', 0.00),
(9, 'paula andrea silva', '3194445566', 15000.00),
(10, 'ricardo javier ortiz', '3218889900', 0.00),
(11, 'camila alejandra vargas', '3001234567', 3200.00),
(12, 'hector fabio ramirez', '3019876543', 0.00),
(13, 'natalia jimenez', '3024567890', 0.00),
(14, 'oscar eduardo diaz', '3136549870', 4800.00),
(15, 'valeria martinez', '3167891234', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `codigo_barras` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `codigo_barras`, `nombre`, `precio_compra`, `precio_venta`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, '7702001001', 'leche entera bolsa 1l', 3200.00, 4000.00, 35, 1, 1),
(2, '7702001002', 'arroz blanco libra', 1800.00, 2400.00, 80, 2, 2),
(3, '7702001003', 'gaseosa manzana 1.5l', 3500.00, 4800.00, 24, 3, 3),
(4, '7702001004', 'detergente en polvo 500g', 4100.00, 5500.00, 15, 4, 4),
(5, '7702001005', 'crema dental triple accion', 3800.00, 5200.00, 20, 5, 5),
(6, '7702001006', 'pan tajado blanco grande', 4500.00, 6000.00, 18, 6, 6),
(7, '7702001007', 'atun en aceite 170g', 4900.00, 6500.00, 30, 7, 7),
(8, '7702001008', 'aceite vegetal 1000ml', 7200.00, 9500.00, 22, 8, 8),
(9, '7702001009', 'sal refinada bolsa 500g', 900.00, 1500.00, 50, 9, 9),
(10, '7702001010', 'papas fritas limon paquete', 1700.00, 2500.00, 40, 10, 10),
(11, '7702001011', 'chocolatina jet leche', 700.00, 1200.00, 60, 11, 11),
(12, '7702001012', 'salchicha tradicional x6', 4200.00, 5800.00, 16, 12, 12),
(13, '7702001013', 'papa pastusa libra', 1100.00, 1800.00, 70, 13, 13),
(14, '7702001014', 'concentrado perro adulto 1kg', 5500.00, 7500.00, 14, 14, 14),
(15, '7702001015', 'cuaderno cuadriculado 100 hojas', 3000.00, 4500.00, 25, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `empresa`, `telefono`, `ciudad`) VALUES
(1, 'distribuidora alpina', '3105550101', 'bogota'),
(2, 'arroz diana s.a.', '3125550202', 'ibague'),
(3, 'postobon distribuidores', '3155550303', 'bogota'),
(4, 'unilever andina', '3115550404', 'cali'),
(5, 'colgate palmolive', '3145550505', 'cali'),
(6, 'bimbo de colombia', '3165550606', 'tenjo'),
(7, 'alimentos van camps', '3175550707', 'cartagena'),
(8, 'team foods colombia', '3185550808', 'bogota'),
(9, 'refisal s.a.', '3195550909', 'zipaquira'),
(10, 'pepsico alimentos', '3205551010', 'funza'),
(11, 'compania nacional de chocolates', '3215551111', 'medellin'),
(12, 'alimentos zenu', '3225551212', 'medellin'),
(13, 'corabastos mayorista', '3005551313', 'bogota'),
(14, 'purina nestle', '3015551414', 'mosquera'),
(15, 'norma distribuciones', '3025551515', 'bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(30) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `cantidad`, `total`, `metodo_pago`, `id_producto`, `id_cliente`) VALUES
(1, '2026-11-01', 2, 8000.00, 'efectivo', 1, 1),
(2, '2026-11-02', 5, 12000.00, 'fiado', 2, 2),
(3, '2026-11-03', 1, 4800.00, 'nequi', 3, 3),
(4, '2026-11-04', 1, 5500.00, 'fiado', 4, 4),
(5, '2026-11-05', 2, 10400.00, 'efectivo', 5, 5),
(6, '2026-11-06', 1, 6000.00, 'daviplata', 6, 6),
(7, '2026-11-07', 2, 13000.00, 'efectivo', 7, 7),
(8, '2026-11-08', 1, 9500.00, 'nequi', 8, 8),
(9, '2026-11-09', 10, 15000.00, 'fiado', 9, 9),
(10, '2026-11-10', 3, 7500.00, 'efectivo', 10, 10),
(11, '2026-11-11', 4, 4800.00, 'efectivo', 11, 11),
(12, '2026-11-12', 2, 11600.00, 'nequi', 12, 12),
(13, '2026-11-13', 5, 9000.00, 'efectivo', 13, 13),
(14, '2026-11-14', 1, 7500.00, 'daviplata', 14, 14),
(15, '2026-11-15', 2, 9000.00, 'efectivo', 15, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_barras` (`codigo_barras`),
  ADD KEY `fk_prod_categoria` (`id_categoria`),
  ADD KEY `fk_prod_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_venta_producto` (`id_producto`),
  ADD KEY `fk_venta_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_prod_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_prod_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_venta_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
