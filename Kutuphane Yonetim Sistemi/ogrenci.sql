-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 14 Haz 2020, 20:25:08
-- Sunucu sürümü: 5.7.17-log
-- PHP Sürümü: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `ogrenci`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `emanet`
--

CREATE TABLE `emanet` (
  `kitapID` int(11) NOT NULL,
  `İsim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Baskı` int(11) NOT NULL,
  `Yayımcı` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Fiyat` int(11) NOT NULL,
  `Sayfa` int(11) NOT NULL,
  `ogrenciID` int(11) NOT NULL,
  `ogrenciIsim` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `BabaAdi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Ders` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Sube` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Sene` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Donem` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Tarih` varchar(20) COLLATE utf8_turkish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `emanet`
--

INSERT INTO `emanet` (`kitapID`, `İsim`, `Baskı`, `Yayımcı`, `Fiyat`, `Sayfa`, `ogrenciID`, `ogrenciIsim`, `BabaAdi`, `Ders`, `Sube`, `Sene`, `Donem`, `Tarih`) VALUES
(494, 'mahşer', 2, 'sdfsd', 122, 555, 388, 'gamze güler', 'erhan', 'YAZILIM GEREKSİNİMLERİ VE ANALİZİ_YAZILIM MÜHENDİSLİĞİ_YAZILIM MÜHENDİSLİĞİ', 'sadas', '1', '4', '22.May.2020'),
(604, 'king kong', 3, 'sdfsd', 1232, 2222, 388, 'gamze güler', 'erhan', 'YAZILIM GEREKSİNİMLERİ VE ANALİZİ_YAZILIM MÜHENDİSLİĞİ_YAZILIM MÜHENDİSLİĞİ', 'sadas', '1', '4', '22.May.2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hesap`
--

CREATE TABLE `hesap` (
  `KullaniciAdi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `İsim` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Sifre` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Soru` varchar(40) COLLATE utf8_turkish_ci NOT NULL,
  `Cevap` varchar(40) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `hesap`
--

INSERT INTO `hesap` (`KullaniciAdi`, `İsim`, `Sifre`, `Soru`, `Cevap`) VALUES
('ab', 'ab', 'ab', 'Takma ismin nedir?', 'ab'),
('asd', 'asd', '111', 'Anne kızlık soyadı nedir?', 'asd'),
('cino', 'ibo', 'cino', 'Takma ismin nedir?', 'cino'),
('eee', 'eee', 'eee', 'Okulunuzun ismi nedir?', 'eee'),
('emmi', 'emmi', 'emmi', 'İlk çocukluk arkadaşın kimdir?', 'emmi'),
('hakan2', 'hakan', 'çelik', 'Takma ismin nedir?', 'hako'),
('hakan41', 'hakan', '123', 'Takma ismin nedir?', 'hako'),
('ibo', 'iboo', 'ibo1', 'Takma ismin nedir?', 'çino'),
('yeni', 'yeni', '22', 'Takma ismin nedir?', 'fghh');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `iade`
--

CREATE TABLE `iade` (
  `ogrenciID` int(11) NOT NULL,
  `İsim` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `BabaAdi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Ders` varchar(200) COLLATE utf8_turkish_ci NOT NULL,
  `Sube` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Sene` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Donem` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `kitapID` int(11) NOT NULL,
  `kitapIsim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Baskı` int(11) NOT NULL,
  `Yayımcı` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Fiyat` int(11) NOT NULL,
  `Sayfa` int(11) NOT NULL,
  `VerilisTarihi` varchar(20) COLLATE utf8_turkish_ci NOT NULL,
  `AlinisTarihi` varchar(20) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `iade`
--

INSERT INTO `iade` (`ogrenciID`, `İsim`, `BabaAdi`, `Ders`, `Sube`, `Sene`, `Donem`, `kitapID`, `kitapIsim`, `Baskı`, `Yayımcı`, `Fiyat`, `Sayfa`, `VerilisTarihi`, `AlinisTarihi`) VALUES
(461, 'hakan', 'hakan', 'AĞ PROGRAMLAMA_YAZILIM MÜHENDİSLİĞİ_YAZILIM MÜHENDİSLİĞİ', 'B', '3', '6', 494, 'mahşer', 2, 'sdfsd', 122, 555, '21.May.2020', '24.May.2020');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kitap`
--

CREATE TABLE `kitap` (
  `kitapID` int(11) NOT NULL,
  `İsim` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Baskı` int(11) NOT NULL,
  `Yayımcı` varchar(50) COLLATE utf8_turkish_ci NOT NULL,
  `Fiyat` int(11) NOT NULL,
  `Sayfa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `kitap`
--

INSERT INTO `kitap` (`kitapID`, `İsim`, `Baskı`, `Yayımcı`, `Fiyat`, `Sayfa`) VALUES
(494, 'mahşer', 2, 'sdfsd', 122, 555),
(604, 'king kong', 3, 'sdfsd', 1232, 2222),
(815, 'killa hakan', 6, 'killa', 1, 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ogrenci`
--

CREATE TABLE `ogrenci` (
  `ogrenciID` int(11) NOT NULL,
  `İsim` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `BabaAdi` varchar(25) COLLATE utf8_turkish_ci NOT NULL,
  `Ders` varchar(250) COLLATE utf8_turkish_ci NOT NULL,
  `Sube` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Sene` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `Donem` varchar(15) COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ogrenci`
--

INSERT INTO `ogrenci` (`ogrenciID`, `İsim`, `BabaAdi`, `Ders`, `Sube`, `Sene`, `Donem`) VALUES
(388, 'gamze güler', 'erhan', 'YAZILIM GEREKSİNİMLERİ VE ANALİZİ_YAZILIM MÜHENDİSLİĞİ_YAZILIM MÜHENDİSLİĞİ', 'sadas', '1', '4'),
(461, 'hakan', 'hakan', 'AĞ PROGRAMLAMA_YAZILIM MÜHENDİSLİĞİ_YAZILIM MÜHENDİSLİĞİ', 'B', '3', '6');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `hesap`
--
ALTER TABLE `hesap`
  ADD PRIMARY KEY (`KullaniciAdi`);

--
-- Tablo için indeksler `iade`
--
ALTER TABLE `iade`
  ADD PRIMARY KEY (`ogrenciID`);

--
-- Tablo için indeksler `kitap`
--
ALTER TABLE `kitap`
  ADD PRIMARY KEY (`kitapID`);

--
-- Tablo için indeksler `ogrenci`
--
ALTER TABLE `ogrenci`
  ADD PRIMARY KEY (`ogrenciID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
