-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2023 at 08:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opcinegradovi`
--

-- --------------------------------------------------------

--
-- Table structure for table `gradovi`
--

CREATE TABLE `gradovi` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `gradonacelnik` varchar(100) NOT NULL,
  `glavni_trg` varchar(100) NOT NULL,
  `zastavaData` varchar(400) NOT NULL,
  `grbData` varchar(400) NOT NULL,
  `br_stanovnika` int(11) NOT NULL,
  `zupanija` varchar(100) NOT NULL,
  `udaljenost_od_zg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gradovi`
--

INSERT INTO `gradovi` (`id`, `naziv`, `gradonacelnik`, `glavni_trg`, `zastavaData`, `grbData`, `br_stanovnika`, `zupanija`, `udaljenost_od_zg`) VALUES
(1, 'Prelog', 'Ljubomir Kolek', 'Trg Slobode', 'Slike/Zastave/Prelog_zastava.png', 'Slike/Grbovi/Prelog_grb.png', 7871, 'Međimurska', 103),
(2, 'Čakovec', 'Ljerka Cividni', 'Trg Republike', 'Slike/Zastave/Cakovec_zastava.png', 'Slike/Grbovi/Cakovec_grb.png', 27122, 'Međimurska', 103),
(3, 'Mursko Središće', 'Dražen Srpak', 'Trg bana Josipa Jelačića', 'Slike/Zastave/MurskoSredisce_zastava.png', 'Slike/Grbovi/MurskoSredisce_grb.png', 6548, 'Međimurska', 119);

-- --------------------------------------------------------

--
-- Table structure for table `opcine`
--

CREATE TABLE `opcine` (
  `id` int(11) NOT NULL,
  `naziv` varchar(100) NOT NULL,
  `nacelnik` varchar(100) NOT NULL,
  `glavni_trg` varchar(100) NOT NULL,
  `zastavaData` varchar(400) NOT NULL,
  `grbData` varchar(400) NOT NULL,
  `br_stanovnika` int(11) NOT NULL,
  `zupanija` varchar(100) NOT NULL,
  `udaljenost_od_zg` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `opcine`
--

INSERT INTO `opcine` (`id`, `naziv`, `nacelnik`, `glavni_trg`, `zastavaData`, `grbData`, `br_stanovnika`, `zupanija`, `udaljenost_od_zg`) VALUES
(1, 'Belica', 'Zvonimir Taradi', 'Ulica kralja Tomislava', 'Slike/Zastave/Belica_zastava.png', 'Slike/Grbovi/Belica_grb.png', 3509, 'Međimurska', 101),
(2, 'Dekanovec', 'Ivan Hajdarović', 'Ulica Florijana Andrašeca', 'Slike/Zastave/Dekanovec_zastava.png', 'Slike/Grbovi/Dekanovec_grb.png', 832, 'Međimurska', 108),
(3, 'Domašinec', 'Mario Tomašek', 'Ulica Martina Pušteka', 'Slike/Zastave/Domasinec_zastava.png', 'Slike/Grbovi/Domasinec_grb.png', 2251, 'Međimurska', 108),
(4, 'Donja Dubrava', 'Marijan Varga', 'Trg Republike', 'Slike/Zastave/DonjaDubrava_zastava.png', 'Slike/Grbovi/DonjaDubrava_grb.png', 1800, 'Međimurska', 119),
(5, 'Donji Kraljevec', 'Miljenko Horvat', 'Koldvorska ulica', 'Slike/Zastave/DonjiKraljevec_zastava.png', 'Slike/Grbovi/DonjiKraljevec_grb.png', 4404, 'Međimurska', 106),
(6, 'Donji Vidovec', 'Bojana Petrić', 'Trg Oslobođenja', 'Slike/Zastave/DonjiVidovec_zastava.png', 'Slike/Grbovi/DonjiVidovec_grb.png', 1349, 'Međimurska', 116),
(7, 'Goričan', 'Emanuel Sinković', 'Trg Sv. Leonarda', 'Slike/Zastave/Gorican_zastava.png', 'Slike/Grbovi/Gorican_grb.png', 2679, 'Međimurska', 112),
(8, 'Kotoriba', 'Dario Friščić', 'Koldvorska ulica', 'Slike/Zastave/Kotoriba_zastava.png', 'Slike/Grbovi/Kotoriba_grb.png', 3188, 'Međimurska', 121),
(9, 'Mala Subotica', 'Valentino Škvorc', 'Marijin trg', 'Slike/Zastave/MalaSubotica_zastava.png', 'Slike/Grbovi/MalaSubotica_grb.png', 5452, 'Međimurska', 97),
(10, 'Nedelišće', 'Nikola Novak', 'Trg Republike', 'Slike/Zastave/Nedelisce_zastava.png', 'Slike/Grbovi/Nedelisce_grb.png', 11975, 'Međimurska', 94),
(11, 'Orehovica', 'Dijana Novak', 'Čakovečka ulica', 'Slike/Zastave/Orehovica_zastava.png', 'Slike/Grbovi/Orehovica_grb.png', 2685, 'Međimurska', 97),
(12, 'Podturen', 'Perica Hajdarović', 'Trg Kalvarije', 'Slike/Zastave/Podturen_zastava.png', 'Slike/Grbovi/Podturen_grb.png', 3699, 'Međimurska', 111),
(13, 'Pribislavec', 'Matija Ladić', 'Ulica Braće Radić', 'Slike/Zastave/Pribislavec_zastava.png', 'Slike/Grbovi/Pribislavec_grb.png', 3188, 'Međimurska', 100),
(14, 'Selnica', 'Ervin Vičević', 'Jelačićev trg', 'Slike/Zastave/Selnica_zastava.png', 'Slike/Grbovi/Selnica_grb.png', 2980, 'Međimurska', 116),
(15, 'Strahoninec', 'Franjo Lehkec', 'Dravska ulica', 'Slike/Zastave/Strahoninec_zastava.png', 'Slike/Grbovi/Strahoninec_grb.png', 2654, 'Međimurska', 103),
(16, 'Sveta Marija', 'Đurđica Slamek', 'Trg bana Jelačića', 'Slike/Zastave/SvetaMarija_zastava.png', 'Slike/Grbovi/SvetaMarija_grb.png', 2317, 'Međimurska', 113),
(17, 'Sveti Juraj na Bregu', 'Anđelko Nagrajsalović', 'Glavna', 'Slike/Zastave/SvetiJurajnaBregu_zastava.png', 'Slike/Grbovi/SvetiJurajnaBregu_grb.png', 5090, 'Međimurska', 108),
(18, 'Sveti Martin na Muri', 'Martin Srša', 'Trg Sv. Martina', 'Slike/Zastave/SvetiMartinNaMuri_zastava.png', 'Slike/Grbovi/SvetiMartinNaMuri_grb.png', 2564, 'Međimurska', 120),
(19, 'Šenkovec', 'Robert Meglić', 'Trg Sv. Jelene', 'Slike/Zastave/Senkovec_zastava.png', 'Slike/Grbovi/Senkovec_grb.png', 2879, 'Međimurska', 104),
(20, 'Štrigova', 'Stanislav Rebernik', 'Glavna', 'Slike/Zastave/Strigova_zastava.png', 'Slike/Grbovi/Strigova_grb.png', 2706, 'Međimurska', 111),
(21, 'Vratišinec', 'Mihael Grbavec', 'Ul. dr. Vinka Žganca', 'Slike/Zastave/Vratisinec_zastava.png', 'Slike/Grbovi/Vratisinec_grb.png', 1984, 'Međimurska', 113);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gradovi`
--
ALTER TABLE `gradovi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opcine`
--
ALTER TABLE `opcine`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gradovi`
--
ALTER TABLE `gradovi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `opcine`
--
ALTER TABLE `opcine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
