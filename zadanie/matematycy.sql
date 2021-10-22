-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 22 Paź 2021, 14:14
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `matematycy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

CREATE TABLE `matematycy` (
  `id` int(11) NOT NULL,
  `imie` varchar(30) COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(30) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `matematycy`
--

INSERT INTO `matematycy` (`id`, `imie`, `nazwisko`) VALUES
(1, 'Carl', 'Gauss'),
(2, 'Stefan', 'Banach'),
(3, 'Leonhard', 'Euler'),
(4, 'Joseph', 'Fourier');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publikacje`
--

CREATE TABLE `publikacje` (
  `id` int(11) NOT NULL,
  `tytul` varchar(100) COLLATE utf8_polish_ci NOT NULL,
  `rok_wydania` varchar(7) COLLATE utf8_polish_ci NOT NULL,
  `id_autora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `publikacje`
--

INSERT INTO `publikacje` (`id`, `tytul`, `rok_wydania`, `id_autora`) VALUES
(1, 'Badania arytmetyczne', '1801r.', 1),
(2, 'Rachunek różniczkowy i całkowy', '1929r.', 2),
(3, 'Teoria operacji', '1931r.', 2),
(4, 'Teoria operacji liniowych', '1932r.', 2),
(5, 'Wprowadzenie do analizy granicy nieskończoności', '1748r.', 3),
(6, 'Rachunek różniczkowy', '1755r.', 3),
(7, 'Rachunek całkowy', '1768r.', 3),
(8, 'Analityczna teoria ciepła', '1822r.', 4),
(9, 'Analiza określonych równań', '1831r.', 4);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `matematycy`
--
ALTER TABLE `matematycy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_autora` (`id_autora`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `matematycy`
--
ALTER TABLE `matematycy`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  ADD CONSTRAINT `publikacje_ibfk_1` FOREIGN KEY (`id_autora`) REFERENCES `matematycy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
