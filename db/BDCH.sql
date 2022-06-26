-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-05-2022 a las 00:29:23
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `BDCH`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `titulo` varchar(100) NOT NULL,
  `page` varchar(60) NOT NULL DEFAULT '#',
  `descripcion` varchar(255) NOT NULL,
  `icono` varchar(70) NOT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pages`
--

INSERT INTO `pages` (`id`, `menu_id`, `titulo`, `page`, `descripcion`, `icono`, `activo`, `creado`, `actualizado`) VALUES
(1, NULL, 'Dashboard', 'dashboard', '', 'fa fa-dashboard', 1, '2022-04-19 23:20:11', '2022-04-19 17:21:35'),
(2, NULL, 'Archivos maestros', '#', '', 'fa-solid fa-book', 1, '2022-04-19 23:20:11', '2022-04-19 17:21:35'),
(3, NULL, 'Usuarios', 'users', '', 'fa-solid fa-users', 1, '2022-04-19 23:20:11', '2022-04-19 17:21:35'),
(4, NULL, 'Roles', 'roles', '', 'fa-solid fa-user-gear', 1, '2022-04-19 23:20:11', '2022-04-19 17:21:35'),
(9, 2, 'Pacientes', 'pacientes', '', '', 1, '2022-05-07 02:27:04', '2022-05-06 20:27:25'),
(10, 2, 'Medicos', 'medicos', '', '', 1, '2022-05-07 02:48:05', '2022-05-06 20:50:59'),
(11, 2, 'Vacunas', 'vacunas', '', '', 1, '2022-05-07 02:48:05', '2022-05-06 20:50:59'),
(13, 2, 'Especialidades', 'especialidades', '', '', 1, '2022-05-07 02:48:05', '2022-05-06 20:50:59');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

CREATE TABLE `permisos` (
  `id` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_page` int(11) NOT NULL,
  `c` int(11) NOT NULL DEFAULT 0,
  `r` int(11) NOT NULL DEFAULT 0,
  `u` int(11) NOT NULL DEFAULT 0,
  `d` int(11) NOT NULL DEFAULT 0,
  `creado` datetime NOT NULL,
  `actualizado` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`id`, `id_rol`, `id_page`, `c`, `r`, `u`, `d`, `creado`, `actualizado`) VALUES
(1, 1, 1, 1, 1, 1, 1, '2022-04-30 20:18:15', '2022-04-30 14:18:25'),
(2, 1, 2, 1, 1, 1, 1, '2022-04-30 20:18:15', '2022-04-30 14:18:25'),
(3, 1, 4, 1, 1, 1, 1, '2022-05-01 16:10:24', '2022-05-01 10:10:56'),
(4, 1, 3, 1, 1, 1, 1, '2022-05-01 04:26:24', '2022-04-30 22:26:41'),
(5, 2, 1, 0, 0, 0, 0, '2022-05-01 16:11:58', '2022-05-01 10:13:24'),
(6, 2, 2, 0, 1, 1, 0, '2022-05-01 16:11:58', '2022-05-01 10:13:24'),
(7, 2, 3, 0, 0, 0, 0, '2022-05-01 16:11:58', '2022-05-01 10:13:24'),
(8, 2, 4, 0, 0, 0, 0, '2022-05-01 16:11:58', '2022-05-01 10:13:24'),
(9, 3, 1, 1, 1, 1, 1, '2022-05-01 19:16:19', '2022-05-01 13:17:19'),
(10, 3, 2, 0, 0, 0, 0, '2022-05-01 19:16:19', '2022-05-01 13:17:19'),
(11, 3, 3, 0, 0, 0, 0, '2022-05-01 19:16:19', '2022-05-01 13:17:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`, `descripcion`, `status`) VALUES
(1, 'Administrador', '', 1),
(2, 'Secretari@', '', 1),
(3, 'website', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_CAM`
--

CREATE TABLE `TMBCH_CAM` (
  `TMCAM_NC` int(11) NOT NULL,
  `TMCTO_NC` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_CTO`
--

CREATE TABLE `TMBCH_CTO` (
  `TMCTO_NC` int(11) NOT NULL,
  `TMPIS_NP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_DME`
--

CREATE TABLE `TMBCH_DME` (
  `TMDIR_DE` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMMED_CI` int(11) DEFAULT NULL,
  `TMMUN_CM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_EDO`
--

CREATE TABLE `TMBCH_EDO` (
  `TMEDO_CE` int(11) NOT NULL,
  `TMEDO_NO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_EDO`
--

INSERT INTO `TMBCH_EDO` (`TMEDO_CE`, `TMEDO_NO`) VALUES
(1, 'Amazonas'),
(2, 'Anzoátegui'),
(3, 'Apure'),
(4, 'Aragua'),
(5, 'Barinas'),
(6, 'Bolívar'),
(7, 'Carabobo'),
(8, 'Cojedes'),
(9, 'Delta Amacuro'),
(10, 'Distrito Capital	'),
(11, 'Falcón'),
(12, 'Guárico'),
(13, 'Lara'),
(14, 'Mérida'),
(15, 'Miranda'),
(16, 'Monagas'),
(17, 'Nueva Esparta'),
(18, 'Portuguesa'),
(19, 'Sucre'),
(20, 'Táchira'),
(21, 'Trujillo'),
(22, 'Vargas'),
(23, 'Yaracuy'),
(24, 'Zulia'),
(27, 'Arauca');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_ESP`
--

CREATE TABLE `TMBCH_ESP` (
  `TMESP_ID` int(11) NOT NULL,
  `TMESP_CE` varchar(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMESP_NO` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMESP_DE` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_ESP`
--

INSERT INTO `TMBCH_ESP` (`TMESP_ID`, `TMESP_CE`, `TMESP_NO`, `TMESP_DE`) VALUES
(1, 'HRR-MG1', 'Medico general', 'profesional de la medicina que cuenta con los conocimientos y las destrezas necesarias para diagnosticar y resolver con tratamiento medico'),
(5, 'HRR-MG2', 'Cardiologo', 'Revisa el corazao'),
(6, 'HRR-DFS', 'Oftamologo', 'Revista vista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_MED`
--

CREATE TABLE `TMBCH_MED` (
  `TMMED_MID` int(11) NOT NULL,
  `TMMED_CI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMMUN_CM` int(11) NOT NULL,
  `TMMED_DIR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMMED_AP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMMED_NO` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMMED_TF` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMESP_CE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_MED`
--

INSERT INTO `TMBCH_MED` (`TMMED_MID`, `TMMED_CI`, `TMMUN_CM`, `TMMED_DIR`, `TMMED_AP`, `TMMED_NO`, `TMMED_TF`, `TMESP_CE`) VALUES
(1, 'V-27394396', 6, 'Centro, carrera 8, entre calles 9 y 10', 'Saavedra', 'kevin', '04165026559', 1),
(3, 'V-27364259', 2, 'Centro diagonal a al iglesia coromoto', 'Carmona', 'Maria Evita', '4265740027', 1),
(5, 'V-24589985', 6, 'Barrio obrero', 'Zambrano Prereira', 'Camila', '04165895214', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_MUN`
--

CREATE TABLE `TMBCH_MUN` (
  `TMMUN_CM` int(11) NOT NULL,
  `TMMUN_NO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMEDO_CE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_MUN`
--

INSERT INTO `TMBCH_MUN` (`TMMUN_CM`, `TMMUN_NO`, `TMEDO_CE`) VALUES
(2, 'Andrés Bello', 20),
(3, 'Antonio Rómulo Costa', 20),
(4, 'Ayacucho', 20),
(5, 'Bolívar', 20),
(6, 'San Cristóbal', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_PAC`
--

CREATE TABLE `TMBCH_PAC` (
  `TMPAC_PID` int(11) NOT NULL,
  `TMPAC_CI` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMMUN_CM` int(11) NOT NULL,
  `TMPAC_NO` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPAC_AP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPAC_SX` enum('m','f') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPAC_DIR` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPAC_FN` date NOT NULL,
  `TMPAC_TF` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_PAC`
--

INSERT INTO `TMBCH_PAC` (`TMPAC_PID`, `TMPAC_CI`, `TMMUN_CM`, `TMPAC_NO`, `TMPAC_AP`, `TMPAC_SX`, `TMPAC_DIR`, `TMPAC_FN`, `TMPAC_TF`) VALUES
(1, 'V-24589985', 4, 'Luis Alfonso', 'Zambrano Prereira', 'm', 'Centro diagonal a al iglesia coromoto', '2000-07-13', '04165026559'),
(2, 'V-24896666', 6, 'Maria Antonieta', 'Sanchez', 'f', 'Capacho', '1998-04-17', '04248963333'),
(5, 'V-27364259', 4, 'Camila ', 'Becerra', 'f', 'Barrio obrero', '2004-04-22', '04248965545'),
(7, 'V-27394396', 2, 'Kevin Leonardo', 'Saavedra Carmona', 'm', 'Avenida principal', '2000-07-13', '04165026559'),
(10, 'V-9150202', 5, 'Maria Evita', 'Carmona', 'f', 'Centro, carrera 8, entre calles 9 y 10', '1966-06-15', '4265740027'),
(35, 'V-27456789', 6, 'John', 'Becerra', 'm', 'Barrio obrero', '1997-06-26', '04165026559');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_PAI`
--

CREATE TABLE `TMBCH_PAI` (
  `TMPAI_CP` int(11) NOT NULL,
  `TMPAI_NO` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_PAI`
--

INSERT INTO `TMBCH_PAI` (`TMPAI_CP`, `TMPAI_NO`) VALUES
(1, 'VENEZUELA'),
(2, 'COLOMBIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_PEC`
--

CREATE TABLE `TMBCH_PEC` (
  `TMPEC_CI` int(11) NOT NULL,
  `TMPEC_AP` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPEC_NO` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPEC_PT` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMPEC_TF` varchar(12) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_PIS`
--

CREATE TABLE `TMBCH_PIS` (
  `TMPIS_NP` int(11) NOT NULL,
  `TMARE_CA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_VAE`
--

CREATE TABLE `TMBCH_VAE` (
  `TMVAE_CV` int(11) NOT NULL,
  `TMVAE_NO` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMVAE_DE` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMVAE_FE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_VAE`
--

INSERT INTO `TMBCH_VAE` (`TMVAE_CV`, `TMVAE_NO`, `TMVAE_DE`, `TMVAE_FE`) VALUES
(41, 'Sputnik', 'Vacuna de origen ruso, se requieren 2 dosis.', '2021-08-20'),
(42, 'Moderna', 'Hecha por moderna, requiere 3 dosis', '2019-02-19'),
(44, 'Jhonson&amp;Jhonson', 'Elaborada por J&J, cantidad de dosis 1', '2021-06-16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TTBCH_CBK`
--

CREATE TABLE `TTBCH_CBK` (
  `TTCON_CC` int(11) NOT NULL,
  `TTCON_FE` date NOT NULL,
  `TTCON_HR` time NOT NULL,
  `TTCON_PC` enum('positivo','negativo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TTCON_TP` float NOT NULL,
  `TTCON_PE` float NOT NULL,
  `TTCON_SI` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TTCON-DI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TTCON_TM` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMPAC_CI` int(11) NOT NULL,
  `TMMED_CI` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TTBCH_CON`
--

CREATE TABLE `TTBCH_CON` (
  `TTCON_CC` int(11) NOT NULL,
  `TTCON_FE` date NOT NULL,
  `TTCON_HR` time NOT NULL,
  `TTCON-PC` enum('positivo','negativo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `TTCON_TP` float NOT NULL,
  `TTCON_PE` float NOT NULL,
  `TTCON_SI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TTCON_DI` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TTCON_TM` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `TMPAC_CCI` int(11) DEFAULT NULL,
  `TMMED_CCI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TTBCH_DIR`
--

CREATE TABLE `TTBCH_DIR` (
  `TTDIR_CD` int(11) NOT NULL,
  `TTDIR_DE` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMMUN_CM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TTBCH_HOS`
--

CREATE TABLE `TTBCH_HOS` (
  `TTHOS_HC` time NOT NULL,
  `TTHOS_FE` date NOT NULL,
  `TTHOS_TA` int(11) NOT NULL,
  `TTHOS-TP` float NOT NULL,
  `TTHOS_OX` int(11) NOT NULL,
  `TTHOS_OB` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TTCON_CC` int(11) DEFAULT NULL,
  `TMMED_CI` int(11) DEFAULT NULL,
  `TMCAM_NC` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TTBCH_VAP`
--

CREATE TABLE `TTBCH_VAP` (
  `TTVAP_FA` date NOT NULL,
  `TTVAP_ND` int(11) DEFAULT NULL,
  `TMVAE_CV` int(11) DEFAULT NULL,
  `TMPAC_ACI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `Id_rol` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `Id_rol`, `nombre`, `email`, `telefono`, `password`) VALUES
(11, 1, 'kevin', 'kevinsaavedra55@gmail.com', '04165026559', '9a76db68a30bebc9d0b74caff652000fb2aa9ea301f915388efb590035ab6404'),
(12, 2, 'Maria Evita', 'mariaevita06@gmail.com', '04265740027', '5260b47cf81aa8cf442431536dd516f05254d2be64e6037dd99c67c93e008c16'),
(13, 3, 'Oriany', 'oriany9570@gmail.com', '04265702722', 'a61d357b8275d2c738f9aa7c58e79316c8d82edc18044c09698ebbfaae5ac5e9');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_submenu` (`menu_id`);

--
-- Indices de la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_rol` (`id_rol`),
  ADD KEY `id_modulo` (`id_page`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `TMBCH_CAM`
--
ALTER TABLE `TMBCH_CAM`
  ADD PRIMARY KEY (`TMCAM_NC`),
  ADD KEY `TMCTO-NC_idx` (`TMCTO_NC`);

--
-- Indices de la tabla `TMBCH_CTO`
--
ALTER TABLE `TMBCH_CTO`
  ADD PRIMARY KEY (`TMCTO_NC`),
  ADD KEY `TMPIS-NP_idx` (`TMPIS_NP`);

--
-- Indices de la tabla `TMBCH_DME`
--
ALTER TABLE `TMBCH_DME`
  ADD KEY `TMMED-CI_idx` (`TMMED_CI`),
  ADD KEY `TMMUN-CM_idx` (`TMMUN_CM`);

--
-- Indices de la tabla `TMBCH_EDO`
--
ALTER TABLE `TMBCH_EDO`
  ADD PRIMARY KEY (`TMEDO_CE`);

--
-- Indices de la tabla `TMBCH_ESP`
--
ALTER TABLE `TMBCH_ESP`
  ADD PRIMARY KEY (`TMESP_ID`),
  ADD UNIQUE KEY `TMESP_CC` (`TMESP_CE`);

--
-- Indices de la tabla `TMBCH_MED`
--
ALTER TABLE `TMBCH_MED`
  ADD PRIMARY KEY (`TMMED_MID`),
  ADD UNIQUE KEY `TMMED_IC` (`TMMED_CI`),
  ADD UNIQUE KEY `TMMED_CI` (`TMMED_CI`),
  ADD UNIQUE KEY `TMMED_CI_2` (`TMMED_CI`),
  ADD KEY `TMESP-CE_idx` (`TMESP_CE`),
  ADD KEY `TMMUN-CM` (`TMMUN_CM`);

--
-- Indices de la tabla `TMBCH_MUN`
--
ALTER TABLE `TMBCH_MUN`
  ADD PRIMARY KEY (`TMMUN_CM`),
  ADD KEY `TMEDO-CE_idx` (`TMEDO_CE`);

--
-- Indices de la tabla `TMBCH_PAC`
--
ALTER TABLE `TMBCH_PAC`
  ADD PRIMARY KEY (`TMPAC_PID`),
  ADD UNIQUE KEY `TMPAC_CI` (`TMPAC_CI`),
  ADD UNIQUE KEY `TMPAC_CI_2` (`TMPAC_CI`),
  ADD KEY `TMMUN-CM` (`TMMUN_CM`);

--
-- Indices de la tabla `TMBCH_PAI`
--
ALTER TABLE `TMBCH_PAI`
  ADD PRIMARY KEY (`TMPAI_CP`);

--
-- Indices de la tabla `TMBCH_PEC`
--
ALTER TABLE `TMBCH_PEC`
  ADD PRIMARY KEY (`TMPEC_CI`);

--
-- Indices de la tabla `TMBCH_PIS`
--
ALTER TABLE `TMBCH_PIS`
  ADD PRIMARY KEY (`TMPIS_NP`),
  ADD KEY `TMARE-CA_idx` (`TMARE_CA`);

--
-- Indices de la tabla `TMBCH_VAE`
--
ALTER TABLE `TMBCH_VAE`
  ADD PRIMARY KEY (`TMVAE_CV`);

--
-- Indices de la tabla `TTBCH_CBK`
--
ALTER TABLE `TTBCH_CBK`
  ADD PRIMARY KEY (`TTCON_CC`),
  ADD KEY `TMPAC_CI` (`TMPAC_CI`);

--
-- Indices de la tabla `TTBCH_CON`
--
ALTER TABLE `TTBCH_CON`
  ADD PRIMARY KEY (`TTCON_CC`),
  ADD KEY `TMPAC-CI_idx` (`TMPAC_CCI`),
  ADD KEY `TMMED-CCI_idx` (`TMMED_CCI`);

--
-- Indices de la tabla `TTBCH_DIR`
--
ALTER TABLE `TTBCH_DIR`
  ADD PRIMARY KEY (`TTDIR_CD`),
  ADD KEY `TMMUN-CM_idx` (`TMMUN_CM`);

--
-- Indices de la tabla `TTBCH_HOS`
--
ALTER TABLE `TTBCH_HOS`
  ADD KEY `TMMED-HCI_idx` (`TMMED_CI`),
  ADD KEY `TMCAM-NC_idx` (`TMCAM_NC`),
  ADD KEY `TTCON-CC_idx` (`TTCON_CC`);

--
-- Indices de la tabla `TTBCH_VAP`
--
ALTER TABLE `TTBCH_VAP`
  ADD KEY `TMVAE-CV_idx` (`TMVAE_CV`),
  ADD KEY `TMPAC-CI_idx` (`TMPAC_ACI`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD KEY `Id_rol` (`Id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `TMBCH_CAM`
--
ALTER TABLE `TMBCH_CAM`
  MODIFY `TMCAM_NC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TMBCH_CTO`
--
ALTER TABLE `TMBCH_CTO`
  MODIFY `TMCTO_NC` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TMBCH_EDO`
--
ALTER TABLE `TMBCH_EDO`
  MODIFY `TMEDO_CE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `TMBCH_ESP`
--
ALTER TABLE `TMBCH_ESP`
  MODIFY `TMESP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TMBCH_MED`
--
ALTER TABLE `TMBCH_MED`
  MODIFY `TMMED_MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `TMBCH_MUN`
--
ALTER TABLE `TMBCH_MUN`
  MODIFY `TMMUN_CM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TMBCH_PAC`
--
ALTER TABLE `TMBCH_PAC`
  MODIFY `TMPAC_PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `TMBCH_PAI`
--
ALTER TABLE `TMBCH_PAI`
  MODIFY `TMPAI_CP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `TMBCH_PIS`
--
ALTER TABLE `TMBCH_PIS`
  MODIFY `TMPIS_NP` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `TMBCH_VAE`
--
ALTER TABLE `TMBCH_VAE`
  MODIFY `TMVAE_CV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `TTBCH_CON`
--
ALTER TABLE `TTBCH_CON`
  MODIFY `TTCON_CC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `TTBCH_DIR`
--
ALTER TABLE `TTBCH_DIR`
  MODIFY `TTDIR_CD` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_ibfk_1` FOREIGN KEY (`menu_id`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `permisos_ibfk_3` FOREIGN KEY (`id_page`) REFERENCES `pages` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_MED`
--
ALTER TABLE `TMBCH_MED`
  ADD CONSTRAINT `TMBCH_MED_ibfk_1` FOREIGN KEY (`TMMUN_CM`) REFERENCES `TMBCH_MUN` (`TMMUN_CM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TMBCH_MED_ibfk_2` FOREIGN KEY (`TMESP_CE`) REFERENCES `TMBCH_ESP` (`TMESP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_MUN`
--
ALTER TABLE `TMBCH_MUN`
  ADD CONSTRAINT `TMBCH_MUN_ibfk_1` FOREIGN KEY (`TMEDO_CE`) REFERENCES `TMBCH_EDO` (`TMEDO_CE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_PAC`
--
ALTER TABLE `TMBCH_PAC`
  ADD CONSTRAINT `TMBCH_PAC_ibfk_1` FOREIGN KEY (`TMMUN_CM`) REFERENCES `TMBCH_MUN` (`TMMUN_CM`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TTBCH_CBK`
--
ALTER TABLE `TTBCH_CBK`
  ADD CONSTRAINT `TTBCH_CBK_ibfk_1` FOREIGN KEY (`TTCON_CC`) REFERENCES `TTBCH_CON` (`TTCON_CC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
