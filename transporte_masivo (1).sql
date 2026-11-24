-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 23:25:34
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
-- Base de datos: `transporte_masivo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_conductores`
--

CREATE TABLE `tb_conductores` (
  `id_conductor` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `licencia` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_conductores`
--

INSERT INTO `tb_conductores` (`id_conductor`, `nombre`, `documento`, `telefono`, `licencia`) VALUES
(1, 'Carlos Ramirez', '1001234567', '3101234567', 'C2'),
(2, 'Andres Gomez', '1002345678', '3112345678', 'C3'),
(3, 'Juan Perez', '1003456789', '3123456789', 'C2'),
(4, 'Daniel Torres', '1004567890', '3134567890', 'C3'),
(5, 'Miguel Rodriguez', '1005678901', '3145678901', 'C2'),
(6, 'Pedro Martinez', '1006789012', '3156789012', 'C3'),
(7, 'Luis Herrera', '1007890123', '3167890123', 'C2'),
(8, 'Jorge Castro', '1008901234', '3178901234', 'C3'),
(9, 'Andres Molina', '1009012345', '3189012345', 'C2'),
(10, 'Felipe Vargas', '1010123456', '3190123456', 'C3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_estaciones`
--

CREATE TABLE `tb_estaciones` (
  `id_estacion` int(11) NOT NULL,
  `nombre_estacion` varchar(100) DEFAULT NULL,
  `ubicacion` varchar(100) DEFAULT NULL,
  `localidad` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_estaciones`
--

INSERT INTO `tb_estaciones` (`id_estacion`, `nombre_estacion`, `ubicacion`, `localidad`) VALUES
(1, 'Terreros', 'Autopista Sur', 'Soacha'),
(2, 'Portal Sur', 'Autopista Sur', 'Bogota'),
(3, 'General Santander', 'Autopista Sur', 'Bogota'),
(4, 'Ricaurte', 'Calle 13', 'Bogota'),
(5, 'Calle 45', 'Avenida Caracas', 'Bogota'),
(6, 'Portal Norte', 'Autopista Norte', 'Bogota'),
(7, 'Héroes', 'Avenida Caracas', 'Bogota'),
(8, 'Las Aguas', 'Centro', 'Bogota'),
(9, 'Portal 80', 'Calle 80', 'Bogota'),
(10, 'Universidades', 'Centro', 'Bogota');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pagos`
--

CREATE TABLE `tb_pagos` (
  `id_pago` int(11) NOT NULL,
  `id_pasajero` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `fecha_pago` date DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pagos`
--

INSERT INTO `tb_pagos` (`id_pago`, `id_pasajero`, `valor`, `fecha_pago`, `metodo_pago`) VALUES
(1, 1, 3200.00, '2026-11-20', 'Tarjeta'),
(2, 2, 3200.00, '2026-11-20', 'Tarjeta'),
(3, 3, 3200.00, '2026-11-20', 'Tarjeta'),
(4, 4, 3200.00, '2026-11-20', 'Tarjeta'),
(5, 5, 3200.00, '2026-11-20', 'Tarjeta'),
(6, 6, 3200.00, '2026-11-20', 'Tarjeta'),
(7, 7, 3200.00, '2026-11-20', 'Tarjeta'),
(8, 8, 3200.00, '2026-11-20', 'Tarjeta'),
(9, 9, 3200.00, '2026-11-20', 'Tarjeta'),
(10, 10, 3200.00, '2026-11-20', 'Tarjeta');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pasajeros`
--

CREATE TABLE `tb_pasajeros` (
  `id_pasajero` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `documento` varchar(20) DEFAULT NULL,
  `tarjeta` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_pasajeros`
--

INSERT INTO `tb_pasajeros` (`id_pasajero`, `nombre`, `documento`, `tarjeta`) VALUES
(1, 'Pedro Lopez', '1010101010', 'TM001'),
(2, 'Maria Castro', '1020202020', 'TM002'),
(3, 'Laura Martinez', '1030303030', 'TM003'),
(4, 'David Sanchez', '1040404040', 'TM004'),
(5, 'Sofia Herrera', '1050505050', 'TM005'),
(6, 'Camilo Rojas', '1060606060', 'TM006'),
(7, 'Daniela Moreno', '1070707070', 'TM007'),
(8, 'Sebastian Diaz', '1080808080', 'TM008'),
(9, 'Valentina Ruiz', '1090909090', 'TM009'),
(10, 'Nicolas Romero', '1101010101', 'TM010');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_rutas`
--

CREATE TABLE `tb_rutas` (
  `id_ruta` int(11) NOT NULL,
  `nombre_ruta` varchar(100) DEFAULT NULL,
  `tipo_ruta` varchar(50) DEFAULT NULL,
  `id_estacion` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_rutas`
--

INSERT INTO `tb_rutas` (`id_ruta`, `nombre_ruta`, `tipo_ruta`, `id_estacion`) VALUES
(1, 'B44', 'Troncal', 1),
(2, 'G43', 'Troncal', 2),
(3, 'E42', 'Troncal', 3),
(4, 'H54', 'Troncal', 4),
(5, 'F23', 'Troncal', 5),
(6, 'B16', 'Troncal', 6),
(7, 'C30', 'Troncal', 7),
(8, 'J23', 'Troncal', 8),
(9, 'D21', 'Troncal', 9),
(10, 'L18', 'Troncal', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_vehiculos`
--

CREATE TABLE `tb_vehiculos` (
  `id_vehiculo` int(11) NOT NULL,
  `placa` varchar(20) DEFAULT NULL,
  `modelo` varchar(50) DEFAULT NULL,
  `capacidad` int(11) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_vehiculos`
--

INSERT INTO `tb_vehiculos` (`id_vehiculo`, `placa`, `modelo`, `capacidad`, `estado`) VALUES
(1, 'ABC123', 'Bus articulado', 160, 'Activo'),
(2, 'DEF456', 'Bus biarticulado', 250, 'Activo'),
(3, 'GHI789', 'Bus zonal', 80, 'Activo'),
(4, 'JKL321', 'Bus articulado', 160, 'Mantenimiento'),
(5, 'MNO654', 'Bus biarticulado', 250, 'Activo'),
(6, 'PQR987', 'Bus zonal', 80, 'Activo'),
(7, 'STU654', 'Bus articulado', 160, 'Activo'),
(8, 'VWX321', 'Bus biarticulado', 250, 'Activo'),
(9, 'YZA852', 'Bus zonal', 80, 'Mantenimiento'),
(10, 'BCD741', 'Bus articulado', 160, 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_viajes`
--

CREATE TABLE `tb_viajes` (
  `id_viaje` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `id_vehiculo` int(11) DEFAULT NULL,
  `id_conductor` int(11) DEFAULT NULL,
  `id_ruta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_viajes`
--

INSERT INTO `tb_viajes` (`id_viaje`, `fecha`, `hora`, `id_vehiculo`, `id_conductor`, `id_ruta`) VALUES
(1, '2026-11-20', '06:00:00', 1, 1, 1),
(2, '2026-11-20', '07:00:00', 2, 2, 2),
(3, '2026-11-20', '08:00:00', 3, 3, 3),
(4, '2026-11-20', '09:00:00', 4, 4, 4),
(5, '2026-11-20', '10:00:00', 5, 5, 5),
(6, '2026-11-20', '11:00:00', 6, 6, 6),
(7, '2026-11-20', '12:00:00', 7, 7, 7),
(8, '2026-11-20', '13:00:00', 8, 8, 8),
(9, '2026-11-20', '14:00:00', 9, 9, 9),
(10, '2026-11-20', '15:00:00', 10, 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_conductores`
--
ALTER TABLE `tb_conductores`
  ADD PRIMARY KEY (`id_conductor`);

--
-- Indices de la tabla `tb_estaciones`
--
ALTER TABLE `tb_estaciones`
  ADD PRIMARY KEY (`id_estacion`);

--
-- Indices de la tabla `tb_pagos`
--
ALTER TABLE `tb_pagos`
  ADD PRIMARY KEY (`id_pago`),
  ADD KEY `id_pasajero` (`id_pasajero`);

--
-- Indices de la tabla `tb_pasajeros`
--
ALTER TABLE `tb_pasajeros`
  ADD PRIMARY KEY (`id_pasajero`);

--
-- Indices de la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `id_estacion` (`id_estacion`);

--
-- Indices de la tabla `tb_vehiculos`
--
ALTER TABLE `tb_vehiculos`
  ADD PRIMARY KEY (`id_vehiculo`);

--
-- Indices de la tabla `tb_viajes`
--
ALTER TABLE `tb_viajes`
  ADD PRIMARY KEY (`id_viaje`),
  ADD KEY `id_vehiculo` (`id_vehiculo`),
  ADD KEY `id_conductor` (`id_conductor`),
  ADD KEY `id_ruta` (`id_ruta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_conductores`
--
ALTER TABLE `tb_conductores`
  MODIFY `id_conductor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_estaciones`
--
ALTER TABLE `tb_estaciones`
  MODIFY `id_estacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_pagos`
--
ALTER TABLE `tb_pagos`
  MODIFY `id_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_pasajeros`
--
ALTER TABLE `tb_pasajeros`
  MODIFY `id_pasajero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  MODIFY `id_ruta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_vehiculos`
--
ALTER TABLE `tb_vehiculos`
  MODIFY `id_vehiculo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tb_viajes`
--
ALTER TABLE `tb_viajes`
  MODIFY `id_viaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_pagos`
--
ALTER TABLE `tb_pagos`
  ADD CONSTRAINT `tb_pagos_ibfk_1` FOREIGN KEY (`id_pasajero`) REFERENCES `tb_pasajeros` (`id_pasajero`);

--
-- Filtros para la tabla `tb_rutas`
--
ALTER TABLE `tb_rutas`
  ADD CONSTRAINT `tb_rutas_ibfk_1` FOREIGN KEY (`id_estacion`) REFERENCES `tb_estaciones` (`id_estacion`);

--
-- Filtros para la tabla `tb_viajes`
--
ALTER TABLE `tb_viajes`
  ADD CONSTRAINT `tb_viajes_ibfk_1` FOREIGN KEY (`id_vehiculo`) REFERENCES `tb_vehiculos` (`id_vehiculo`),
  ADD CONSTRAINT `tb_viajes_ibfk_2` FOREIGN KEY (`id_conductor`) REFERENCES `tb_conductores` (`id_conductor`),
  ADD CONSTRAINT `tb_viajes_ibfk_3` FOREIGN KEY (`id_ruta`) REFERENCES `tb_rutas` (`id_ruta`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
