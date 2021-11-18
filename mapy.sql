-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Čtv 18. lis 2021, 17:11
-- Verze serveru: 10.4.14-MariaDB
-- Verze PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `mapy`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `mesto`
--

CREATE TABLE `mesto` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `mesto`
--

INSERT INTO `mesto` (`id`, `nazev`) VALUES
(42, 'Babice'),
(34, 'Bánov'),
(7, 'Bílovice'),
(60, 'Blatnice pod svatým Antoníkem'),
(5, 'Bojkovice'),
(43, 'Boršice'),
(24, 'Březolupy'),
(21, 'Březová'),
(8, 'Buchlovice'),
(11, 'Bystřice pod Lopeníkem'),
(56, 'Bzenec'),
(31, 'Dolní Němčí'),
(63, 'Halenkovice'),
(4, 'Hluk'),
(40, 'Horní Němčí'),
(35, 'Hradčovice'),
(14, 'Huštěnovice'),
(20, 'Jalubí'),
(12, 'Kněžpole'),
(19, 'Komňa'),
(22, 'Korytná'),
(13, 'Kudlovice'),
(48, 'Kunovice'),
(64, 'Kuželov'),
(54, 'Lipov'),
(53, 'Louka'),
(66, 'Luhačovice'),
(37, 'Mistřice'),
(57, 'Moravský Písek'),
(50, 'Napajedla'),
(36, 'Nedakonice'),
(23, 'Nezdenice'),
(10, 'Nivnice'),
(30, 'Ořechov'),
(25, 'Ostrožská Lhota'),
(44, 'Ostrožská Nová Ves'),
(9, 'Osvětimany'),
(51, 'Otrokovice'),
(41, 'Pitín'),
(15, 'Podolí'),
(45, 'Polešovice'),
(16, 'Popovice'),
(26, 'Prakšice'),
(49, 'Spytihněv'),
(47, 'Staré Město'),
(27, 'Starý Hrozenkov'),
(32, 'Strání'),
(58, 'Strážnice'),
(65, 'Střílky'),
(17, 'Suchá Loz'),
(46, 'Šumice'),
(38, 'Topolná'),
(6, 'Traplice'),
(28, 'Tupesy'),
(1, 'Uherské Hradiště'),
(2, 'Uherský Brod'),
(3, 'Uherský Ostroh'),
(33, 'Velehrad'),
(55, 'Velká nad Veličkou'),
(52, 'Veselí nad Moravou'),
(29, 'Vlčnov'),
(59, 'Vnorovy'),
(61, 'Vracov'),
(39, 'Záhorovice'),
(18, 'Zlechov'),
(62, 'Žeravice');

-- --------------------------------------------------------

--
-- Struktura tabulky `obor`
--

CREATE TABLE `obor` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `obor`
--

INSERT INTO `obor` (`id`, `nazev`) VALUES
(2, 'IT'),
(3, 'IT'),
(4, 'IT'),
(1, 'OA');

-- --------------------------------------------------------

--
-- Struktura tabulky `pocet_prijatych`
--

CREATE TABLE `pocet_prijatych` (
  `id` int(11) NOT NULL,
  `obor` int(11) NOT NULL,
  `skola` int(11) NOT NULL,
  `pocet` int(11) NOT NULL,
  `rok` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `pocet_prijatych`
--

INSERT INTO `pocet_prijatych` (`id`, `obor`, `skola`, `pocet`, `rok`) VALUES
(1, 2, 3, 4, 2019),
(2, 2, 4, 3, 2019),
(3, 2, 11, 2, 2019),
(4, 2, 36, 2, 2019),
(5, 2, 54, 2, 2019),
(6, 2, 56, 2, 2019),
(7, 2, 7, 2, 2019),
(8, 2, 57, 2, 2019),
(9, 2, 50, 1, 2019),
(10, 2, 52, 1, 2019),
(11, 2, 42, 1, 2019),
(12, 2, 51, 1, 2019),
(13, 2, 55, 1, 2019),
(14, 2, 6, 1, 2019),
(15, 2, 5, 1, 2019),
(16, 2, 1, 1, 2019),
(17, 2, 59, 1, 2019),
(18, 2, 41, 1, 2019),
(19, 2, 58, 1, 2019),
(20, 1, 51, 7, 2019),
(21, 1, 14, 5, 2019),
(22, 1, 67, 5, 2019),
(23, 1, 39, 4, 2019),
(24, 1, 76, 4, 2019),
(25, 1, 72, 4, 2019),
(26, 1, 3, 4, 2019),
(27, 1, 6, 3, 2019),
(28, 1, 57, 3, 2019),
(29, 1, 5, 3, 2019),
(30, 1, 71, 3, 2019),
(31, 1, 41, 3, 2019),
(32, 1, 77, 2, 2019),
(33, 1, 36, 2, 2019),
(34, 1, 33, 2, 2019),
(35, 1, 64, 2, 2019),
(36, 1, 30, 2, 2019),
(37, 1, 78, 2, 2019),
(38, 1, 10, 2, 2019),
(39, 1, 59, 1, 2019),
(40, 1, 60, 1, 2019),
(41, 1, 79, 1, 2019),
(42, 1, 29, 1, 2019),
(43, 1, 25, 1, 2019),
(44, 1, 8, 1, 2019),
(45, 1, 73, 1, 2019),
(46, 1, 80, 1, 2019),
(47, 1, 70, 1, 2019),
(48, 1, 53, 1, 2019),
(49, 1, 55, 1, 2019),
(50, 1, 81, 1, 2019),
(51, 1, 82, 1, 2019),
(52, 1, 83, 1, 2019),
(53, 1, 2, 1, 2019),
(54, 1, 56, 1, 2019),
(55, 1, 84, 1, 2019),
(56, 1, 63, 1, 2019),
(57, 1, 11, 1, 2019);

-- --------------------------------------------------------

--
-- Struktura tabulky `skola`
--

CREATE TABLE `skola` (
  `id` int(11) NOT NULL,
  `nazev` varchar(255) COLLATE utf8_czech_ci NOT NULL,
  `mesto` int(11) NOT NULL,
  `geo_lat` double NOT NULL,
  `geo_long` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `skola`
--

INSERT INTO `skola` (`id`, `nazev`, `mesto`, `geo_lat`, `geo_long`) VALUES
(1, 'ZŠ Na Výsluní Uherský Brod\r\n', 2, 49.032687, 17.643536),
(2, 'Katolická základní škola Uherský Brod', 2, 49.022996, 17.649707),
(3, 'ZŠ Mariánské náměstí Uherský Brod', 2, 49.026235, 17.645464),
(4, 'ZŠ Pod Vinohrady Uherský Brod', 2, 49.026792, 17.653584),
(5, 'ZŠ Za Alejí Uherské Hradiště', 1, 49.068425, 17.449208),
(6, 'ZŠ Sportovní Uherské Hradiště', 1, 49.067784, 17.472572),
(7, 'ZŠ UNESCO Uherské Hradiště', 1, 49.067068, 17.460288),
(8, 'Academic School Uherské Hradiště', 1, 49.070963, 17.47193),
(9, 'ZŠ Palackého náměstí Uherské Hradiště', 1, 49.068893, 17.464523),
(10, 'ZŠ Traplice', 6, 49.136834, 17.433056),
(11, 'ZŠ Bílovice', 7, 49.101508, 17.54614),
(12, 'ZŠ Buchlovice', 8, 49.086178, 17.342145),
(13, 'ZŠ Osvětimany', 9, 49.056656, 17.255367),
(14, 'ZŠ Jana Ámose Komenského Nivnice', 10, 48.972221, 17.648486),
(15, 'ZŠ Bystřice pod Lopeníkem', 11, 48.975716, 17.755046),
(16, 'ZŠ Kněžpole', 12, 49.099497, 17.517719),
(17, 'ZŠ Kudlovice', 13, 49.127723, 17.45417),
(18, 'ZŠ Huštěnovice', 14, 49.106862, 17.466343),
(19, 'ZŠ Podolí', 15, 49.040681, 17.529285),
(20, 'ZŠ Popovice', 16, 49.052241, 17.526111),
(21, 'ZŠ Suchá loz', 17, 48.970431, 17.708283),
(22, 'ZŠ Zlechov', 18, 49.072126, 17.382849),
(23, 'ZŠ Jana Ámose Komenského Komňa', 19, 48.995911, 17.799093),
(24, 'ZŠ Jalubí', 20, 49.118043, 17.422192),
(25, 'ZŠ Březová', 21, 48.930711, 17.74298),
(26, 'ZŠ Korytná', 22, 48.941024, 17.664368),
(27, 'ZŠ Nezdenice', 23, 49.02038, 17.752949),
(28, 'ZŠ Uherský Brod-Újezdec', 2, 49.035849, 17.681992),
(29, 'ZŠ Březolupy', 24, 49.121495, 17.580047),
(30, 'ZŠ Ostrožská Lhota', 25, 48.974706, 17.471946),
(31, 'ZŠ Prakšice', 26, 49.071194, 17.635102),
(32, 'ZŠ Starý Hrozenkov', 27, 48.969213, 17.858509),
(33, 'ZŠ Tupesy', 28, 49.084244, 17.370199),
(34, 'ZŠ Vlčnov', 29, 49.009816, 17.577585),
(35, 'ZŠ Ořechov', 30, 49.111637, 16.514285),
(36, 'ZŠ Větrná Uherské Hradiště', 1, 49.05876, 17.481068),
(37, 'ZŠ Bojkovice', 5, 49.03941, 17.806166),
(38, 'ZŠ Čtverka Uherský Brod', 2, 49.029619, 17.641927),
(39, 'ZŠ Dolní Němčí', 31, 48.971502, 17.587564),
(40, 'ZŠ Strání', 32, 48.902958, 17.709254),
(41, 'ZŠ Velehrad', 33, 49.104735, 17.392907),
(42, 'ZŠ Josefa Bublíka Bánov', 34, 48.99108, 17.719595),
(43, 'ZŠ Hradčovice', 35, 49.047455, 17.58041),
(44, 'ZŠ Nedakonice', 36, 49.031417, 17.38553),
(45, 'ZŠ Mistřice', 37, 49.088316, 17.534151),
(46, 'ZŠ Topolná', 38, 49.12012, 17.542462),
(47, 'ZŠ Záhorovice', 39, 49.022917, 17.779082),
(48, 'ZŠ Horní Němčí', 40, 48.929706, 17.627129),
(49, 'ZŠ Pitín', 41, 49.038549, 17.850321),
(50, 'ZŠ Babice', 42, 49.118311, 17.476069),
(51, 'ZŠ Tomáše Garrigue Masaryka Bojkovice', 5, 49.039504, 17.806177),
(52, 'ZŠ Františka Horenského Boršice', 43, 49.063542, 17.353148),
(53, 'ZŠ Hluk', 4, 48.988244, 17.527682),
(54, 'ZŠ Ostrožská Nová Ves', 44, 49.003064, 17.43651),
(55, 'ZŠ Polešovice', 45, 49.030146, 17.342677),
(56, 'ZŠ Šumice', 46, 49.028556, 17.722397),
(57, 'ZŠ Staré Město', 47, 49.077543, 17.435019),
(58, 'ZŠ Kunovice Červená cesta', 48, 49.038548, 17.462964),
(59, 'ZŠ Uherský Ostroh', 3, 48.987818, 17.398587),
(60, 'ZŠ Kunovice U Pálenice', 48, 49.038361, 17.462924),
(61, 'ZŠ Spytihněv', 49, 49.143222, 17.49648),
(62, '1. ZŠ Napajedla', 50, 49.173254, 17.515332),
(63, '2. ZŠ Napajedla', 50, 49.172917, 17.516327),
(64, 'ZŠ Trávníky Otrokovice', 51, 49.204245, 17.544488),
(65, 'ZŠ Tomáše Garrigue Masaryka Otrokovice', 51, 49.211614, 17.534475),
(66, 'ZŠ Mánesova Otrokovice', 51, 49.217188, 17.510897),
(67, 'ZŠ Hutník Veselí nad Moravou', 52, 48.95255, 17.395032),
(68, 'ZŠ Kollárova Veselí nad Moravou', 52, 48.948504, 17.387076),
(69, 'ZŠ Louka', 53, 48.914866, 17.490728),
(70, 'ZŠ Lipov', 54, 48.904949, 17.461065),
(71, 'Masarykova ZŠ Velká nad Veličkou', 55, 48.88106, 17.514764),
(72, 'ZŠ Bzenec', 56, 48.972026, 17.27928),
(73, 'ZŠ Moravský Písek', 57, 48.989489, 17.331987),
(74, 'ZŠ Strážnice', 58, 48.898208, 17.306833),
(75, 'ZŠ Vnorovy', 59, 48.927428, 17.346391),
(76, 'Církevní ZŠ Veselí nad Moravou', 52, 48.949638, 17.37928),
(77, 'ZŠ Blatnice pod svatým Antoníkem', 60, 48.944554, 17.467152),
(78, 'ZŠ Vracov', 61, 48.979731, 17.20853),
(79, 'ZŠ Jana Ámose Komenského Žeravice', 62, 49.023317, 17.235676),
(80, 'ZŠ Halenkovice', 63, 49.172054, 17.471204),
(81, 'ZŠ Kuželov', 64, 48.863002, 17.482793),
(82, 'ZŠ Střílky', 65, 49.139728, 17.213939),
(83, 'ZŠ Luhačovice', 66, 49.1008, 17.754087),
(84, 'Gymnázium Uherské Hradiště', 1, 49.070716, 17.463067),
(106, '8', 9, 45, 45);

-- --------------------------------------------------------

--
-- Struktura tabulky `zpetna_vazba`
--

CREATE TABLE `zpetna_vazba` (
  `id` int(11) NOT NULL,
  `text` text COLLATE utf8_czech_ci NOT NULL,
  `datum` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `mesto`
--
ALTER TABLE `mesto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nazev` (`nazev`);

--
-- Klíče pro tabulku `obor`
--
ALTER TABLE `obor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `nazev` (`nazev`);

--
-- Klíče pro tabulku `pocet_prijatych`
--
ALTER TABLE `pocet_prijatych`
  ADD PRIMARY KEY (`id`),
  ADD KEY `obor` (`obor`),
  ADD KEY `skola` (`skola`);

--
-- Klíče pro tabulku `skola`
--
ALTER TABLE `skola`
  ADD PRIMARY KEY (`id`);

--
-- Klíče pro tabulku `zpetna_vazba`
--
ALTER TABLE `zpetna_vazba`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `mesto`
--
ALTER TABLE `mesto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT pro tabulku `obor`
--
ALTER TABLE `obor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT pro tabulku `pocet_prijatych`
--
ALTER TABLE `pocet_prijatych`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT pro tabulku `skola`
--
ALTER TABLE `skola`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT pro tabulku `zpetna_vazba`
--
ALTER TABLE `zpetna_vazba`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
