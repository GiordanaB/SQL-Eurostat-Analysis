-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Ott 16, 2026 alle 12:09
-- Versione del server: 10.4.32-MariaDB
-- Versione PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progetto_tesi`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `anni`
--

CREATE TABLE `anni` (
  `anno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `anni`
--

INSERT INTO `anni` (`anno`) VALUES
(2022),
(2023),
(2024);

-- --------------------------------------------------------

--
-- Struttura della tabella `disoccupazione_demografica`
--

CREATE TABLE `disoccupazione_demografica` (
  `id_demografia` int(11) NOT NULL,
  `id_regione` int(11) NOT NULL,
  `anno` int(11) NOT NULL,
  `tasso_disoccupazione_uomini` decimal(5,2) NOT NULL,
  `tasso_disoccupazione_donne` decimal(5,2) NOT NULL,
  `tasso_disoccupazione_giovani` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `disoccupazione_demografica`
--

INSERT INTO `disoccupazione_demografica` (`id_demografia`, `id_regione`, `anno`, `tasso_disoccupazione_uomini`, `tasso_disoccupazione_donne`, `tasso_disoccupazione_giovani`) VALUES
(1, 1, 2022, 6.90, 12.90, 23.80),
(2, 1, 2023, 7.50, 8.80, 20.60),
(3, 1, 2024, 6.60, 7.70, 30.20),
(4, 2, 2022, 5.60, 9.50, 25.10),
(5, 2, 2023, 6.10, 9.70, 25.10),
(6, 2, 2024, 5.10, 9.30, 22.30),
(7, 3, 2022, 13.30, 16.60, 34.80),
(8, 3, 2023, 14.00, 19.00, 44.40),
(9, 3, 2024, 12.00, 14.80, 42.60),
(10, 4, 2022, 15.50, 20.00, 42.60),
(11, 4, 2023, 15.50, 20.70, 40.80),
(12, 4, 2024, 14.20, 17.80, 38.80),
(13, 5, 2022, 4.10, 6.20, 17.30),
(14, 5, 2023, 3.90, 6.20, 17.00),
(15, 5, 2024, 3.40, 5.40, 12.30),
(16, 6, 2022, 4.30, 6.60, 15.50),
(17, 6, 2023, 3.60, 5.70, 14.10),
(18, 6, 2024, 3.70, 5.10, 11.30),
(19, 7, 2022, 6.60, 9.10, 26.40),
(20, 7, 2023, 6.00, 8.70, 21.40),
(21, 7, 2024, 5.30, 7.50, 23.00),
(22, 8, 2022, 5.50, 8.80, 23.20),
(23, 8, 2023, 4.90, 7.50, 20.30),
(24, 8, 2024, 4.70, 6.30, 22.20),
(25, 9, 2022, 3.80, 6.20, 16.40),
(26, 9, 2023, 3.40, 4.80, 15.40),
(27, 9, 2024, 3.20, 4.30, 12.70),
(28, 10, 2022, 5.20, 7.50, 21.10),
(29, 10, 2023, 4.40, 6.10, 17.70),
(30, 10, 2024, 4.60, 5.70, 15.90),
(31, 11, 2022, 10.10, 11.20, 30.80),
(32, 11, 2023, 8.60, 11.00, 0.00),
(33, 11, 2024, 6.40, 10.10, 39.80),
(34, 12, 2022, 5.90, 7.20, 20.60),
(35, 12, 2023, 5.40, 7.10, 20.30),
(36, 12, 2024, 4.90, 6.00, 18.30),
(37, 13, 2022, 10.10, 15.60, 32.00),
(38, 13, 2023, 9.30, 15.40, 32.50),
(39, 13, 2024, 8.20, 11.10, 27.70),
(40, 14, 2022, 10.20, 13.30, 27.40),
(41, 14, 2023, 10.20, 9.90, 26.70),
(42, 14, 2024, 8.00, 8.80, 23.00),
(43, 15, 2022, 15.20, 19.00, 43.20),
(44, 15, 2023, 14.40, 18.00, 42.00),
(45, 15, 2024, 11.80, 15.00, 36.50),
(46, 16, 2022, 5.20, 7.10, 20.00),
(47, 16, 2023, 4.40, 6.30, 17.80),
(48, 16, 2024, 3.10, 5.10, 13.40),
(49, 17, 2022, 2.80, 5.00, 12.00),
(50, 17, 2023, 3.00, 4.70, 13.40),
(51, 17, 2024, 2.50, 3.00, 12.70),
(52, 18, 2022, 6.40, 8.10, 16.90),
(53, 18, 2023, 4.40, 7.90, 18.30),
(54, 18, 2024, 4.40, 5.40, 17.10),
(55, 19, 2022, 0.00, 6.40, 0.00),
(56, 19, 2023, 0.00, 0.00, 0.00),
(57, 19, 2024, 0.00, 0.00, 0.00),
(58, 20, 2022, 3.30, 5.30, 13.40),
(59, 20, 2023, 3.50, 5.20, 14.10),
(60, 20, 2024, 2.10, 4.10, 10.90);

-- --------------------------------------------------------

--
-- Struttura della tabella `indicatori_regionali`
--

CREATE TABLE `indicatori_regionali` (
  `id_indicatore` int(11) NOT NULL,
  `id_regione` int(11) NOT NULL,
  `anno` int(11) NOT NULL,
  `tasso_disoccupazione` decimal(5,2) NOT NULL,
  `percentuale_laureati` decimal(5,2) NOT NULL,
  `quota_neet` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `indicatori_regionali`
--

INSERT INTO `indicatori_regionali` (`id_indicatore`, `id_regione`, `anno`, `tasso_disoccupazione`, `percentuale_laureati`, `quota_neet`) VALUES
(1, 1, 2022, 9.40, 21.60, 17.90),
(3, 1, 2023, 8.10, 22.20, 15.20),
(4, 1, 2024, 7.10, 23.80, 17.20),
(5, 2, 2022, 7.10, 17.50, 20.60),
(6, 2, 2023, 7.50, 19.70, 16.90),
(7, 2, 2024, 6.70, 20.20, 17.00),
(8, 3, 2022, 14.60, 16.60, 28.20),
(9, 3, 2023, 15.90, 19.00, 27.20),
(10, 3, 2024, 13.10, 20.10, 26.20),
(11, 4, 2022, 17.10, 16.90, 29.70),
(12, 4, 2023, 17.40, 17.80, 26.90),
(13, 4, 2024, 15.60, 18.70, 24.90),
(14, 5, 2022, 5.00, 22.80, 12.20),
(15, 5, 2023, 5.00, 23.70, 11.00),
(16, 5, 2024, 4.30, 24.90, 9.60),
(17, 6, 2022, 5.30, 22.80, 13.50),
(18, 6, 2023, 4.60, 23.70, 11.00),
(19, 6, 2024, 4.30, 24.90, 10.60),
(20, 7, 2022, 7.70, 26.70, 17.00),
(21, 7, 2023, 7.20, 28.40, 13.70),
(22, 7, 2024, 6.30, 28.30, 15.20),
(23, 8, 2022, 7.00, 22.30, 14.80),
(24, 8, 2023, 6.10, 23.50, 11.30),
(25, 8, 2024, 5.40, 23.80, 12.40),
(26, 9, 2022, 4.90, 21.80, 13.60),
(27, 9, 2023, 4.00, 23.50, 10.60),
(28, 9, 2024, 3.70, 23.90, 10.10),
(29, 10, 2022, 6.20, 22.60, 13.10),
(30, 10, 2023, 5.20, 23.20, 10.60),
(31, 10, 2024, 5.10, 24.20, 10.60),
(32, 11, 2022, 10.50, 20.20, 20.90),
(33, 11, 2023, 9.60, 21.90, 18.10),
(34, 11, 2024, 7.90, 23.10, 19.00),
(35, 12, 2022, 6.50, 19.90, 15.40),
(36, 12, 2023, 6.20, 20.90, 11.70),
(37, 12, 2024, 5.40, 21.20, 9.80),
(38, 13, 2022, 12.10, 16.20, 26.00),
(39, 13, 2023, 11.60, 17.50, 22.20),
(40, 13, 2024, 9.30, 18.00, 21.40),
(41, 14, 2022, 11.50, 17.90, 21.40),
(42, 14, 2022, 10.10, 18.60, 19.60),
(43, 14, 2024, 8.30, 19.00, 17.80),
(44, 15, 2022, 16.60, 15.20, 32.40),
(45, 15, 2023, 15.80, 16.80, 27.90),
(46, 15, 2024, 13.00, 17.80, 25.70),
(47, 16, 2022, 6.00, 21.50, 13.80),
(48, 16, 2023, 5.30, 22.40, 11.00),
(49, 16, 2024, 4.00, 23.30, 11.00),
(50, 17, 2022, 3.00, 19.80, 10.50),
(51, 17, 2023, 2.80, 21.20, 8.80),
(52, 17, 2024, 2.30, 21.40, 7.70),
(53, 18, 2022, 7.10, 22.50, 14.40),
(54, 18, 2023, 6.00, 23.80, 10.50),
(55, 18, 2024, 4.80, 25.60, 10.10),
(56, 19, 2022, 5.40, 19.60, 15.30),
(57, 19, 2023, 4.00, 20.80, 9.90),
(58, 19, 2024, 3.90, 21.40, 10.30),
(59, 20, 2022, 4.20, 19.70, 13.10),
(60, 20, 2023, 4.20, 20.50, 10.50),
(61, 20, 2024, 3.00, 21.70, 9.00);

-- --------------------------------------------------------

--
-- Struttura della tabella `regioni`
--

CREATE TABLE `regioni` (
  `id_regione` int(11) NOT NULL,
  `nome_regione` varchar(50) NOT NULL,
  `area_geografica` enum('Nord','Centro','Mezzogiorno','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dump dei dati per la tabella `regioni`
--

INSERT INTO `regioni` (`id_regione`, `nome_regione`, `area_geografica`) VALUES
(1, 'Abruzzo', 'Mezzogiorno'),
(2, 'Basilicata', 'Mezzogiorno'),
(3, 'Calabria', 'Mezzogiorno'),
(4, 'Campania', 'Mezzogiorno'),
(5, 'Emilia_Romagna', 'Nord'),
(6, 'Friuli_Venezia_Giulia', 'Nord'),
(7, 'Lazio', 'Centro'),
(8, 'Liguria', 'Nord'),
(9, 'Lombardia', 'Nord'),
(10, 'Marche', 'Centro'),
(11, 'Molise', 'Mezzogiorno'),
(12, 'Piemonte', 'Nord'),
(13, 'Puglia', 'Mezzogiorno'),
(14, 'Sardegna', 'Mezzogiorno'),
(15, 'Sicilia', 'Mezzogiorno'),
(16, 'Toscana', 'Centro'),
(17, 'Trentino_Alto_Adige', 'Nord'),
(18, 'Umbria', 'Centro'),
(19, 'Valle_Daosta', 'Nord'),
(20, 'Veneto', 'Nord');

-- --------------------------------------------------------

--
-- Struttura stand-in per le viste `vista_macroaree_2022`
-- (Vedi sotto per la vista effettiva)
--
CREATE TABLE `vista_macroaree_2022` (
`macroarea` varchar(11)
,`media_disoccupazione_giovani` decimal(6,2)
,`divario_medio_genere` decimal(7,2)
);

-- --------------------------------------------------------

--
-- Struttura per vista `vista_macroaree_2022`
--
DROP TABLE IF EXISTS `vista_macroaree_2022`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_macroaree_2022`  AS SELECT CASE WHEN `r`.`nome_regione` in ('Piemonte','Valle_Daosta','Liguria','Lombardia','Trentino_Alto_Adige','Veneto','Friuli_Venezia_Giulia','Emilia_Romagna') THEN 'Nord' WHEN `r`.`nome_regione` in ('Toscana','Umbria','Marche','Lazio') THEN 'Centro' ELSE 'Mezzogiorno' END AS `macroarea`, round(avg(`d`.`tasso_disoccupazione_giovani`),2) AS `media_disoccupazione_giovani`, round(avg(`d`.`tasso_disoccupazione_donne` - `d`.`tasso_disoccupazione_uomini`),2) AS `divario_medio_genere` FROM (`disoccupazione_demografica` `d` join `regioni` `r` on(`d`.`id_regione` = `r`.`id_regione`)) WHERE `d`.`anno` = 2022 GROUP BY CASE WHEN `r`.`nome_regione` in ('Piemonte','Valle_Daosta','Liguria','Lombardia','Trentino_Alto_Adige','Veneto','Friuli_Venezia_Giulia','Emilia_Romagna') THEN 'Nord' WHEN `r`.`nome_regione` in ('Toscana','Umbria','Marche','Lazio') THEN 'Centro' ELSE 'Mezzogiorno' END ORDER BY round(avg(`d`.`tasso_disoccupazione_giovani`),2) DESC ;

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `anni`
--
ALTER TABLE `anni`
  ADD PRIMARY KEY (`anno`);

--
-- Indici per le tabelle `disoccupazione_demografica`
--
ALTER TABLE `disoccupazione_demografica`
  ADD PRIMARY KEY (`id_demografia`),
  ADD KEY `anno` (`anno`),
  ADD KEY `id_regione` (`id_regione`);

--
-- Indici per le tabelle `indicatori_regionali`
--
ALTER TABLE `indicatori_regionali`
  ADD PRIMARY KEY (`id_indicatore`),
  ADD KEY `id_regione` (`id_regione`),
  ADD KEY `anno` (`anno`);

--
-- Indici per le tabelle `regioni`
--
ALTER TABLE `regioni`
  ADD PRIMARY KEY (`id_regione`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `disoccupazione_demografica`
--
ALTER TABLE `disoccupazione_demografica`
  MODIFY `id_demografia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT per la tabella `indicatori_regionali`
--
ALTER TABLE `indicatori_regionali`
  MODIFY `id_indicatore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT per la tabella `regioni`
--
ALTER TABLE `regioni`
  MODIFY `id_regione` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `disoccupazione_demografica`
--
ALTER TABLE `disoccupazione_demografica`
  ADD CONSTRAINT `disoccupazione_demografica_ibfk_1` FOREIGN KEY (`anno`) REFERENCES `anni` (`anno`),
  ADD CONSTRAINT `disoccupazione_demografica_ibfk_2` FOREIGN KEY (`id_regione`) REFERENCES `regioni` (`id_regione`);

--
-- Limiti per la tabella `indicatori_regionali`
--
ALTER TABLE `indicatori_regionali`
  ADD CONSTRAINT `indicatori_regionali_ibfk_1` FOREIGN KEY (`id_regione`) REFERENCES `regioni` (`id_regione`),
  ADD CONSTRAINT `indicatori_regionali_ibfk_2` FOREIGN KEY (`anno`) REFERENCES `anni` (`anno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
