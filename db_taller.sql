-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-11-2019 a las 04:58:12
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_taller`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `altauser`
--

CREATE TABLE `altauser` (
  `id_user` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_u` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_pu` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_mu` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contrasena` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_tipo1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `altauser`
--

INSERT INTO `altauser` (`id_user`, `nombre_u`, `apellido_pu`, `apellido_mu`, `username`, `contrasena`, `id_tipo1`) VALUES
('1605ICO12345', 'Pedro', 'Mendoza', 'Contreras', 'pedro', '1234', 2),
('1605ICO58794', 'Roberto', 'Martinez', 'Sanchez', 'roberto', '1234', 1),
('wih', 'iu', 'fse', 'iusf', 'si', 'sefiu', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `matricula_a` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_a` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `apellido_ap` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `apellido_am` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grado` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `grupo` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_carrera1` int(11) DEFAULT NULL,
  `id_taller1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `alumno`
--

INSERT INTO `alumno` (`matricula_a`, `nombre_a`, `apellido_ap`, `apellido_am`, `horario`, `grado`, `grupo`, `id_carrera1`, `id_taller1`) VALUES
('151awdk', 'wdkaj', 'fk', 'wdakj', 'wadkj', 'awkbj', 'wdakjb', 1, 2),
('1605ISE034', 'Roberto', 'Martinez', 'Sanchez', 'miercoles 3 a 5 pm y jueves 1 ', '1010', 'ISE', 1, 1),
('1605ISE038', '0', 'Felix', 'Florentino', 'miercoles 3 a 5 pm y jueves 1 ', '1010', 'ISE', 1, 1),
('1605ISE040', 'Rodrigo', 'Felix', 'Florentino', 'miercoles 3 a 5 pm y jueves 1 ', '1010', 'ISE', 1, 1),
('16505ISE045', 'Pepe', 'Perez', 'Gonzalez', 'MIEAKWDKA', '101', 'ICO', 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `id_carrera` int(11) NOT NULL,
  `nombre_carrera` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`id_carrera`, `nombre_carrera`) VALUES
(1, 'Ing.Sistemas Computacionales'),
(2, 'Ing.Tecnologias de Manufactura'),
(3, 'Ing.Robotica'),
(4, 'Lic.Administracion y Gestion Empresarial'),
(5, 'Lic.Terapia Fisica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detallertaller`
--

CREATE TABLE `detallertaller` (
  `matricula_a1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asistencia` int(11) DEFAULT NULL,
  `id_user1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diassemana`
--

CREATE TABLE `diassemana` (
  `id_dia` int(11) NOT NULL,
  `dia` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horario`
--

CREATE TABLE `horario` (
  `id_user1` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_dia1` int(11) DEFAULT NULL,
  `horario_inicio` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_final` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `taller`
--

CREATE TABLE `taller` (
  `id_taller` int(11) NOT NULL,
  `nombre_taller` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `taller`
--

INSERT INTO `taller` (`id_taller`, `nombre_taller`) VALUES
(1, 'Musica'),
(2, 'Gym'),
(3, 'Taekwondo'),
(4, 'KingBoxing'),
(5, 'Baile'),
(6, 'Ajedrez'),
(7, 'Box'),
(8, 'Dibujo y Modelado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipouser`
--

CREATE TABLE `tipouser` (
  `id_tipo` int(11) NOT NULL,
  `tipo` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `tipouser`
--

INSERT INTO `tipouser` (`id_tipo`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Profesor');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `altauser`
--
ALTER TABLE `altauser`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `fk_fit2` (`id_tipo1`);

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`matricula_a`),
  ADD KEY `fk_fic1` (`id_carrera1`),
  ADD KEY `fk_fit1` (`id_taller1`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`id_carrera`);

--
-- Indices de la tabla `detallertaller`
--
ALTER TABLE `detallertaller`
  ADD KEY `fk_fma1` (`matricula_a1`),
  ADD KEY `fk_fiu` (`id_user1`);

--
-- Indices de la tabla `diassemana`
--
ALTER TABLE `diassemana`
  ADD PRIMARY KEY (`id_dia`);

--
-- Indices de la tabla `horario`
--
ALTER TABLE `horario`
  ADD KEY `fk_fiu1` (`id_user1`),
  ADD KEY `fk_fif1` (`id_dia1`);

--
-- Indices de la tabla `taller`
--
ALTER TABLE `taller`
  ADD PRIMARY KEY (`id_taller`);

--
-- Indices de la tabla `tipouser`
--
ALTER TABLE `tipouser`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `altauser`
--
ALTER TABLE `altauser`
  ADD CONSTRAINT `fk_fit2` FOREIGN KEY (`id_tipo1`) REFERENCES `tipouser` (`id_tipo`);

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_fic1` FOREIGN KEY (`id_carrera1`) REFERENCES `carrera` (`id_carrera`),
  ADD CONSTRAINT `fk_fit1` FOREIGN KEY (`id_taller1`) REFERENCES `taller` (`id_taller`);

--
-- Filtros para la tabla `detallertaller`
--
ALTER TABLE `detallertaller`
  ADD CONSTRAINT `fk_fiu` FOREIGN KEY (`id_user1`) REFERENCES `altauser` (`id_user`),
  ADD CONSTRAINT `fk_fma1` FOREIGN KEY (`matricula_a1`) REFERENCES `alumno` (`matricula_a`);

--
-- Filtros para la tabla `horario`
--
ALTER TABLE `horario`
  ADD CONSTRAINT `fk_fif1` FOREIGN KEY (`id_dia1`) REFERENCES `diassemana` (`id_dia`),
  ADD CONSTRAINT `fk_fiu1` FOREIGN KEY (`id_user1`) REFERENCES `altauser` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
