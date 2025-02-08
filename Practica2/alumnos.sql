-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 01:59:51
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Alejandro', 'Tizoc Beltran', '9086454842423', '2008-06-12', 1, 'alejandrotizoc1229@gmail.com', '6673325893'),
(2, 'Luis Angel', 'Perez Lozano', '9086454842687', '2008-09-06', 1, 'perezlozano@gmail.com', '6673946409'),
(3, 'Jan Carlo', 'Martinez Quintero', '9086454842734', '2008-07-06', 1, 'jan.martinez24@cetis107.edu.mx', '6675720017'),
(4, 'Juan Pablo', 'Ochoa Hermosillo', '9086454842890', '2008-07-23', 0, 'ochoahermosilloj@cetis107.edu.mx', '6674299546'),
(5, 'Victor Emilio', 'Ojeda Castro', '9086454842958', '2008-09-28', 0, 'veoc09.28@gmail.com', '6677554258'),
(6, 'David Sebastian', 'Payan Serrano', '9086454842973', '2008-11-05', 1, 'david.payan23@cetis107.edu.mx', '667457001'),
(7, 'Jonathan Horus', 'Zazueta Hernandez', '9086454842204', '2008-04-09', 1, 'jonathan.zazueta@cetis107.edu.mx', '6677562259'),
(8, 'Isaac', 'Moreno Higuera', '9086454842697', '2008-08-30', 1, 'isaac.moreno23@cetis017.edu.mx', '6674096666'),
(9, 'Sergio Braulio', 'Martinez Felix', '9086454842100', '2008-08-14', 1, 'sergio.martinez23@cetis107.edu.mx', '6672075250'),
(10, 'Rubi Esmeralda', 'Zepeda Garcia', '9086454842480', '2007-09-29', 0, 'rubi.zepeda23@cetis107.edu.mx', '667207599');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
