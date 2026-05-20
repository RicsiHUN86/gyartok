-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2026. Máj 20. 08:31
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `vizsga_2025`
--
CREATE DATABASE IF NOT EXISTS `vizsga_2025` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `vizsga_2025`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `gyartok`
--

DROP TABLE IF EXISTS `gyartok`;
CREATE TABLE `gyartok` (
  `gyarto` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `alapitva` int(11) NOT NULL,
  `nemzetiseg` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `leanyvallalatok` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `gyartok`
--

INSERT INTO `gyartok` (`gyarto`, `alapitva`, `nemzetiseg`, `leanyvallalatok`) VALUES
('Bosch', 1886, 'Németország', 45),
('DeWalt', 1924, 'USA', 9),
('Einhell', 1964, 'Németország', 22),
('Hitachi', 1910, 'Japán', 41),
('Makita', 1915, 'Japán', 12),
('Milwaukee', 1924, 'USA', 18),
('Ryobi', 1943, 'Japán', 21);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `szerszamok`
--

DROP TABLE IF EXISTS `szerszamok`;
CREATE TABLE `szerszamok` (
  `sorszam` int(11) NOT NULL,
  `gyarto` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `tipus` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `ar` int(11) NOT NULL,
  `aramforras` varchar(30) COLLATE utf8_hungarian_ci NOT NULL,
  `kolcsonzes` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `szerszamok`
--

INSERT INTO `szerszamok` (`sorszam`, `gyarto`, `tipus`, `ar`, `aramforras`, `kolcsonzes`) VALUES
(1, 'Milwaukee', 'gyalu', 17390, '12V akku', 3160),
(2, 'Bosch', 'csiszoló', 59499, '12V akku', 1123),
(3, 'Ryobi', 'fúró', 16857, '24V akku', 6412),
(4, 'Hitachi', 'csavarbehajtó', 84472, '24V akku', 6222),
(5, 'Milwaukee', 'fűrész', 82518, '24V akku', 7655),
(6, 'Einhell', 'gyalu', 52603, 'vezetékes', 7618),
(7, 'Ryobi', 'gyalu', 78784, '24V akku', 7810),
(8, 'Hitachi', 'csavarbehajtó', 12576, 'vezetékes', 0),
(9, 'Einhell', 'fűrész', 96508, 'vezetékes', 4857),
(10, 'Bosch', 'fúró', 61563, 'vezetékes', 7926),
(11, 'Bosch', 'kalapács', 70968, 'vezetékes', 4535),
(12, 'Hitachi', 'csavarbehajtó', 41333, 'vezetékes', 5504),
(13, 'Einhell', 'csavarbehajtó', 53529, 'vezetékes', 0),
(14, 'Hitachi', 'csiszoló', 16527, '12V akku', 5890),
(15, 'Ryobi', 'csiszoló', 82256, 'vezetékes', 3695),
(16, 'Bosch', 'kalapács', 51680, '48V akku', 3992),
(17, 'Ryobi', 'fűrész', 59570, '48V akku', 1125),
(18, 'Einhell', 'csavarbehajtó', 68223, '48V akku', 0),
(19, 'Makita', 'csavarbehajtó', 13511, '48V akku', 3101),
(20, 'Ryobi', 'fúró', 92806, '24V akku', 0),
(21, 'Einhell', 'fúró', 61524, '12V akku', 4719),
(22, 'Ryobi', 'fűrész', 36458, '48V akku', 2033),
(23, 'Hitachi', 'csavarbehajtó', 23498, '12V akku', 5281),
(24, 'Makita', 'gyalu', 88211, '48V akku', 6662),
(25, 'Bosch', 'vésőgép', 55576, '48V akku', 1010),
(26, 'Einhell', 'fúró', 68781, 'vezetékes', 4877),
(27, 'Makita', 'csavarbehajtó', 38774, 'vezetékes', 5350),
(28, 'Hitachi', 'fűrész', 63028, '48V akku', 5533),
(29, 'DeWalt', 'csavarbehajtó', 82173, '24V akku', 0),
(30, 'Hitachi', 'fúró', 96372, '48V akku', 2014),
(31, 'DeWalt', 'fűrész', 28235, '12V akku', 7202),
(32, 'Bosch', 'vésőgép', 78631, '12V akku', 2311),
(33, 'Makita', 'fúró', 41727, '12V akku', 4915),
(34, 'Makita', 'csiszoló', 32603, 'vezetékes', 7042),
(35, 'Hitachi', 'kalapács', 40458, '24V akku', 4720),
(36, 'Makita', 'csiszoló', 67292, '48V akku', 7664),
(37, 'Makita', 'csiszoló', 93883, '48V akku', 0),
(38, 'DeWalt', 'gyalu', 19201, '24V akku', 5946),
(39, 'Hitachi', 'csiszoló', 23445, '24V akku', 0),
(40, 'DeWalt', 'csiszoló', 37740, '12V akku', 6810),
(41, 'Hitachi', 'vésőgép', 15207, '48V akku', 5909),
(42, 'Milwaukee', 'gyalu', 43772, '48V akku', 5587),
(43, 'Ryobi', 'fűrész', 63076, '12V akku', 5215),
(44, 'Bosch', 'csavarbehajtó', 75622, '24V akku', 2078),
(45, 'Milwaukee', 'fúró', 42747, '12V akku', 6498),
(46, 'Makita', 'csavarbehajtó', 17306, '24V akku', 3525),
(47, 'Ryobi', 'gyalu', 52675, '12V akku', 5074),
(48, 'Einhell', 'gyalu', 89983, 'vezetékes', 3406),
(49, 'Bosch', 'kalapács', 52490, '48V akku', 0),
(50, 'Bosch', 'fúró', 85637, '12V akku', 5548),
(51, 'Hitachi', 'fúró', 59580, '24V akku', 2102),
(52, 'DeWalt', 'csiszoló', 60770, '24V akku', 4270),
(53, 'Hitachi', 'kalapács', 76825, '12V akku', 7760),
(54, 'Ryobi', 'fűrész', 33113, 'vezetékes', 2293),
(55, 'Milwaukee', 'csiszoló', 88324, '24V akku', 1713),
(56, 'Bosch', 'csiszoló', 86529, '12V akku', 1323),
(57, 'Hitachi', 'csiszoló', 94874, '12V akku', 1680),
(58, 'Hitachi', 'fúró', 81873, '12V akku', 6149),
(59, 'Ryobi', 'csiszoló', 79766, '48V akku', 3462),
(60, 'Makita', 'kalapács', 16491, '12V akku', 1057),
(61, 'Ryobi', 'csiszoló', 50462, '24V akku', 3204),
(62, 'Hitachi', 'csavarbehajtó', 61682, 'vezetékes', 0),
(63, 'Milwaukee', 'fúró', 81054, '12V akku', 5522),
(64, 'Einhell', 'csiszoló', 98478, 'vezetékes', 7222),
(65, 'Milwaukee', 'gyalu', 66878, '24V akku', 2724),
(66, 'Hitachi', 'fűrész', 32764, '24V akku', 5059),
(67, 'Bosch', 'kalapács', 23586, 'vezetékes', 5565),
(68, 'Makita', 'csavarbehajtó', 24468, '24V akku', 5680),
(69, 'Milwaukee', 'csavarbehajtó', 43400, '48V akku', 7966),
(70, 'Bosch', 'kalapács', 88523, '24V akku', 7615),
(71, 'Bosch', 'csavarbehajtó', 92169, '24V akku', 1457),
(72, 'Makita', 'csiszoló', 28655, '48V akku', 4536),
(73, 'Makita', 'csavarbehajtó', 79724, '24V akku', 6947),
(74, 'Ryobi', 'csiszoló', 55236, 'vezetékes', 7118),
(75, 'Milwaukee', 'fúró', 89018, '24V akku', 0),
(76, 'DeWalt', 'kalapács', 88315, '24V akku', 2132),
(77, 'Milwaukee', 'fúró', 71070, '12V akku', 0),
(78, 'Ryobi', 'kalapács', 82972, '48V akku', 3431),
(79, 'Einhell', 'vésőgép', 90191, '12V akku', 3312),
(80, 'Einhell', 'kalapács', 38549, 'vezetékes', 4184),
(81, 'Milwaukee', 'csiszoló', 59621, '24V akku', 2125),
(82, 'Makita', 'csiszoló', 23785, '24V akku', 0),
(83, 'Einhell', 'fűrész', 15197, '48V akku', 2219),
(84, 'Einhell', 'fúró', 70837, '24V akku', 0),
(85, 'Makita', 'vésőgép', 75716, '24V akku', 2273),
(86, 'Makita', 'vésőgép', 90143, 'vezetékes', 3062),
(87, 'DeWalt', 'gyalu', 91983, 'vezetékes', 0),
(88, 'Einhell', 'fűrész', 12538, '12V akku', 2470),
(89, 'DeWalt', 'fúró', 61817, 'vezetékes', 0),
(90, 'Hitachi', 'vésőgép', 27880, '24V akku', 5488),
(91, 'Einhell', 'csiszoló', 71492, '24V akku', 3574),
(92, 'DeWalt', 'fúró', 61693, '48V akku', 1431),
(93, 'Bosch', 'gyalu', 45249, 'vezetékes', 7768),
(94, 'Einhell', 'fűrész', 91096, '48V akku', 0),
(95, 'Ryobi', 'vésőgép', 32921, '48V akku', 6716),
(96, 'Makita', 'kalapács', 88843, 'vezetékes', 2578),
(97, 'Ryobi', 'fűrész', 17340, '48V akku', 0),
(98, 'Einhell', 'csiszoló', 20453, '24V akku', 0),
(99, 'DeWalt', 'gyalu', 28589, '24V akku', 4101),
(100, 'DeWalt', 'csavarbehajtó', 12650, 'vezetékes', 5387),
(101, 'Hitachi', 'kalapács', 20901, '12V akku', 4132),
(102, 'Milwaukee', 'gyalu', 83035, '12V akku', 7973),
(103, 'Einhell', 'csavarbehajtó', 56990, '12V akku', 4976),
(104, 'Milwaukee', 'fúró', 82965, '12V akku', 6062),
(105, 'Ryobi', 'vésőgép', 98173, '48V akku', 2404),
(106, 'Hitachi', 'kalapács', 62285, '24V akku', 0),
(107, 'Ryobi', 'fűrész', 19202, '12V akku', 3101),
(108, 'Makita', 'csavarbehajtó', 89948, 'vezetékes', 3722),
(109, 'Milwaukee', 'fúró', 90331, '24V akku', 6877),
(110, 'Ryobi', 'fúró', 56107, '24V akku', 0),
(111, 'DeWalt', 'csavarbehajtó', 80584, '24V akku', 0),
(112, 'Ryobi', 'kalapács', 85844, '24V akku', 0),
(113, 'Milwaukee', 'csavarbehajtó', 92350, 'vezetékes', 0),
(114, 'Makita', 'fúró', 15263, '48V akku', 1859),
(115, 'Einhell', 'kalapács', 43465, '48V akku', 5767),
(116, 'Makita', 'csiszoló', 67008, '24V akku', 1672),
(117, 'Bosch', 'csavarbehajtó', 24849, '48V akku', 0),
(118, 'Hitachi', 'gyalu', 60970, 'vezetékes', 2684),
(119, 'Makita', 'kalapács', 94824, '48V akku', 5600),
(120, 'Einhell', 'csavarbehajtó', 80479, '24V akku', 1288),
(121, 'Milwaukee', 'fúró', 92482, '48V akku', 4929),
(122, 'DeWalt', 'csiszoló', 14248, 'vezetékes', 5973),
(123, 'Milwaukee', 'csavarbehajtó', 86278, '12V akku', 1129),
(124, 'DeWalt', 'vésőgép', 45537, '48V akku', 0),
(125, 'DeWalt', 'gyalu', 66832, '24V akku', 2775),
(126, 'Hitachi', 'gyalu', 49375, '12V akku', 0),
(127, 'Milwaukee', 'fúró', 78569, '48V akku', 4093),
(128, 'Bosch', 'csavarbehajtó', 68056, '12V akku', 0),
(129, 'Makita', 'fúró', 25217, '24V akku', 3552),
(130, 'Einhell', 'fúró', 54945, '12V akku', 0),
(131, 'Milwaukee', 'csiszoló', 51991, '12V akku', 0),
(132, 'Makita', 'csiszoló', 12861, '24V akku', 0),
(133, 'Einhell', 'kalapács', 29293, '24V akku', 6288),
(134, 'DeWalt', 'fúró', 19079, '48V akku', 0),
(135, 'Bosch', 'csiszoló', 66793, '12V akku', 6034),
(136, 'Makita', 'gyalu', 75663, '48V akku', 3976),
(137, 'Bosch', 'fűrész', 29997, 'vezetékes', 0),
(138, 'Ryobi', 'vésőgép', 85392, 'vezetékes', 0),
(139, 'Milwaukee', 'csiszoló', 38382, '24V akku', 1769),
(140, 'Hitachi', 'csavarbehajtó', 49709, '12V akku', 0),
(141, 'Ryobi', 'fűrész', 19752, '24V akku', 7188),
(142, 'Einhell', 'csavarbehajtó', 68017, '12V akku', 3506),
(143, 'Makita', 'gyalu', 85422, '48V akku', 1769),
(144, 'Makita', 'csiszoló', 15140, '48V akku', 7607),
(145, 'DeWalt', 'gyalu', 95694, '24V akku', 2905),
(146, 'Bosch', 'gyalu', 87607, '48V akku', 0),
(147, 'Einhell', 'csavarbehajtó', 37816, 'vezetékes', 3277),
(148, 'Bosch', 'fúró', 39316, 'vezetékes', 2966),
(149, 'Makita', 'gyalu', 38752, '24V akku', 0),
(150, 'Ryobi', 'fúró', 32827, '48V akku', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `gyartok`
--
ALTER TABLE `gyartok`
  ADD PRIMARY KEY (`gyarto`);

--
-- A tábla indexei `szerszamok`
--
ALTER TABLE `szerszamok`
  ADD PRIMARY KEY (`sorszam`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `szerszamok`
--
ALTER TABLE `szerszamok`
  MODIFY `sorszam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
