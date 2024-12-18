-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2024 a las 17:40:19
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `repay`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cambiar_contra`
--

CREATE TABLE `cambiar_contra` (
  `id` int(11) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `expiracion` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cambiar_contra`
--

INSERT INTO `cambiar_contra` (`id`, `correo`, `token`, `expiracion`) VALUES
(1, 'alejo011106@gmail.com', '5d6e774d6b9ea1a6868443bc84e3ebcb', '2024-10-23 03:25:04'),
(2, 'alejo011106@gmail.com', '71fcf688228319216850b6246c7e9639', '2024-10-23 03:29:58'),
(3, 'alejo011106@gmail.com', '7f5be14d78ec1c7f7b246aee0a6b3f82', '2024-10-23 03:30:59'),
(4, 'alejo011106@gmail.com', '2de043d3635941f566eabc5676befde3', '2024-10-23 03:36:12'),
(5, 'alejo011106@gmail.com', 'ec0d48b192d625b9a02f736d6afaa49e', '2024-10-23 03:38:31'),
(6, 'augustodlsr@gmail.com', 'f14baf6f05b778edcf326e345fb214a4', '2024-10-23 23:05:06'),
(7, 'augustodlsr@gmail.com', '94efa64061e150ad6832d7a3af3a1c1f', '2024-10-25 23:08:39'),
(8, 'augustodlsr@gmail.com', '3495fcd725c0b71368c721166990c238', '2024-10-25 23:08:55'),
(9, 'alejo011106@gmail.com', '1af385bf7df6773eab70e8c09b7d5b7e', '2024-10-25 23:12:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `espacios_comunes`
--

CREATE TABLE `espacios_comunes` (
  `id_espaco` int(11) NOT NULL,
  `id_residencia` int(11) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_residencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`id`, `id_usuario`, `id_residencia`) VALUES
(3, 3, 59),
(4, 3, 59),
(5, 3, 58),
(6, 3, 58),
(7, 10, 58),
(8, 10, 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fotos_residencia`
--

CREATE TABLE `fotos_residencia` (
  `id_foto` int(11) NOT NULL,
  `id_residencia` int(11) DEFAULT NULL,
  `ruta_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fotos_residencia`
--

INSERT INTO `fotos_residencia` (`id_foto`, `id_residencia`, `ruta_foto`) VALUES
(19, 58, 'fotos/fondo.png.jpeg'),
(20, 59, 'fotos/IMG_8667.jpg'),
(21, 60, 'fotos/IMG_8671.jpg'),
(22, 61, 'fotos/IMG_8675.jpg'),
(32, 65, 'fotos/Nacionall.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id_habitacion` int(11) NOT NULL,
  `id_residencia` int(11) DEFAULT NULL,
  `disponibilidad` int(11) DEFAULT NULL,
  `banios` varchar(50) DEFAULT NULL,
  `detalles` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `habitaciones`
--

INSERT INTO `habitaciones` (`id_habitacion`, `id_residencia`, `disponibilidad`, `banios`, `detalles`) VALUES
(31, 31, 12, '2', 'asdasd'),
(32, 32, 2, '2', 'asdasd'),
(33, 33, 2, '2', 'asdasd'),
(34, 34, 3, '2', 'pamba'),
(35, 35, 2, '2', 'aaaaa'),
(36, 36, 2, '2', 'sasd'),
(37, 37, 2, '2', 'sasd'),
(38, 38, 2, '2', 'sasd'),
(39, 39, 2, '2', ''),
(40, 40, 2, '2', 'asdasdasd'),
(43, 43, 2, '2', 'uno masculino y otro femenino'),
(52, 52, 5, '3', 'Uno masculino, otro femenino y otro mixto'),
(53, 53, 4, '2', 'mucho'),
(56, 56, 2, '2', 'a'),
(57, 57, 2, '3', 'a'),
(58, 58, 3, '2', 'a'),
(59, 59, 3, '2', 'a'),
(60, 60, 3, '2', 'a'),
(61, 61, 3, '2', 'a'),
(67, 65, 2, '2', 'asdasdad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hace`
--

CREATE TABLE `hace` (
  `id_resenia` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `propietario`
--

CREATE TABLE `propietario` (
  `id_propietario` int(11) NOT NULL,
  `id_residencia` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resenia`
--

CREATE TABLE `resenia` (
  `id_resenia` int(11) NOT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reside`
--

CREATE TABLE `reside` (
  `id_residencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residencia`
--

CREATE TABLE `residencia` (
  `id_residencia` int(11) NOT NULL,
  `calle` varchar(80) DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `precio` int(11) DEFAULT NULL,
  `normas` varchar(500) DEFAULT NULL,
  `nombreresi` varchar(50) DEFAULT NULL,
  `descripcion` varchar(255) NOT NULL,
  `id_habitacion` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `tipo` enum('Masculina','Femenina','Mixta') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `residencia`
--

INSERT INTO `residencia` (`id_residencia`, `calle`, `numero`, `precio`, `normas`, `nombreresi`, `descripcion`, `id_habitacion`, `id_usuario`, `tipo`) VALUES
(58, NULL, NULL, 12300, 'hola', 'hola', 'hola', NULL, 11, NULL),
(59, NULL, NULL, 13000, 'aleee', 'alejo2', 'alejoe', NULL, 11, NULL),
(60, NULL, NULL, 12000, 'alejo', 'alejo3', 'alejo', NULL, 11, NULL),
(61, NULL, NULL, 13000, 'asdasd', 'aaasdasd', 'asdasd', NULL, 11, NULL),
(65, NULL, NULL, 2, 'asdasda', 'asdasd', 'asdasd', NULL, 3, 'Masculina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id_rol`, `descripcion`) VALUES
(0, 'Admin'),
(1, 'Estudiante'),
(2, 'Propietario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tiene`
--

CREATE TABLE `tiene` (
  `id_resenia` int(11) DEFAULT NULL,
  `id_residencia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `apellido` varchar(30) DEFAULT NULL,
  `contrasenia` varchar(255) DEFAULT NULL,
  `num_telefono` int(11) DEFAULT NULL,
  `correo` varchar(255) DEFAULT NULL,
  `genero` enum('Hombre','Mujer','Otro') DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `id_rol` int(11) NOT NULL DEFAULT 1,
  `id_residencia` int(11) DEFAULT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre`, `apellido`, `contrasenia`, `num_telefono`, `correo`, `genero`, `fecha_nacimiento`, `id_rol`, `id_residencia`, `foto`) VALUES
(1, 'Ismael', 'Vazquez', 'ismarepay123prueba@', 923347772, 'prueba1@gmail.com', 'Hombre', '2000-03-07', 1, NULL, ''),
(3, 'Augusto', 'de los Santos', '$2y$10$2GFCkccDYO5bJTLJVD6IR.F6vqzkxx6w3J1By6OsugPRACeVzkjbe', NULL, 'augustodlsr@gmail.com', 'Hombre', '2007-01-30', 2, NULL, 'fotos/671bfef133a10.png'),
(5, 'pepito', 'papa', '$2y$10$6SSsh.1tr20fgkIuf9/T/OO/JD8Ij07p.WTLxkWuZf0mTUOe1NLvW', NULL, '123@gmail.com', 'Hombre', '2024-10-04', 1, NULL, ''),
(8, 'pepito', 'de los santos', '$2y$10$ekBwUTEN7HXD/KIBhYDqh.lFpAopLI4X96k9fDK0j5Wn3f9xwg0Wq', NULL, '2@gmail.com', 'Hombre', '2024-10-23', 2, NULL, ''),
(9, 'a', 'a', '$2y$10$YuhIq2gVh9kdzZx77QBZLeQd4.1ObHbu0fOV14KCqZI6BVYNrfPY2', NULL, '3@gmail.com', 'Hombre', '2024-10-16', 2, NULL, ''),
(10, 'a', 'a', '$2y$10$JigrZTq/FdagqBYy1WeS6eM5wVkjibd2neWKXUf3yjbo4JxN26ccK', NULL, '1@gmail.com', 'Hombre', '2024-10-18', 1, NULL, 'fotos/671a943c3eff8.jpg'),
(11, 'Alejo', 'Piñeyro', '$2y$10$abe/ffODD1gs4CUi.K8yRuIUF43yanuPFJIascsFMgxrNQIu08Rvu', NULL, 'alejo011106@gmail.com', 'Hombre', '2024-10-31', 2, 61, 'fotos/671a71c063e7e.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD KEY `id_admin` (`id_admin`);

--
-- Indices de la tabla `cambiar_contra`
--
ALTER TABLE `cambiar_contra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `espacios_comunes`
--
ALTER TABLE `espacios_comunes`
  ADD PRIMARY KEY (`id_espaco`),
  ADD KEY `id_residencia` (`id_residencia`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_residencia` (`id_residencia`);

--
-- Indices de la tabla `fotos_residencia`
--
ALTER TABLE `fotos_residencia`
  ADD PRIMARY KEY (`id_foto`),
  ADD KEY `fotos_residencia_ibfk_1` (`id_residencia`);

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id_habitacion`),
  ADD KEY `id_residencia` (`id_residencia`);

--
-- Indices de la tabla `hace`
--
ALTER TABLE `hace`
  ADD KEY `id_resenia` (`id_resenia`);

--
-- Indices de la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD PRIMARY KEY (`id_propietario`),
  ADD UNIQUE KEY `id_residencia` (`id_residencia`),
  ADD UNIQUE KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `resenia`
--
ALTER TABLE `resenia`
  ADD PRIMARY KEY (`id_resenia`);

--
-- Indices de la tabla `reside`
--
ALTER TABLE `reside`
  ADD KEY `id_residencia` (`id_residencia`);

--
-- Indices de la tabla `residencia`
--
ALTER TABLE `residencia`
  ADD PRIMARY KEY (`id_residencia`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id_rol`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_rol_2` (`id_rol`);

--
-- Indices de la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD KEY `id_resenia` (`id_resenia`),
  ADD KEY `id_residencia` (`id_residencia`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `id_rol` (`id_rol`) USING BTREE,
  ADD KEY `id_residencia` (`id_residencia`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cambiar_contra`
--
ALTER TABLE `cambiar_contra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `espacios_comunes`
--
ALTER TABLE `espacios_comunes`
  MODIFY `id_espaco` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `fotos_residencia`
--
ALTER TABLE `fotos_residencia`
  MODIFY `id_foto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id_habitacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `resenia`
--
ALTER TABLE `resenia`
  MODIFY `id_resenia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `residencia`
--
ALTER TABLE `residencia`
  MODIFY `id_residencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_admin`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `espacios_comunes`
--
ALTER TABLE `espacios_comunes`
  ADD CONSTRAINT `espacios_comunes_ibfk_1` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`);

--
-- Filtros para la tabla `fotos_residencia`
--
ALTER TABLE `fotos_residencia`
  ADD CONSTRAINT `fotos_residencia_ibfk_1` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hace`
--
ALTER TABLE `hace`
  ADD CONSTRAINT `hace_ibfk_2` FOREIGN KEY (`id_resenia`) REFERENCES `resenia` (`id_resenia`);

--
-- Filtros para la tabla `propietario`
--
ALTER TABLE `propietario`
  ADD CONSTRAINT `propietario_ibfk_1` FOREIGN KEY (`id_propietario`) REFERENCES `usuario` (`id_usuario`),
  ADD CONSTRAINT `propietario_ibfk_2` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`),
  ADD CONSTRAINT `propietario_ibfk_3` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `reside`
--
ALTER TABLE `reside`
  ADD CONSTRAINT `reside_ibfk_2` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`);

--
-- Filtros para la tabla `residencia`
--
ALTER TABLE `residencia`
  ADD CONSTRAINT `residencia_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tiene`
--
ALTER TABLE `tiene`
  ADD CONSTRAINT `tiene_ibfk_1` FOREIGN KEY (`id_resenia`) REFERENCES `resenia` (`id_resenia`),
  ADD CONSTRAINT `tiene_ibfk_2` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `usuario_ibfk_2` FOREIGN KEY (`id_residencia`) REFERENCES `residencia` (`id_residencia`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
