-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 19 mei 2017 om 13:56
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `over_de_rhein`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hijstesten2`
--

CREATE TABLE `hijstesten2` (
  `opdrachtnummer` int(11) NOT NULL,
  `volgnummer` int(11) NOT NULL,
  `datum_opgesteld` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `hoofdgiek_lengte` double NOT NULL,
  `mech_sectie_gieklengte` double NOT NULL,
  `hulpgiek_lengte` double NOT NULL,
  `hoofdgiek_giekhoek` double NOT NULL,
  `hulpgiek_giekhoek` double NOT NULL,
  `hijstabel_aantal_parten` int(11) NOT NULL,
  `zwenkhoek` double NOT NULL,
  `eigen_massa_ballast` double NOT NULL,
  `toelaatbare_bedrijfslast` double NOT NULL,
  `lmb_in_werking` double NOT NULL,
  `proeflast` double NOT NULL,
  `akkoord` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hijstesten2`
--

INSERT INTO `hijstesten2` (`opdrachtnummer`, `volgnummer`, `datum_opgesteld`, `hoofdgiek_lengte`, `mech_sectie_gieklengte`, `hulpgiek_lengte`, `hoofdgiek_giekhoek`, `hulpgiek_giekhoek`, `hijstabel_aantal_parten`, `zwenkhoek`, `eigen_massa_ballast`, `toelaatbare_bedrijfslast`, `lmb_in_werking`, `proeflast`, `akkoord`) VALUES
(1, 202, '2017-05-16 07:03:39', 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 1),
(1, 203, '2017-05-19 11:13:12', 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 30, 1),
(1, 204, '2017-05-19 11:13:21', 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 40, 1),
(2, 205, '2017-05-19 11:23:26', 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 1),
(2, 206, '2017-05-19 11:23:26', 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 1),
(3, 207, '2017-05-19 11:23:26', 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `opdrachten1`
--

CREATE TABLE `opdrachten1` (
  `opdrachtnummer` int(11) NOT NULL,
  `werkinstructie` varchar(255) NOT NULL,
  `datum_uitvoering` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kabelleverancier` varchar(250) NOT NULL,
  `waarnemingen` varchar(500) NOT NULL,
  `handtekening` varchar(255) NOT NULL,
  `aantal_bedrijfsuren` int(11) NOT NULL,
  `afleg_redenen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `opdrachten1`
--

INSERT INTO `opdrachten1` (`opdrachtnummer`, `werkinstructie`, `datum_uitvoering`, `kabelleverancier`, `waarnemingen`, `handtekening`, `aantal_bedrijfsuren`, `afleg_redenen`) VALUES
(1, 'Uitvoering kraankeuring', '2017-05-12 13:41:25', 'Hoge Kranen BV. ', 'Waarneming', 'Handtekening', 11, 'Aflegreden'),
(2, 'Uitvoering kraankeuring', '2017-05-12 13:41:25', 'High Cranes. ', 'Waarneming', 'Handtekening', 23, 'Aflegreden'),
(3, 'Uitvoering kraankeuring', '2017-05-12 13:41:25', 'Kranen BV. ', 'Waarneming', 'Handtekening', 34, 'Aflegreden'),
(4, 'Uitvoering kraankeuring', '2017-05-12 13:41:25', 'Crane BV. ', 'Waarneming', 'Handtekening', 5, 'Aflegreden');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `opdrachten1`
--
ALTER TABLE `opdrachten1`
  ADD PRIMARY KEY (`opdrachtnummer`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `opdrachten1`
--
ALTER TABLE `opdrachten1`
  MODIFY `opdrachtnummer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
