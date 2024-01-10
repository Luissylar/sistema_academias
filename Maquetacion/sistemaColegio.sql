-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-01-2024 a las 02:00:10
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
-- Base de datos: `sistemacolegio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumno`
--

CREATE TABLE `alumno` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Fecha_nac` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Codigo` varchar(45) DEFAULT NULL,
  `Encargado_id` int(11) NOT NULL,
  `Grado_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `DatosPadre_id` int(11) NOT NULL,
  `DatosMadre_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asg_profesor`
--

CREATE TABLE `asg_profesor` (
  `id` int(11) NOT NULL,
  `Profesor_id` int(11) NOT NULL,
  `Curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bimestre`
--

CREATE TABLE `bimestre` (
  `id` int(11) NOT NULL,
  `Numero_nombre` varchar(45) DEFAULT NULL,
  `Acittudinal` varchar(45) DEFAULT NULL,
  `Procedimental` varchar(45) DEFAULT NULL,
  `Declarativo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuenta`
--

CREATE TABLE `cuenta` (
  `id` int(11) NOT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasenia` varchar(45) DEFAULT NULL,
  `Profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuenta`
--

INSERT INTO `cuenta` (`id`, `usuario`, `contrasenia`, `Profesor_id`) VALUES
(1, 'luis', 'luis', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curriculum`
--

CREATE TABLE `curriculum` (
  `id` int(11) NOT NULL,
  `Grado_id` int(11) NOT NULL,
  `Curso_id` int(11) NOT NULL,
  `Nivel_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `curso`
--

CREATE TABLE `curso` (
  `id` int(11) NOT NULL,
  `Codigo` varchar(45) DEFAULT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datosmadre`
--

CREATE TABLE `datosmadre` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `DPI` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datospadre`
--

CREATE TABLE `datospadre` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `DPI` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_asig`
--

CREATE TABLE `detalle_asig` (
  `id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL,
  `Inscripcion_id` int(11) NOT NULL,
  `Seccion_id` int(11) NOT NULL,
  `Grado_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `encargado`
--

CREATE TABLE `encargado` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `DPI` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripcion`
--

CREATE TABLE `inscripcion` (
  `id` int(11) NOT NULL,
  `Fecha` varchar(45) DEFAULT NULL,
  `Responsable_inscripcion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nivel`
--

CREATE TABLE `nivel` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `id` int(11) NOT NULL,
  `Promedio_final` varchar(45) DEFAULT NULL,
  `Suma_bimestre` varchar(45) DEFAULT NULL,
  `Bimestre_id` int(11) NOT NULL,
  `Alumno_id` int(11) NOT NULL,
  `Curso_id` int(11) NOT NULL,
  `Profesor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE `profesor` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido` varchar(45) DEFAULT NULL,
  `DPI` varchar(45) DEFAULT NULL,
  `Direccion` varchar(45) DEFAULT NULL,
  `Nivel_academico` varchar(45) DEFAULT NULL,
  `Puesto` varchar(45) DEFAULT NULL,
  `Telefono` varchar(45) DEFAULT NULL,
  `direccion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id`, `Nombre`, `Apellido`, `DPI`, `Direccion`, `Nivel_academico`, `Puesto`, `Telefono`, `direccion_id`) VALUES
(1, 'Luis Fernando', 'Saldivar Leon', 'comunicacion', 'av. republica de chile 1002 wanchaq', 'superior', 'profesor', '985478785', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seccion`
--

CREATE TABLE `seccion` (
  `id` int(11) NOT NULL,
  `Prefijo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Alumno_Encargado1_idx` (`Encargado_id`),
  ADD KEY `fk_Alumno_Grado1_idx` (`Grado_id`),
  ADD KEY `fk_Alumno_admin1_idx` (`admin_id`),
  ADD KEY `fk_Alumno_DatosPadre1_idx` (`DatosPadre_id`),
  ADD KEY `fk_Alumno_DatosMadre1_idx` (`DatosMadre_id`);

--
-- Indices de la tabla `asg_profesor`
--
ALTER TABLE `asg_profesor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Profesor_has_Curso_Profesor1_idx` (`Profesor_id`),
  ADD KEY `fk_Asg_profesor_Curso1_idx` (`Curso_id`);

--
-- Indices de la tabla `bimestre`
--
ALTER TABLE `bimestre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_admin_Profesor1_idx` (`Profesor_id`);

--
-- Indices de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Grado_has_Curso_Curso1_idx` (`Curso_id`),
  ADD KEY `fk_Grado_has_Curso_Grado_idx` (`Grado_id`),
  ADD KEY `fk_Curriculum_Nivel1_idx` (`Nivel_id`);

--
-- Indices de la tabla `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datosmadre`
--
ALTER TABLE `datosmadre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `datospadre`
--
ALTER TABLE `datospadre`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_asig`
--
ALTER TABLE `detalle_asig`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Alumno_has_Inscripcion_Inscripcion1_idx` (`Inscripcion_id`),
  ADD KEY `fk_Alumno_has_Inscripcion_Alumno1_idx` (`Alumno_id`),
  ADD KEY `fk_Detalle_inscripcion_Seccion1_idx` (`Seccion_id`),
  ADD KEY `fk_Detalle_inscripcion_Grado1_idx` (`Grado_id`);

--
-- Indices de la tabla `encargado`
--
ALTER TABLE `encargado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Notas_Bimestre1_idx` (`Bimestre_id`),
  ADD KEY `fk_Notas_Alumno1_idx` (`Alumno_id`),
  ADD KEY `fk_Notas_Curso1_idx` (`Curso_id`),
  ADD KEY `fk_Notas_Profesor1_idx` (`Profesor_id`);

--
-- Indices de la tabla `profesor`
--
ALTER TABLE `profesor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumno`
--
ALTER TABLE `alumno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asg_profesor`
--
ALTER TABLE `asg_profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `bimestre`
--
ALTER TABLE `bimestre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curriculum`
--
ALTER TABLE `curriculum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `curso`
--
ALTER TABLE `curso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datosmadre`
--
ALTER TABLE `datosmadre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `datospadre`
--
ALTER TABLE `datospadre`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `detalle_asig`
--
ALTER TABLE `detalle_asig`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `encargado`
--
ALTER TABLE `encargado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inscripcion`
--
ALTER TABLE `inscripcion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `nivel`
--
ALTER TABLE `nivel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `profesor`
--
ALTER TABLE `profesor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `seccion`
--
ALTER TABLE `seccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `alumno`
--
ALTER TABLE `alumno`
  ADD CONSTRAINT `fk_Alumno_DatosMadre1` FOREIGN KEY (`DatosMadre_id`) REFERENCES `datosmadre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_DatosPadre1` FOREIGN KEY (`DatosPadre_id`) REFERENCES `datospadre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_Encargado1` FOREIGN KEY (`Encargado_id`) REFERENCES `encargado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_Grado1` FOREIGN KEY (`Grado_id`) REFERENCES `grado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_admin1` FOREIGN KEY (`admin_id`) REFERENCES `cuenta` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `asg_profesor`
--
ALTER TABLE `asg_profesor`
  ADD CONSTRAINT `fk_Asg_profesor_Curso1` FOREIGN KEY (`Curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Profesor_has_Curso_Profesor1` FOREIGN KEY (`Profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuenta`
--
ALTER TABLE `cuenta`
  ADD CONSTRAINT `fk_admin_Profesor1` FOREIGN KEY (`Profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `curriculum`
--
ALTER TABLE `curriculum`
  ADD CONSTRAINT `fk_Curriculum_Nivel1` FOREIGN KEY (`Nivel_id`) REFERENCES `nivel` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Grado_has_Curso_Curso1` FOREIGN KEY (`Curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Grado_has_Curso_Grado` FOREIGN KEY (`Grado_id`) REFERENCES `grado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `detalle_asig`
--
ALTER TABLE `detalle_asig`
  ADD CONSTRAINT `fk_Alumno_has_Inscripcion_Alumno1` FOREIGN KEY (`Alumno_id`) REFERENCES `alumno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Alumno_has_Inscripcion_Inscripcion1` FOREIGN KEY (`Inscripcion_id`) REFERENCES `inscripcion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle_inscripcion_Grado1` FOREIGN KEY (`Grado_id`) REFERENCES `grado` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Detalle_inscripcion_Seccion1` FOREIGN KEY (`Seccion_id`) REFERENCES `seccion` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_Notas_Alumno1` FOREIGN KEY (`Alumno_id`) REFERENCES `alumno` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Notas_Bimestre1` FOREIGN KEY (`Bimestre_id`) REFERENCES `bimestre` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Notas_Curso1` FOREIGN KEY (`Curso_id`) REFERENCES `curso` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Notas_Profesor1` FOREIGN KEY (`Profesor_id`) REFERENCES `profesor` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
