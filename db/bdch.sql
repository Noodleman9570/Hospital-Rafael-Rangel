-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 28-06-2022 a las 17:46:30
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
-- Base de datos: `bdch`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `id_ciudad` int(11) NOT NULL,
  `id_estado` int(11) NOT NULL,
  `ciudad` varchar(200) NOT NULL,
  `capital` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`id_ciudad`, `id_estado`, `ciudad`, `capital`) VALUES
(1, 1, 'Maroa', 0),
(2, 1, 'Puerto Ayacucho', 1),
(3, 1, 'San Fernando de Atabapo', 0),
(4, 2, 'Anaco', 0),
(5, 2, 'Aragua de Barcelona', 0),
(6, 2, 'Barcelona', 1),
(7, 2, 'Boca de Uchire', 0),
(8, 2, 'Cantaura', 0),
(9, 2, 'Clarines', 0),
(10, 2, 'El Chaparro', 0),
(11, 2, 'El Pao Anzoátegui', 0),
(12, 2, 'El Tigre', 0),
(13, 2, 'El Tigrito', 0),
(14, 2, 'Guanape', 0),
(15, 2, 'Guanta', 0),
(16, 2, 'Lechería', 0),
(17, 2, 'Onoto', 0),
(18, 2, 'Pariaguán', 0),
(19, 2, 'Píritu', 0),
(20, 2, 'Puerto La Cruz', 0),
(21, 2, 'Puerto Píritu', 0),
(22, 2, 'Sabana de Uchire', 0),
(23, 2, 'San Mateo Anzoátegui', 0),
(24, 2, 'San Pablo Anzoátegui', 0),
(25, 2, 'San Tomé', 0),
(26, 2, 'Santa Ana de Anzoátegui', 0),
(27, 2, 'Santa Fe Anzoátegui', 0),
(28, 2, 'Santa Rosa', 0),
(29, 2, 'Soledad', 0),
(30, 2, 'Urica', 0),
(31, 2, 'Valle de Guanape', 0),
(43, 3, 'Achaguas', 0),
(44, 3, 'Biruaca', 0),
(45, 3, 'Bruzual', 0),
(46, 3, 'El Amparo', 0),
(47, 3, 'El Nula', 0),
(48, 3, 'Elorza', 0),
(49, 3, 'Guasdualito', 0),
(50, 3, 'Mantecal', 0),
(51, 3, 'Puerto Páez', 0),
(52, 3, 'San Fernando de Apure', 1),
(53, 3, 'San Juan de Payara', 0),
(54, 4, 'Barbacoas', 0),
(55, 4, 'Cagua', 0),
(56, 4, 'Camatagua', 0),
(58, 4, 'Choroní', 0),
(59, 4, 'Colonia Tovar', 0),
(60, 4, 'El Consejo', 0),
(61, 4, 'La Victoria', 0),
(62, 4, 'Las Tejerías', 0),
(63, 4, 'Magdaleno', 0),
(64, 4, 'Maracay', 1),
(65, 4, 'Ocumare de La Costa', 0),
(66, 4, 'Palo Negro', 0),
(67, 4, 'San Casimiro', 0),
(68, 4, 'San Mateo', 0),
(69, 4, 'San Sebastián', 0),
(70, 4, 'Santa Cruz de Aragua', 0),
(71, 4, 'Tocorón', 0),
(72, 4, 'Turmero', 0),
(73, 4, 'Villa de Cura', 0),
(74, 4, 'Zuata', 0),
(75, 5, 'Barinas', 1),
(76, 5, 'Barinitas', 0),
(77, 5, 'Barrancas', 0),
(78, 5, 'Calderas', 0),
(79, 5, 'Capitanejo', 0),
(80, 5, 'Ciudad Bolivia', 0),
(81, 5, 'El Cantón', 0),
(82, 5, 'Las Veguitas', 0),
(83, 5, 'Libertad de Barinas', 0),
(84, 5, 'Sabaneta', 0),
(85, 5, 'Santa Bárbara de Barinas', 0),
(86, 5, 'Socopó', 0),
(87, 6, 'Caicara del Orinoco', 0),
(88, 6, 'Canaima', 0),
(89, 6, 'Ciudad Bolívar', 1),
(90, 6, 'Ciudad Piar', 0),
(91, 6, 'El Callao', 0),
(92, 6, 'El Dorado', 0),
(93, 6, 'El Manteco', 0),
(94, 6, 'El Palmar', 0),
(95, 6, 'El Pao', 0),
(96, 6, 'Guasipati', 0),
(97, 6, 'Guri', 0),
(98, 6, 'La Paragua', 0),
(99, 6, 'Matanzas', 0),
(100, 6, 'Puerto Ordaz', 0),
(101, 6, 'San Félix', 0),
(102, 6, 'Santa Elena de Uairén', 0),
(103, 6, 'Tumeremo', 0),
(104, 6, 'Unare', 0),
(105, 6, 'Upata', 0),
(106, 7, 'Bejuma', 0),
(107, 7, 'Belén', 0),
(108, 7, 'Campo de Carabobo', 0),
(109, 7, 'Canoabo', 0),
(110, 7, 'Central Tacarigua', 0),
(111, 7, 'Chirgua', 0),
(112, 7, 'Ciudad Alianza', 0),
(113, 7, 'El Palito', 0),
(114, 7, 'Guacara', 0),
(115, 7, 'Guigue', 0),
(116, 7, 'Las Trincheras', 0),
(117, 7, 'Los Guayos', 0),
(118, 7, 'Mariara', 0),
(119, 7, 'Miranda', 0),
(120, 7, 'Montalbán', 0),
(121, 7, 'Morón', 0),
(122, 7, 'Naguanagua', 0),
(123, 7, 'Puerto Cabello', 0),
(124, 7, 'San Joaquín', 0),
(125, 7, 'Tocuyito', 0),
(126, 7, 'Urama', 0),
(127, 7, 'Valencia', 1),
(128, 7, 'Vigirimita', 0),
(129, 8, 'Aguirre', 0),
(130, 8, 'Apartaderos Cojedes', 0),
(131, 8, 'Arismendi', 0),
(132, 8, 'Camuriquito', 0),
(133, 8, 'El Baúl', 0),
(134, 8, 'El Limón', 0),
(135, 8, 'El Pao Cojedes', 0),
(136, 8, 'El Socorro', 0),
(137, 8, 'La Aguadita', 0),
(138, 8, 'Las Vegas', 0),
(139, 8, 'Libertad de Cojedes', 0),
(140, 8, 'Mapuey', 0),
(141, 8, 'Piñedo', 0),
(142, 8, 'Samancito', 0),
(143, 8, 'San Carlos', 1),
(144, 8, 'Sucre', 0),
(145, 8, 'Tinaco', 0),
(146, 8, 'Tinaquillo', 0),
(147, 8, 'Vallecito', 0),
(148, 9, 'Tucupita', 1),
(149, 24, 'Caracas', 1),
(150, 24, 'El Junquito', 0),
(151, 10, 'Adícora', 0),
(152, 10, 'Boca de Aroa', 0),
(153, 10, 'Cabure', 0),
(154, 10, 'Capadare', 0),
(155, 10, 'Capatárida', 0),
(156, 10, 'Chichiriviche', 0),
(157, 10, 'Churuguara', 0),
(158, 10, 'Coro', 1),
(159, 10, 'Cumarebo', 0),
(160, 10, 'Dabajuro', 0),
(161, 10, 'Judibana', 0),
(162, 10, 'La Cruz de Taratara', 0),
(163, 10, 'La Vela de Coro', 0),
(164, 10, 'Los Taques', 0),
(165, 10, 'Maparari', 0),
(166, 10, 'Mene de Mauroa', 0),
(167, 10, 'Mirimire', 0),
(168, 10, 'Pedregal', 0),
(169, 10, 'Píritu Falcón', 0),
(170, 10, 'Pueblo Nuevo Falcón', 0),
(171, 10, 'Puerto Cumarebo', 0),
(172, 10, 'Punta Cardón', 0),
(173, 10, 'Punto Fijo', 0),
(174, 10, 'San Juan de Los Cayos', 0),
(175, 10, 'San Luis', 0),
(176, 10, 'Santa Ana Falcón', 0),
(177, 10, 'Santa Cruz De Bucaral', 0),
(178, 10, 'Tocopero', 0),
(179, 10, 'Tocuyo de La Costa', 0),
(180, 10, 'Tucacas', 0),
(181, 10, 'Yaracal', 0),
(182, 11, 'Altagracia de Orituco', 0),
(183, 11, 'Cabruta', 0),
(184, 11, 'Calabozo', 0),
(185, 11, 'Camaguán', 0),
(196, 11, 'Chaguaramas Guárico', 0),
(197, 11, 'El Socorro', 0),
(198, 11, 'El Sombrero', 0),
(199, 11, 'Las Mercedes de Los Llanos', 0),
(200, 11, 'Lezama', 0),
(201, 11, 'Onoto', 0),
(202, 11, 'Ortíz', 0),
(203, 11, 'San José de Guaribe', 0),
(204, 11, 'San Juan de Los Morros', 1),
(205, 11, 'San Rafael de Laya', 0),
(206, 11, 'Santa María de Ipire', 0),
(207, 11, 'Tucupido', 0),
(208, 11, 'Valle de La Pascua', 0),
(209, 11, 'Zaraza', 0),
(210, 12, 'Aguada Grande', 0),
(211, 12, 'Atarigua', 0),
(212, 12, 'Barquisimeto', 1),
(213, 12, 'Bobare', 0),
(214, 12, 'Cabudare', 0),
(215, 12, 'Carora', 0),
(216, 12, 'Cubiro', 0),
(217, 12, 'Cují', 0),
(218, 12, 'Duaca', 0),
(219, 12, 'El Manzano', 0),
(220, 12, 'El Tocuyo', 0),
(221, 12, 'Guaríco', 0),
(222, 12, 'Humocaro Alto', 0),
(223, 12, 'Humocaro Bajo', 0),
(224, 12, 'La Miel', 0),
(225, 12, 'Moroturo', 0),
(226, 12, 'Quíbor', 0),
(227, 12, 'Río Claro', 0),
(228, 12, 'Sanare', 0),
(229, 12, 'Santa Inés', 0),
(230, 12, 'Sarare', 0),
(231, 12, 'Siquisique', 0),
(232, 12, 'Tintorero', 0),
(233, 13, 'Apartaderos Mérida', 0),
(234, 13, 'Arapuey', 0),
(235, 13, 'Bailadores', 0),
(236, 13, 'Caja Seca', 0),
(237, 13, 'Canaguá', 0),
(238, 13, 'Chachopo', 0),
(239, 13, 'Chiguara', 0),
(240, 13, 'Ejido', 0),
(241, 13, 'El Vigía', 0),
(242, 13, 'La Azulita', 0),
(243, 13, 'La Playa', 0),
(244, 13, 'Lagunillas Mérida', 0),
(245, 13, 'Mérida', 1),
(246, 13, 'Mesa de Bolívar', 0),
(247, 13, 'Mucuchíes', 0),
(248, 13, 'Mucujepe', 0),
(249, 13, 'Mucuruba', 0),
(250, 13, 'Nueva Bolivia', 0),
(251, 13, 'Palmarito', 0),
(252, 13, 'Pueblo Llano', 0),
(253, 13, 'Santa Cruz de Mora', 0),
(254, 13, 'Santa Elena de Arenales', 0),
(255, 13, 'Santo Domingo', 0),
(256, 13, 'Tabáy', 0),
(257, 13, 'Timotes', 0),
(258, 13, 'Torondoy', 0),
(259, 13, 'Tovar', 0),
(260, 13, 'Tucani', 0),
(261, 13, 'Zea', 0),
(262, 14, 'Araguita', 0),
(263, 14, 'Carrizal', 0),
(264, 14, 'Caucagua', 0),
(265, 14, 'Chaguaramas Miranda', 0),
(266, 14, 'Charallave', 0),
(267, 14, 'Chirimena', 0),
(268, 14, 'Chuspa', 0),
(269, 14, 'Cúa', 0),
(270, 14, 'Cupira', 0),
(271, 14, 'Curiepe', 0),
(272, 14, 'El Guapo', 0),
(273, 14, 'El Jarillo', 0),
(274, 14, 'Filas de Mariche', 0),
(275, 14, 'Guarenas', 0),
(276, 14, 'Guatire', 0),
(277, 14, 'Higuerote', 0),
(278, 14, 'Los Anaucos', 0),
(279, 14, 'Los Teques', 1),
(280, 14, 'Ocumare del Tuy', 0),
(281, 14, 'Panaquire', 0),
(282, 14, 'Paracotos', 0),
(283, 14, 'Río Chico', 0),
(284, 14, 'San Antonio de Los Altos', 0),
(285, 14, 'San Diego de Los Altos', 0),
(286, 14, 'San Fernando del Guapo', 0),
(287, 14, 'San Francisco de Yare', 0),
(288, 14, 'San José de Los Altos', 0),
(289, 14, 'San José de Río Chico', 0),
(290, 14, 'San Pedro de Los Altos', 0),
(291, 14, 'Santa Lucía', 0),
(292, 14, 'Santa Teresa', 0),
(293, 14, 'Tacarigua de La Laguna', 0),
(294, 14, 'Tacarigua de Mamporal', 0),
(295, 14, 'Tácata', 0),
(296, 14, 'Turumo', 0),
(297, 15, 'Aguasay', 0),
(298, 15, 'Aragua de Maturín', 0),
(299, 15, 'Barrancas del Orinoco', 0),
(300, 15, 'Caicara de Maturín', 0),
(301, 15, 'Caripe', 0),
(302, 15, 'Caripito', 0),
(303, 15, 'Chaguaramal', 0),
(305, 15, 'Chaguaramas Monagas', 0),
(307, 15, 'El Furrial', 0),
(308, 15, 'El Tejero', 0),
(309, 15, 'Jusepín', 0),
(310, 15, 'La Toscana', 0),
(311, 15, 'Maturín', 1),
(312, 15, 'Miraflores', 0),
(313, 15, 'Punta de Mata', 0),
(314, 15, 'Quiriquire', 0),
(315, 15, 'San Antonio de Maturín', 0),
(316, 15, 'San Vicente Monagas', 0),
(317, 15, 'Santa Bárbara', 0),
(318, 15, 'Temblador', 0),
(319, 15, 'Teresen', 0),
(320, 15, 'Uracoa', 0),
(321, 16, 'Altagracia', 0),
(322, 16, 'Boca de Pozo', 0),
(323, 16, 'Boca de Río', 0),
(324, 16, 'El Espinal', 0),
(325, 16, 'El Valle del Espíritu Santo', 0),
(326, 16, 'El Yaque', 0),
(327, 16, 'Juangriego', 0),
(328, 16, 'La Asunción', 1),
(329, 16, 'La Guardia', 0),
(330, 16, 'Pampatar', 0),
(331, 16, 'Porlamar', 0),
(332, 16, 'Puerto Fermín', 0),
(333, 16, 'Punta de Piedras', 0),
(334, 16, 'San Francisco de Macanao', 0),
(335, 16, 'San Juan Bautista', 0),
(336, 16, 'San Pedro de Coche', 0),
(337, 16, 'Santa Ana de Nueva Esparta', 0),
(338, 16, 'Villa Rosa', 0),
(339, 17, 'Acarigua', 0),
(340, 17, 'Agua Blanca', 0),
(341, 17, 'Araure', 0),
(342, 17, 'Biscucuy', 0),
(343, 17, 'Boconoito', 0),
(344, 17, 'Campo Elías', 0),
(345, 17, 'Chabasquén', 0),
(346, 17, 'Guanare', 1),
(347, 17, 'Guanarito', 0),
(348, 17, 'La Aparición', 0),
(349, 17, 'La Misión', 0),
(350, 17, 'Mesa de Cavacas', 0),
(351, 17, 'Ospino', 0),
(352, 17, 'Papelón', 0),
(353, 17, 'Payara', 0),
(354, 17, 'Pimpinela', 0),
(355, 17, 'Píritu de Portuguesa', 0),
(356, 17, 'San Rafael de Onoto', 0),
(357, 17, 'Santa Rosalía', 0),
(358, 17, 'Turén', 0),
(359, 18, 'Altos de Sucre', 0),
(360, 18, 'Araya', 0),
(361, 18, 'Cariaco', 0),
(362, 18, 'Carúpano', 0),
(363, 18, 'Casanay', 0),
(364, 18, 'Cumaná', 1),
(365, 18, 'Cumanacoa', 0),
(366, 18, 'El Morro Puerto Santo', 0),
(367, 18, 'El Pilar', 0),
(368, 18, 'El Poblado', 0),
(369, 18, 'Guaca', 0),
(370, 18, 'Guiria', 0),
(371, 18, 'Irapa', 0),
(372, 18, 'Manicuare', 0),
(373, 18, 'Mariguitar', 0),
(374, 18, 'Río Caribe', 0),
(375, 18, 'San Antonio del Golfo', 0),
(376, 18, 'San José de Aerocuar', 0),
(377, 18, 'San Vicente de Sucre', 0),
(378, 18, 'Santa Fe de Sucre', 0),
(379, 18, 'Tunapuy', 0),
(380, 18, 'Yaguaraparo', 0),
(381, 18, 'Yoco', 0),
(382, 19, 'Abejales', 0),
(383, 19, 'Borota', 0),
(384, 19, 'Bramon', 0),
(385, 19, 'Capacho', 0),
(386, 19, 'Colón', 0),
(387, 19, 'Coloncito', 0),
(388, 19, 'Cordero', 0),
(389, 19, 'El Cobre', 0),
(390, 19, 'El Pinal', 0),
(391, 19, 'Independencia', 0),
(392, 19, 'La Fría', 0),
(393, 19, 'La Grita', 0),
(394, 19, 'La Pedrera', 0),
(395, 19, 'La Tendida', 0),
(396, 19, 'Las Delicias', 0),
(397, 19, 'Las Hernández', 0),
(398, 19, 'Lobatera', 0),
(399, 19, 'Michelena', 0),
(400, 19, 'Palmira', 0),
(401, 19, 'Pregonero', 0),
(402, 19, 'Queniquea', 0),
(403, 19, 'Rubio', 0),
(404, 19, 'San Antonio del Tachira', 0),
(405, 19, 'San Cristobal', 1),
(406, 19, 'San José de Bolívar', 0),
(407, 19, 'San Josecito', 0),
(408, 19, 'San Pedro del Río', 0),
(409, 19, 'Santa Ana Táchira', 0),
(410, 19, 'Seboruco', 0),
(411, 19, 'Táriba', 0),
(412, 19, 'Umuquena', 0),
(413, 19, 'Ureña', 0),
(414, 20, 'Batatal', 0),
(415, 20, 'Betijoque', 0),
(416, 20, 'Boconó', 0),
(417, 20, 'Carache', 0),
(418, 20, 'Chejende', 0),
(419, 20, 'Cuicas', 0),
(420, 20, 'El Dividive', 0),
(421, 20, 'El Jaguito', 0),
(422, 20, 'Escuque', 0),
(423, 20, 'Isnotú', 0),
(424, 20, 'Jajó', 0),
(425, 20, 'La Ceiba', 0),
(426, 20, 'La Concepción de Trujllo', 0),
(427, 20, 'La Mesa de Esnujaque', 0),
(428, 20, 'La Puerta', 0),
(429, 20, 'La Quebrada', 0),
(430, 20, 'Mendoza Fría', 0),
(431, 20, 'Meseta de Chimpire', 0),
(432, 20, 'Monay', 0),
(433, 20, 'Motatán', 0),
(434, 20, 'Pampán', 0),
(435, 20, 'Pampanito', 0),
(436, 20, 'Sabana de Mendoza', 0),
(437, 20, 'San Lázaro', 0),
(438, 20, 'Santa Ana de Trujillo', 0),
(439, 20, 'Tostós', 0),
(440, 20, 'Trujillo', 1),
(441, 20, 'Valera', 0),
(442, 21, 'Carayaca', 0),
(443, 21, 'Litoral', 0),
(444, 25, 'Archipiélago Los Roques', 0),
(445, 22, 'Aroa', 0),
(446, 22, 'Boraure', 0),
(447, 22, 'Campo Elías de Yaracuy', 0),
(448, 22, 'Chivacoa', 0),
(449, 22, 'Cocorote', 0),
(450, 22, 'Farriar', 0),
(451, 22, 'Guama', 0),
(452, 22, 'Marín', 0),
(453, 22, 'Nirgua', 0),
(454, 22, 'Sabana de Parra', 0),
(455, 22, 'Salom', 0),
(456, 22, 'San Felipe', 1),
(457, 22, 'San Pablo de Yaracuy', 0),
(458, 22, 'Urachiche', 0),
(459, 22, 'Yaritagua', 0),
(460, 22, 'Yumare', 0),
(461, 23, 'Bachaquero', 0),
(462, 23, 'Bobures', 0),
(463, 23, 'Cabimas', 0),
(464, 23, 'Campo Concepción', 0),
(465, 23, 'Campo Mara', 0),
(466, 23, 'Campo Rojo', 0),
(467, 23, 'Carrasquero', 0),
(468, 23, 'Casigua', 0),
(469, 23, 'Chiquinquirá', 0),
(470, 23, 'Ciudad Ojeda', 0),
(471, 23, 'El Batey', 0),
(472, 23, 'El Carmelo', 0),
(473, 23, 'El Chivo', 0),
(474, 23, 'El Guayabo', 0),
(475, 23, 'El Mene', 0),
(476, 23, 'El Venado', 0),
(477, 23, 'Encontrados', 0),
(478, 23, 'Gibraltar', 0),
(479, 23, 'Isla de Toas', 0),
(480, 23, 'La Concepción del Zulia', 0),
(481, 23, 'La Paz', 0),
(482, 23, 'La Sierrita', 0),
(483, 23, 'Lagunillas del Zulia', 0),
(484, 23, 'Las Piedras de Perijá', 0),
(485, 23, 'Los Cortijos', 0),
(486, 23, 'Machiques', 0),
(487, 23, 'Maracaibo', 1),
(488, 23, 'Mene Grande', 0),
(489, 23, 'Palmarejo', 0),
(490, 23, 'Paraguaipoa', 0),
(491, 23, 'Potrerito', 0),
(492, 23, 'Pueblo Nuevo del Zulia', 0),
(493, 23, 'Puertos de Altagracia', 0),
(494, 23, 'Punta Gorda', 0),
(495, 23, 'Sabaneta de Palma', 0),
(496, 23, 'San Francisco', 0),
(497, 23, 'San José de Perijá', 0),
(498, 23, 'San Rafael del Moján', 0),
(499, 23, 'San Timoteo', 0),
(500, 23, 'Santa Bárbara Del Zulia', 0),
(501, 23, 'Santa Cruz de Mara', 0),
(502, 23, 'Santa Cruz del Zulia', 0),
(503, 23, 'Santa Rita', 0),
(504, 23, 'Sinamaica', 0),
(505, 23, 'Tamare', 0),
(506, 23, 'Tía Juana', 0),
(507, 23, 'Villa del Rosario', 0),
(508, 21, 'La Guaira', 1),
(509, 21, 'Catia La Mar', 0),
(510, 21, 'Macuto', 0),
(511, 21, 'Naiguatá', 0),
(512, 25, 'Archipiélago Los Monjes', 0),
(513, 25, 'Isla La Tortuga y Cayos adyacentes', 0),
(514, 25, 'Isla La Sola', 0),
(515, 25, 'Islas Los Testigos', 0),
(516, 25, 'Islas Los Frailes', 0),
(517, 25, 'Isla La Orchila', 0),
(518, 25, 'Archipiélago Las Aves', 0),
(519, 25, 'Isla de Aves', 0),
(520, 25, 'Isla La Blanquilla', 0),
(521, 25, 'Isla de Patos', 0),
(522, 25, 'Islas Los Hermanos', 0);

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
(13, 2, 'Especialidades', 'especialidades', '', '', 1, '2022-05-07 02:48:05', '2022-05-06 20:50:59'),
(15, NULL, 'Historial de vacunas', 'HistorialVacunas', 'Historial de vacunas aplicadas', 'fa-solid fa-vial-circle-check', 1, '2022-06-28 17:43:22', '2022-06-28 11:45:18');

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
(11, 3, 3, 0, 0, 0, 0, '2022-05-01 19:16:19', '2022-05-01 13:17:19'),
(12, 1, 15, 1, 1, 1, 1, '2022-06-28 17:45:28', '2022-06-28 11:45:59');

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
-- Estructura de tabla para la tabla `TMBCH_EDO`
--

CREATE TABLE `TMBCH_EDO` (
  `TMEDO_CE` int(11) NOT NULL,
  `TMEDO_NO` varchar(250) NOT NULL,
  `iso_3166-2` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TMBCH_EDO`
--

INSERT INTO `TMBCH_EDO` (`TMEDO_CE`, `TMEDO_NO`, `iso_3166-2`) VALUES
(1, 'Amazonas', 'VE-X'),
(2, 'Anzoátegui', 'VE-B'),
(3, 'Apure', 'VE-C'),
(4, 'Aragua', 'VE-D'),
(5, 'Barinas', 'VE-E'),
(6, 'Bolívar', 'VE-F'),
(7, 'Carabobo', 'VE-G'),
(8, 'Cojedes', 'VE-H'),
(9, 'Delta Amacuro', 'VE-Y'),
(10, 'Falcón', 'VE-I'),
(11, 'Guárico', 'VE-J'),
(12, 'Lara', 'VE-K'),
(13, 'Mérida', 'VE-L'),
(14, 'Miranda', 'VE-M'),
(15, 'Monagas', 'VE-N'),
(16, 'Nueva Esparta', 'VE-O'),
(17, 'Portuguesa', 'VE-P'),
(18, 'Sucre', 'VE-R'),
(19, 'Táchira', 'VE-S'),
(20, 'Trujillo', 'VE-T'),
(21, 'La Guaira', 'VE-W'),
(22, 'Yaracuy', 'VE-U'),
(23, 'Zulia', 'VE-V'),
(24, 'Distrito Capital', 'VE-A'),
(25, 'Dependencias Federales', 'VE-Z');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_EDOS`
--

CREATE TABLE `TMBCH_EDOS` (
  `TMEDO_CE` int(11) NOT NULL,
  `TMEDO_NO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_EDOS`
--

INSERT INTO `TMBCH_EDOS` (`TMEDO_CE`, `TMEDO_NO`) VALUES
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
(1, 'V-27394396', 6, 'Centro, carrera 8, entre calles 9 y 10', 'Saavedraa', 'kevin', '04165026559', 1),
(3, 'V-27364259', 2, 'Centro diagonal a al iglesia coromoto', 'Carmona', 'Maria Evita', '4265740027', 1),
(5, 'V-24589980', 6, 'Barrio obrero', 'Zambrano Prereiraa', 'Camilas', '04165895214', 5),
(6, 'V-27495433', 2, 'aadsfsad', 'Lius', 'Alejandro', '432423424', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_MUN`
--

CREATE TABLE `TMBCH_MUN` (
  `TMMUN_CM` int(11) NOT NULL,
  `TMEDO_CE` int(11) NOT NULL,
  `TMMUN_NO` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `TMBCH_MUN`
--

INSERT INTO `TMBCH_MUN` (`TMMUN_CM`, `TMEDO_CE`, `TMMUN_NO`) VALUES
(1, 1, 'Alto Orinoco'),
(2, 1, 'Atabapo'),
(3, 1, 'Atures'),
(4, 1, 'Autana'),
(5, 1, 'Manapiare'),
(6, 1, 'Maroa'),
(7, 1, 'Río Negro'),
(8, 2, 'Anaco'),
(9, 2, 'Aragua'),
(10, 2, 'Manuel Ezequiel Bruzual'),
(11, 2, 'Diego Bautista Urbaneja'),
(12, 2, 'Fernando Peñalver'),
(13, 2, 'Francisco Del Carmen Carvajal'),
(14, 2, 'General Sir Arthur McGregor'),
(15, 2, 'Guanta'),
(16, 2, 'Independencia'),
(17, 2, 'José Gregorio Monagas'),
(18, 2, 'Juan Antonio Sotillo'),
(19, 2, 'Juan Manuel Cajigal'),
(20, 2, 'Libertad'),
(21, 2, 'Francisco de Miranda'),
(22, 2, 'Pedro María Freites'),
(23, 2, 'Píritu'),
(24, 2, 'San José de Guanipa'),
(25, 2, 'San Juan de Capistrano'),
(26, 2, 'Santa Ana'),
(27, 2, 'Simón Bolívar'),
(28, 2, 'Simón Rodríguez'),
(29, 3, 'Achaguas'),
(30, 3, 'Biruaca'),
(31, 3, 'Muñóz'),
(32, 3, 'Páez'),
(33, 3, 'Pedro Camejo'),
(34, 3, 'Rómulo Gallegos'),
(35, 3, 'San Fernando'),
(36, 4, 'Atanasio Girardot'),
(37, 4, 'Bolívar'),
(38, 4, 'Camatagua'),
(39, 4, 'Francisco Linares Alcántara'),
(40, 4, 'José Ángel Lamas'),
(41, 4, 'José Félix Ribas'),
(42, 4, 'José Rafael Revenga'),
(43, 4, 'Libertador'),
(44, 4, 'Mario Briceño Iragorry'),
(45, 4, 'Ocumare de la Costa de Oro'),
(46, 4, 'San Casimiro'),
(47, 4, 'San Sebastián'),
(48, 4, 'Santiago Mariño'),
(49, 4, 'Santos Michelena'),
(50, 4, 'Sucre'),
(51, 4, 'Tovar'),
(52, 4, 'Urdaneta'),
(53, 4, 'Zamora'),
(54, 5, 'Alberto Arvelo Torrealba'),
(55, 5, 'Andrés Eloy Blanco'),
(56, 5, 'Antonio José de Sucre'),
(57, 5, 'Arismendi'),
(58, 5, 'Barinas'),
(59, 5, 'Bolívar'),
(60, 5, 'Cruz Paredes'),
(61, 5, 'Ezequiel Zamora'),
(62, 5, 'Obispos'),
(63, 5, 'Pedraza'),
(64, 5, 'Rojas'),
(65, 5, 'Sosa'),
(66, 6, 'Caroní'),
(67, 6, 'Cedeño'),
(68, 6, 'El Callao'),
(69, 6, 'Gran Sabana'),
(70, 6, 'Heres'),
(71, 6, 'Piar'),
(72, 6, 'Angostura (Raúl Leoni)'),
(73, 6, 'Roscio'),
(74, 6, 'Sifontes'),
(75, 6, 'Sucre'),
(76, 6, 'Padre Pedro Chien'),
(77, 7, 'Bejuma'),
(78, 7, 'Carlos Arvelo'),
(79, 7, 'Diego Ibarra'),
(80, 7, 'Guacara'),
(81, 7, 'Juan José Mora'),
(82, 7, 'Libertador'),
(83, 7, 'Los Guayos'),
(84, 7, 'Miranda'),
(85, 7, 'Montalbán'),
(86, 7, 'Naguanagua'),
(87, 7, 'Puerto Cabello'),
(88, 7, 'San Diego'),
(89, 7, 'San Joaquín'),
(90, 7, 'Valencia'),
(91, 8, 'Anzoátegui'),
(92, 8, 'Tinaquillo'),
(93, 8, 'Girardot'),
(94, 8, 'Lima Blanco'),
(95, 8, 'Pao de San Juan Bautista'),
(96, 8, 'Ricaurte'),
(97, 8, 'Rómulo Gallegos'),
(98, 8, 'San Carlos'),
(99, 8, 'Tinaco'),
(100, 9, 'Antonio Díaz'),
(101, 9, 'Casacoima'),
(102, 9, 'Pedernales'),
(103, 9, 'Tucupita'),
(104, 10, 'Acosta'),
(105, 10, 'Bolívar'),
(106, 10, 'Buchivacoa'),
(107, 10, 'Cacique Manaure'),
(108, 10, 'Carirubana'),
(109, 10, 'Colina'),
(110, 10, 'Dabajuro'),
(111, 10, 'Democracia'),
(112, 10, 'Falcón'),
(113, 10, 'Federación'),
(114, 10, 'Jacura'),
(115, 10, 'José Laurencio Silva'),
(116, 10, 'Los Taques'),
(117, 10, 'Mauroa'),
(118, 10, 'Miranda'),
(119, 10, 'Monseñor Iturriza'),
(120, 10, 'Palmasola'),
(121, 10, 'Petit'),
(122, 10, 'Píritu'),
(123, 10, 'San Francisco'),
(124, 10, 'Sucre'),
(125, 10, 'Tocópero'),
(126, 10, 'Unión'),
(127, 10, 'Urumaco'),
(128, 10, 'Zamora'),
(129, 11, 'Camaguán'),
(130, 11, 'Chaguaramas'),
(131, 11, 'El Socorro'),
(132, 11, 'José Félix Ribas'),
(133, 11, 'José Tadeo Monagas'),
(134, 11, 'Juan Germán Roscio'),
(135, 11, 'Julián Mellado'),
(136, 11, 'Las Mercedes'),
(137, 11, 'Leonardo Infante'),
(138, 11, 'Pedro Zaraza'),
(139, 11, 'Ortíz'),
(140, 11, 'San Gerónimo de Guayabal'),
(141, 11, 'San José de Guaribe'),
(142, 11, 'Santa María de Ipire'),
(143, 11, 'Sebastián Francisco de Miranda'),
(144, 12, 'Andrés Eloy Blanco'),
(145, 12, 'Crespo'),
(146, 12, 'Iribarren'),
(147, 12, 'Jiménez'),
(148, 12, 'Morán'),
(149, 12, 'Palavecino'),
(150, 12, 'Simón Planas'),
(151, 12, 'Torres'),
(152, 12, 'Urdaneta'),
(179, 13, 'Alberto Adriani'),
(180, 13, 'Andrés Bello'),
(181, 13, 'Antonio Pinto Salinas'),
(182, 13, 'Aricagua'),
(183, 13, 'Arzobispo Chacón'),
(184, 13, 'Campo Elías'),
(185, 13, 'Caracciolo Parra Olmedo'),
(186, 13, 'Cardenal Quintero'),
(187, 13, 'Guaraque'),
(188, 13, 'Julio César Salas'),
(189, 13, 'Justo Briceño'),
(190, 13, 'Libertador'),
(191, 13, 'Miranda'),
(192, 13, 'Obispo Ramos de Lora'),
(193, 13, 'Padre Noguera'),
(194, 13, 'Pueblo Llano'),
(195, 13, 'Rangel'),
(196, 13, 'Rivas Dávila'),
(197, 13, 'Santos Marquina'),
(198, 13, 'Sucre'),
(199, 13, 'Tovar'),
(200, 13, 'Tulio Febres Cordero'),
(201, 13, 'Zea'),
(223, 14, 'Acevedo'),
(224, 14, 'Andrés Bello'),
(225, 14, 'Baruta'),
(226, 14, 'Brión'),
(227, 14, 'Buroz'),
(228, 14, 'Carrizal'),
(229, 14, 'Chacao'),
(230, 14, 'Cristóbal Rojas'),
(231, 14, 'El Hatillo'),
(232, 14, 'Guaicaipuro'),
(233, 14, 'Independencia'),
(234, 14, 'Lander'),
(235, 14, 'Los Salias'),
(236, 14, 'Páez'),
(237, 14, 'Paz Castillo'),
(238, 14, 'Pedro Gual'),
(239, 14, 'Plaza'),
(240, 14, 'Simón Bolívar'),
(241, 14, 'Sucre'),
(242, 14, 'Urdaneta'),
(243, 14, 'Zamora'),
(258, 15, 'Acosta'),
(259, 15, 'Aguasay'),
(260, 15, 'Bolívar'),
(261, 15, 'Caripe'),
(262, 15, 'Cedeño'),
(263, 15, 'Ezequiel Zamora'),
(264, 15, 'Libertador'),
(265, 15, 'Maturín'),
(266, 15, 'Piar'),
(267, 15, 'Punceres'),
(268, 15, 'Santa Bárbara'),
(269, 15, 'Sotillo'),
(270, 15, 'Uracoa'),
(271, 16, 'Antolín del Campo'),
(272, 16, 'Arismendi'),
(273, 16, 'García'),
(274, 16, 'Gómez'),
(275, 16, 'Maneiro'),
(276, 16, 'Marcano'),
(277, 16, 'Mariño'),
(278, 16, 'Península de Macanao'),
(279, 16, 'Tubores'),
(280, 16, 'Villalba'),
(281, 16, 'Díaz'),
(282, 17, 'Agua Blanca'),
(283, 17, 'Araure'),
(284, 17, 'Esteller'),
(285, 17, 'Guanare'),
(286, 17, 'Guanarito'),
(287, 17, 'Monseñor José Vicente de Unda'),
(288, 17, 'Ospino'),
(289, 17, 'Páez'),
(290, 17, 'Papelón'),
(291, 17, 'San Genaro de Boconoíto'),
(292, 17, 'San Rafael de Onoto'),
(293, 17, 'Santa Rosalía'),
(294, 17, 'Sucre'),
(295, 17, 'Turén'),
(296, 18, 'Andrés Eloy Blanco'),
(297, 18, 'Andrés Mata'),
(298, 18, 'Arismendi'),
(299, 18, 'Benítez'),
(300, 18, 'Bermúdez'),
(301, 18, 'Bolívar'),
(302, 18, 'Cajigal'),
(303, 18, 'Cruz Salmerón Acosta'),
(304, 18, 'Libertador'),
(305, 18, 'Mariño'),
(306, 18, 'Mejía'),
(307, 18, 'Montes'),
(308, 18, 'Ribero'),
(309, 18, 'Sucre'),
(310, 18, 'Valdéz'),
(341, 19, 'Andrés Bello'),
(342, 19, 'Antonio Rómulo Costa'),
(343, 19, 'Ayacucho'),
(344, 19, 'Bolívar'),
(345, 19, 'Cárdenas'),
(346, 19, 'Córdoba'),
(347, 19, 'Fernández Feo'),
(348, 19, 'Francisco de Miranda'),
(349, 19, 'García de Hevia'),
(350, 19, 'Guásimos'),
(351, 19, 'Independencia'),
(352, 19, 'Jáuregui'),
(353, 19, 'José María Vargas'),
(354, 19, 'Junín'),
(355, 19, 'Libertad'),
(356, 19, 'Libertador'),
(357, 19, 'Lobatera'),
(358, 19, 'Michelena'),
(359, 19, 'Panamericano'),
(360, 19, 'Pedro María Ureña'),
(361, 19, 'Rafael Urdaneta'),
(362, 19, 'Samuel Darío Maldonado'),
(363, 19, 'San Cristóbal'),
(364, 19, 'Seboruco'),
(365, 19, 'Simón Rodríguez'),
(366, 19, 'Sucre'),
(367, 19, 'Torbes'),
(368, 19, 'Uribante'),
(369, 19, 'San Judas Tadeo'),
(370, 20, 'Andrés Bello'),
(371, 20, 'Boconó'),
(372, 20, 'Bolívar'),
(373, 20, 'Candelaria'),
(374, 20, 'Carache'),
(375, 20, 'Escuque'),
(376, 20, 'José Felipe Márquez Cañizalez'),
(377, 20, 'Juan Vicente Campos Elías'),
(378, 20, 'La Ceiba'),
(379, 20, 'Miranda'),
(380, 20, 'Monte Carmelo'),
(381, 20, 'Motatán'),
(382, 20, 'Pampán'),
(383, 20, 'Pampanito'),
(384, 20, 'Rafael Rangel'),
(385, 20, 'San Rafael de Carvajal'),
(386, 20, 'Sucre'),
(387, 20, 'Trujillo'),
(388, 20, 'Urdaneta'),
(389, 20, 'Valera'),
(390, 21, 'Vargas'),
(391, 22, 'Arístides Bastidas'),
(392, 22, 'Bolívar'),
(407, 22, 'Bruzual'),
(408, 22, 'Cocorote'),
(409, 22, 'Independencia'),
(410, 22, 'José Antonio Páez'),
(411, 22, 'La Trinidad'),
(412, 22, 'Manuel Monge'),
(413, 22, 'Nirgua'),
(414, 22, 'Peña'),
(415, 22, 'San Felipe'),
(416, 22, 'Sucre'),
(417, 22, 'Urachiche'),
(418, 22, 'José Joaquín Veroes'),
(441, 23, 'Almirante Padilla'),
(442, 23, 'Baralt'),
(443, 23, 'Cabimas'),
(444, 23, 'Catatumbo'),
(445, 23, 'Colón'),
(446, 23, 'Francisco Javier Pulgar'),
(447, 23, 'Páez'),
(448, 23, 'Jesús Enrique Losada'),
(449, 23, 'Jesús María Semprún'),
(450, 23, 'La Cañada de Urdaneta'),
(451, 23, 'Lagunillas'),
(452, 23, 'Machiques de Perijá'),
(453, 23, 'Mara'),
(454, 23, 'Maracaibo'),
(455, 23, 'Miranda'),
(456, 23, 'Rosario de Perijá'),
(457, 23, 'San Francisco'),
(458, 23, 'Santa Rita'),
(459, 23, 'Simón Bolívar'),
(460, 23, 'Sucre'),
(461, 23, 'Valmore Rodríguez'),
(462, 24, 'Libertador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `TMBCH_MUNS`
--

CREATE TABLE `TMBCH_MUNS` (
  `TMMUN_CM` int(11) NOT NULL,
  `TMMUN_NO` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TMEDO_CE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `TMBCH_MUNS`
--

INSERT INTO `TMBCH_MUNS` (`TMMUN_CM`, `TMMUN_NO`, `TMEDO_CE`) VALUES
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
(1, '24589983', 4, 'Luis Alfonso', 'Zambrano Prereira', 'm', 'Centro diagonal a al iglesia coromoto', '2000-07-13', '04165026559'),
(2, '24896666', 6, 'Maria Antonieta', 'Sanchez', 'f', 'Capacho', '1998-04-17', '04248963333'),
(5, '27364259', 4, 'Camila ', 'Becerra', 'f', 'Barrio obrero', '2004-04-22', '04248965545'),
(7, '27394396', 2, 'Kevin Leonardo', 'Saavedra Carmona', 'm', 'Avenida principal', '2000-07-13', '04165026559'),
(35, '27456789', 6, 'John', 'Becerra', 'm', 'Barrio obrero', '1997-06-26', '04165026559'),
(50, '27394391', 194, 'Andra', 'Sanchez', 'm', 'Calle del hambre', '2000-06-21', '04248965545'),
(51, '26548693', 370, 'Morbius', 'Michael', 'm', 'Centro, carrera 8, entre calles 9 y 10', '1980-06-18', '04165895214');

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
  `TMPAC_PID` int(11) NOT NULL,
  `TMMED_CCI` int(11) DEFAULT NULL
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
(13, 3, 'Oriany', 'oriany9570@gmail.com', '04265702722', 'a61d357b8275d2c738f9aa7c58e79316c8d82edc18044c09698ebbfaae5ac5e9'),
(14, 1, 'Admin', 'admin@admin.com', '04165026559', '41e5653fc7aeb894026d6bb7b2db7f65902b454945fa8fd65a6327047b5277fb');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`id_ciudad`),
  ADD KEY `id_estado` (`id_estado`);

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
-- Indices de la tabla `TMBCH_EDO`
--
ALTER TABLE `TMBCH_EDO`
  ADD PRIMARY KEY (`TMEDO_CE`);

--
-- Indices de la tabla `TMBCH_EDOS`
--
ALTER TABLE `TMBCH_EDOS`
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
  ADD KEY `id_estado` (`TMEDO_CE`);

--
-- Indices de la tabla `TMBCH_MUNS`
--
ALTER TABLE `TMBCH_MUNS`
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
-- Indices de la tabla `TTBCH_CON`
--
ALTER TABLE `TTBCH_CON`
  ADD PRIMARY KEY (`TTCON_CC`),
  ADD KEY `TMPAC-CI_idx` (`TMPAC_PID`),
  ADD KEY `TMMED-CCI_idx` (`TMMED_CCI`);

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
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `id_ciudad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=523;

--
-- AUTO_INCREMENT de la tabla `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `permisos`
--
ALTER TABLE `permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `TMEDO_CE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `TMBCH_EDOS`
--
ALTER TABLE `TMBCH_EDOS`
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
  MODIFY `TMMED_MID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TMBCH_MUN`
--
ALTER TABLE `TMBCH_MUN`
  MODIFY `TMMUN_CM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;

--
-- AUTO_INCREMENT de la tabla `TMBCH_MUNS`
--
ALTER TABLE `TMBCH_MUNS`
  MODIFY `TMMUN_CM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `TMBCH_PAC`
--
ALTER TABLE `TMBCH_PAC`
  MODIFY `TMPAC_PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

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
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- Filtros para la tabla `TMBCH_CAM`
--
ALTER TABLE `TMBCH_CAM`
  ADD CONSTRAINT `TMBCH_CAM_ibfk_1` FOREIGN KEY (`TMCTO_NC`) REFERENCES `TMBCH_CTO` (`TMCTO_NC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_CTO`
--
ALTER TABLE `TMBCH_CTO`
  ADD CONSTRAINT `TMBCH_CTO_ibfk_1` FOREIGN KEY (`TMPIS_NP`) REFERENCES `TMBCH_PIS` (`TMPIS_NP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_MED`
--
ALTER TABLE `TMBCH_MED`
  ADD CONSTRAINT `TMBCH_MED_ibfk_2` FOREIGN KEY (`TMESP_CE`) REFERENCES `TMBCH_ESP` (`TMESP_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TMBCH_MED_ibfk_3` FOREIGN KEY (`TMMUN_CM`) REFERENCES `TMBCH_MUN` (`TMMUN_CM`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_MUN`
--
ALTER TABLE `TMBCH_MUN`
  ADD CONSTRAINT `TMBCH_MUN_ibfk_1` FOREIGN KEY (`TMEDO_CE`) REFERENCES `TMBCH_EDO` (`TMEDO_CE`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `TMBCH_MUNS`
--
ALTER TABLE `TMBCH_MUNS`
  ADD CONSTRAINT `TMBCH_MUNS_ibfk_1` FOREIGN KEY (`TMEDO_CE`) REFERENCES `TMBCH_EDOS` (`TMEDO_CE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TMBCH_PAC`
--
ALTER TABLE `TMBCH_PAC`
  ADD CONSTRAINT `TMBCH_PAC_ibfk_1` FOREIGN KEY (`TMMUN_CM`) REFERENCES `TMBCH_MUN` (`TMMUN_CM`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TTBCH_CON`
--
ALTER TABLE `TTBCH_CON`
  ADD CONSTRAINT `TTBCH_CON_ibfk_1` FOREIGN KEY (`TMPAC_PID`) REFERENCES `TMBCH_PAC` (`TMPAC_PID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TTBCH_HOS`
--
ALTER TABLE `TTBCH_HOS`
  ADD CONSTRAINT `TTBCH_HOS_ibfk_1` FOREIGN KEY (`TMCAM_NC`) REFERENCES `TMBCH_CAM` (`TMCAM_NC`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TTBCH_HOS_ibfk_2` FOREIGN KEY (`TTCON_CC`) REFERENCES `TTBCH_CON` (`TTCON_CC`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `TTBCH_VAP`
--
ALTER TABLE `TTBCH_VAP`
  ADD CONSTRAINT `TTBCH_VAP_ibfk_1` FOREIGN KEY (`TMPAC_ACI`) REFERENCES `TMBCH_PAC` (`TMPAC_PID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `TTBCH_VAP_ibfk_2` FOREIGN KEY (`TMVAE_CV`) REFERENCES `TMBCH_VAE` (`TMVAE_CV`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
