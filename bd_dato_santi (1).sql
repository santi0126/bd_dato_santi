-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 23:07:12
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
-- Base de datos: `bd_dato_santi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_ad` varchar(50) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `telefono_ad` bigint(20) DEFAULT NULL,
  `dependencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_ad`, `documento`, `telefono_ad`, `dependencia`) VALUES
(1, 'Carlos Mario Gutiérrez', 74258963, 3145689720, 'Dirección Regional'),
(2, 'Ana Sofía Mendoza Ruiz', 52896374, 3158963254, 'Coordinación Académica'),
(3, 'Roberto Enrique Silva', 79632587, 3162587496, 'Recursos Materiales'),
(4, 'Claudia Liliana Ospina', 41963852, 3179638524, 'Bienestar al Aprendiz'),
(5, 'Javier Mauricio Gómez', 80259634, 3182596347, 'Sistema de Gestión'),
(6, 'Mónica Patricia Arévalo', 51748296, 3197482650, 'Registro Académico'),
(7, 'Ricardo José Cárdenas', 71852963, 3208529637, 'Contabilidad'),
(8, 'Sandra Milena Rojas', 43968574, 3219685741, 'Talento Humano'),
(9, 'Fernando León Valderrama', 79258741, 3225874196, 'Compras'),
(10, 'Diana Carolina Burgos', 52698743, 3236987452, 'Tesorería'),
(11, 'Luisa Fernanda Espinosa', 42875963, 3248759610, 'Biblioteca Regional');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(11) NOT NULL,
  `nombre_ap` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(11) DEFAULT NULL,
  `numero_doc` int(23) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_doc`, `numero_doc`, `telefono`, `id_ficha`) VALUES
(1, 'Andrés Felipe Ramírez', 'TI', 1001234567, 3124567890, 1),
(2, 'Daniela Santamaría', 'CC', 1002345678, 3135678901, 1),
(3, 'Sebastián Ospina', 'TI', 1003456789, 3146789012, 2),
(4, 'Valentina Murillo', 'CC', 1004567890, 3157890123, 2),
(5, 'Mateo Cardona', 'TI', 1005678901, 3168901234, 3),
(6, 'Sara Lucía Gallego', 'CC', 1006789012, 3179012345, 4),
(7, 'Nicolás Zapata', 'TI', 1007890123, 3180123456, 5),
(8, 'María Camila Duque', 'CC', 1008901234, 3191234567, 6),
(9, 'Juan Pablo Bedoya', 'CC', 1009012345, 3202345678, 7),
(10, 'Ana María Pineda', 'TI', 1010123456, 3213456789, 8),
(11, 'José David Galindo', 'CC', 1011234567, 3224567890, 9),
(12, 'Gabriela Salazar', 'CC', 1012345678, 3235678901, 10),
(13, 'Luis Carlos Rentería', 'TI', 1013456789, 3246789012, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(11) NOT NULL,
  `competencia` varchar(12) DEFAULT NULL,
  `cod_compe` varchar(25) DEFAULT NULL,
  `descripcion` varchar(44) DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `id_ficha` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_compe`, `descripcion`, `duracion`, `id_ficha`) VALUES
(1, 'SQL Avanzado', 'BD-501', 'Diseñar y administrar bases de datos', 160, 1),
(2, 'Libros Conta', 'CON-202', 'Registrar operaciones contables', 96, 2),
(3, 'Gestión Equi', 'ADM-303', 'Liderar equipos de trabajo', 80, 3),
(4, 'Cableado Est', 'RED-104', 'Implementar cableado estructurado', 112, 4),
(5, 'Mktd Digital', 'COM-405', 'Ejecutar estrategias digitales', 90, 5),
(6, 'Mant. Preven', 'MANT-606', 'Mantenimiento preventivo a equipos', 88, 6),
(7, 'Atención al ', 'TUR-707', 'Brindar servicio al turista', 72, 7),
(8, 'Control Cali', 'MAN-808', 'Controlar calidad en procesos', 96, 8),
(9, 'Clasif. Doc.', 'ARQ-909', 'Organizar y clasificar documentos', 64, 9),
(10, 'Prog. Orient', 'SW-110', 'Desarrollar software con objetos', 144, 10),
(11, 'Seguridad BD', 'DBA-111', 'Proteger bases de datos', 120, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ficha`
--

CREATE TABLE `tb_ficha` (
  `id_ficha` int(11) NOT NULL,
  `fecha_inicio` date DEFAULT NULL,
  `fecha_fin` date DEFAULT NULL,
  `numero_ficha` int(11) DEFAULT NULL,
  `programa` varchar(30) DEFAULT NULL,
  `estado` varchar(11) DEFAULT NULL,
  `id_instructor` int(11) DEFAULT NULL,
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_ficha`
--

INSERT INTO `tb_ficha` (`id_ficha`, `fecha_inicio`, `fecha_fin`, `numero_ficha`, `programa`, `estado`, `id_instructor`, `id_admin`) VALUES
(1, '2025-02-01', '2026-07-30', 26001, 'Tecnólogo en Análisis de Datos', 'Activa', 1, 1),
(2, '2025-01-15', '2026-06-15', 26002, 'Técnico en Contabilidad', 'Activa', 3, 2),
(3, '2024-09-01', '2026-01-30', 26003, 'Tecnólogo en Gestión Administr', 'Finalizada', 4, 3),
(4, '2025-03-10', '2026-08-25', 26004, 'Técnico en Redes', 'Activa', 5, 4),
(5, '2025-04-20', '2026-09-15', 26005, 'Tecnólogo en Gestión Comercial', 'Activa', 6, 5),
(6, '2024-10-05', '2026-02-28', 26006, 'Técnico en Mantenimiento', 'Finalizada', 7, 6),
(7, '2025-05-12', '2026-10-30', 26007, 'Técnico en Guianza Turística', 'Activa', 8, 7),
(8, '2025-06-08', '2026-11-20', 26008, 'Tecnólogo en Manufactura', 'Activa', 9, 8),
(9, '2024-11-01', '2026-03-15', 26009, 'Técnico en Archivo', 'Finalizada', 10, 9),
(10, '2025-07-15', '2026-12-10', 26010, 'Tecnólogo en Desarrollo de Sof', 'Activa', 2, 10),
(11, '2025-08-01', '2027-01-20', 26011, 'Especialización en Bases de Da', 'Activa', 11, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_instructores`
--

CREATE TABLE `tb_instructores` (
  `id_instructor` int(11) NOT NULL,
  `nombre` varchar(55) DEFAULT NULL,
  `tipo_doc` varchar(30) DEFAULT NULL,
  `No_de_doc` int(11) DEFAULT NULL,
  `especialidad` varchar(45) DEFAULT NULL,
  `correo` varchar(25) DEFAULT NULL,
  `telefono` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_instructores`
--

INSERT INTO `tb_instructores` (`id_instructor`, `nombre`, `tipo_doc`, `No_de_doc`, `especialidad`, `correo`, `telefono`) VALUES
(1, 'Jorge Iván Castaño', 'CC', 75248963, 'Desarrollo Web', 'jorge.castano@sena.edu.co', 3002589634),
(2, 'Luz Marina Betancourt', 'CC', 52874196, 'Sistemas de Información', 'luz.betancourt@sena.edu.c', 3019638527),
(3, 'Alberto José Carrillo', 'CC', 79632587, 'Contabilidad General', 'alberto.carrillo@sena.edu', 3028741965),
(4, 'Nidia Esperanza Torres', 'CC', 51963852, 'Gestión Empresarial', 'nidia.torres@sena.edu.co', 3037652481),
(5, 'William Andrés Patiño', 'CC', 80259634, 'Redes y Telecomunicaciones', 'william.patino@sena.edu.c', 3046547192),
(6, 'Zoraida Inés Medina', 'CC', 41852963, 'Gestión Comercial', 'zoraida.medina@sena.edu.c', 3055436287),
(7, 'César Augusto Londoño', 'CC', 71968574, 'Mantenimiento Industrial', 'cesar.londono@sena.edu.co', 3064325178),
(8, 'Martha Cecilia Ibagué', 'CC', 42759638, 'Servicios Turísticos', 'martha.ibague@sena.edu.co', 3073214069),
(9, 'Edgar Fabián Salinas', 'CC', 79258741, 'Procesos de Manufactura', 'edgar.salinas@sena.edu.co', 3082103950),
(10, 'Liliana del Pilar Varela', 'CC', 52698743, 'Gestión Documental', 'liliana.varela@sena.edu.c', 3091092841),
(11, 'Gustavo Adolfo Restrepo', 'CC', 70852964, 'Bases de Datos', 'gustavo.restrepo@sena.edu', 3100981732);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`),
  ADD KEY `fk_aprendices_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD KEY `fk_competencia_ficha` (`id_ficha`);

--
-- Indices de la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `fk_ficha_instructor` (`id_instructor`),
  ADD KEY `fk_ficha_administrativo` (`id_admin`);

--
-- Indices de la tabla `tb_instructores`
--
ALTER TABLE `tb_instructores`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendices_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD CONSTRAINT `fk_competencia_ficha` FOREIGN KEY (`id_ficha`) REFERENCES `tb_ficha` (`id_ficha`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_ficha`
--
ALTER TABLE `tb_ficha`
  ADD CONSTRAINT `fk_ficha_administrativo` FOREIGN KEY (`id_admin`) REFERENCES `tb_administrativos` (`id_admin`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `tb_instructores` (`id_instructor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
