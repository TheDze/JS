-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Lis 2021, 12:33
-- Wersja serwera: 10.1.38-MariaDB
-- Wersja PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `tabelka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `plan`
--

CREATE TABLE `plan` (
  `ID` int(11) NOT NULL,
  `dzien` int(11) NOT NULL,
  `nr` int(11) NOT NULL,
  `nazwa` varchar(50) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `plan`
--

INSERT INTO `plan` (`ID`, `dzien`, `nr`, `nazwa`) VALUES
(1, 1, 3, 'Jezyk angielski'),
(2, 1, 4, 'Matematyka'),
(3, 1, 5, 'Matematyka'),
(4, 1, 6, 'Pracownia programowania'),
(5, 1, 7, 'Pracownia programowania'),
(6, 1, 8, 'Pracownia programowania'),
(7, 1, 9, 'Pracownia programowania'),
(8, 2, 1, 'Systemy baz'),
(9, 2, 2, 'Jezyk niemiecki'),
(10, 2, 3, 'WF'),
(11, 2, 4, 'WF'),
(12, 2, 5, 'Jezyk polski'),
(13, 2, 6, 'Jezyk polski'),
(14, 2, 7, 'Witryny'),
(15, 2, 8, 'Witryny'),
(16, 3, 2, 'Wychowawcza'),
(17, 3, 3, 'Informatyka'),
(18, 3, 4, 'Systemy baz'),
(19, 3, 5, 'Historia'),
(20, 3, 6, 'Administracja bazami'),
(21, 3, 7, 'Administracja bazami'),
(22, 3, 8, 'Administracja bazami'),
(23, 4, 1, 'Matematyka'),
(24, 4, 2, 'Angielski zawodowy'),
(25, 4, 3, 'Religia'),
(26, 4, 4, 'Przedsiebiorstwo'),
(27, 4, 5, 'Jezyk angielski'),
(28, 4, 6, 'WF'),
(29, 5, 1, 'Systemy baz'),
(30, 5, 2, 'Systemy baz'),
(31, 5, 3, 'Witryny'),
(32, 5, 4, 'Witryny'),
(33, 5, 5, 'Historia'),
(34, 5, 6, 'Pracownia programowania'),
(35, 5, 7, 'Pracownia programowania'),
(36, 5, 8, 'Pracownia programowania'),
(37, 5, 9, 'Pracownia programowania');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `plan`
--
ALTER TABLE `plan`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `plan`
--
ALTER TABLE `plan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
