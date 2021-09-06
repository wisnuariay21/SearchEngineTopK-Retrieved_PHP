-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Sep 2021 pada 15.27
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jamtangan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamtangan`
--

CREATE TABLE `jamtangan` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `similaritas` int(11) NOT NULL,
  `databersih` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jamtangan`
--

INSERT INTO `jamtangan` (`id`, `nama`, `gambar`, `harga`, `similaritas`, `databersih`) VALUES
(1, 'UANG KEMBALI JIKA TIDAK ORI BISA BAYAR DI TEMPAT JAM TANGAN CASIO PRIA AW-80-1A ORIGINAL jam tangan original jam tangan digital jam tangan analog akse', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQHa59RjR1Y7Su_oxb6Bwq7qAEU6ug8G9ut5WKTig456Zz9KSx3YUlB-bj3lA&amp;usqp=CAE', 810000, 0, 'uang ori bayar tempat jam tangan casio pria aw-80-1a original jam tangan original jam tangan digital jam tangan analog akse810000'),
(2, 'Casio MTP-E171L-5EVDF White Dial Brown Leather Strap', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcR2jUt5S-cczyU7o2-8CizU6UIEtislFvdM0sCnO8y1RglfGiwtrqZNqRhZ5W0oXrWciEU6nc6p&amp;usqp=CAE', 532000, 0, 'casio mtp-e171l-5evdf white dial brown leather strap532000'),
(3, 'CASIO QUARTZ AQF-102W', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTxMBheHvB9Cc7SRUW7-ydeBOh9umcjCK27EoZvUbjBQdqGGeMwq16KGPBlvA&amp;usqp=CAE', 700000, 0, 'casio quartz aqf-102w700000'),
(4, 'Casio G-Shock DW-5600MS-1DR Men Digital Dial Black Resin Strap', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTPY_FhzAbG9WJdwlyzwuQB0EQJS8UG25iqHvJS_wGBg-qY3mjtoSMaxZodLLLOn6yewx2SF14&amp;usqp=CAE', 1139000, 0, 'casio g-shock dw-5600ms-1dr men digital dial black resin strap1139000'),
(5, 'Casio Sport / AE-1200WHB-3B / AE-1200WHB-1B / Jam Tangan Pria / Green / Strap Resin CasioRubber', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQmSm3c3jdvKzyew2GPhRgT3mNIqwd8EaY73S7lM5_zckODSh1Myqg_AMW4enGlYittXsflGe9a&amp;usqp=CAE', 311000, 0, 'casio sport ae-1200whb-3b ae-1200whb-1b jam tangan pria green strap resin casiorubber311000'),
(6, 'Casio G-shock DW-5600HR-1DR Man Digital Dial Black Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcT9s6gOZyjQaVqpoRrFGQU1SZ0xXU3I-jPEAQDWTqs_wG0F40yBeMrjzCeOJNIx9f3dl_OwZwe6&amp;usqp=CAE', 1103000, 0, 'casio g-shock dw-5600hr-1dr man digital dial black resin strap1103000'),
(7, 'Mtp_V001D_1B Jam Tangan Casio Original Pria', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRKveQtFcXSXH3HoGrrTysfuWbg_rGQf5b6Ik6LXy1VX590OI38_axSj3GkZ3K4Dhs3znIclbc&amp;usqp=CAE', 329900, 0, 'mtp v001d 1b jam tangan casio original pria329900'),
(8, 'Casio General AE-3000WD-1AVDF Men Digital Dial Stainless Steel Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSfsbTVcmmcA0cgCMII8IaMDqO4BuQmlK-WjN81CHV8c12Odt21iwltwDi4N_--o6N-C7zyLmI&amp;usqp=CAE', 581000, 0, 'casio general ae-3000wd-1avdf men digital dial stainless steel strap581000'),
(9, 'CASIO QUARTZ MTP-1183A-7ADF CasioSilverStainless Steel', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTuKZ015T8d3TOVGejXFWPXJvjQFh1FdUeS9NkBmxGMywHUj0IlEF9LJ4Vmm0XyFpJWVY7HqE0&amp;usqp=CAE', 500000, 0, 'casio quartz mtp-1183a-7adf casiosilverstainless steel500000'),
(10, 'Jam Tangan Pria Casio Edifice EFR-564 BL Leather Black Original BM (Black Market Non Garansi)', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQ-xDwWOakKWMIzdbH2rwq7e-Yz0n70XrIQ0gno4WI2Pdpr-rDrDKFCuL8sWg&amp;usqp=CAE', 620000, 0, 'jam tangan pria casio edifice efr-564 bl leather black original bm black market non garansi 620000'),
(11, 'Casio G-Shock DW-D5500BB-1DR Clock Alarm Chronograph Black Resin Band', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSY8UMYVWc6Lzyw1jLEpgxsEUS08tVW-Vp6yt5dpWTD9NQ-8YJtuJhfMIAXhc_FciCb2ynOONQ&amp;usqp=CAE', 1245000, 0, 'casio g-shock dw-d5500bb-1dr clock alarm chronograph black resin band1245000'),
(12, 'Jam Tangan CASIO original murah', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcS53jlOTaWbcpucRh7C9QoYjLMp53N-o3nmK-DxNfIj9dwmpF7T0cmprVUMd4I95J1xlBtZvI6-&amp;usqp=CAE', 39900, 0, 'jam tangan casio original murah39900'),
(13, 'Casio General B640WGG-9DF Digital Dial Gold Stainless Steel Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTh3IwmJvB5xIHvn5TdCgpK6z845DGHNFxE4F0A7hi-_1Qk7Sy3j7deeydFSi3LmjseO-4czM5V&amp;usqp=CAE', 635000, 0, 'casio general b640wgg-9df digital dial gold stainless steel strap635000'),
(14, 'Casio General Retro A178WGA-1ADF Digital Dial Gold Tone Stainless Steel Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcRlr21KZT60P3dlZgXX83Z0RcswieqD5hGxXhV0xRqqGufrcypziNWlwFlfaNqhzcs2AwQXbXk1&amp;usqp=CAE', 549000, 0, 'casio general retro a178wga-1adf digital dial gold tone stainless steel strap549000'),
(15, 'Casio G-Shock G-2900F-2VER Men Digital Dial Blue Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQcl-mrgHnujswYH_5j5HR-rmxRe22-KVy1bpfJGr9QkZO_iIlsrydZim80zIFF3KY8aSWSpk7q&amp;usqp=CAE', 1271000, 0, 'casio g-shock g-2900f-2ver men digital dial blue resin strap1271000'),
(16, 'JAM TANGAN CASIO AQ-1900W-1AVDF CasioRubber', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcSrPcGO3-SLLmil0KhUzKMW4T968_BMjasYGVRLUvbO0oXHuba5r4fQiRROvw&amp;usqp=CAE', 850000, 0, 'jam tangan casio aq-1900w-1avdf casiorubber850000'),
(17, 'Casio Casio G-Shock GX-56BB-1DR Solar Powered Water Resistant 200M Black Resin Band', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT1zWJeDdApUGW6k7zVSVmIe-jK1ilw49sIuTx6Kp_yF72Ij5XLqu0q-EZuaN8uUUWfuEFqeczP&amp;usqp=CAE', 2119000, 0, 'casio casio g-shock gx-56bb-1dr solar powered water resistant 200m black resin band2119000'),
(18, 'Casio G-Shock GA-100-1A2DR Analog-Digital Resin Band 200M Water Resistant', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQuBJq5zqCdDIpEXybmKaqAbpb1ELxb5M3o3Dn6rQqbNrmtvHysXFgS8U35xcYCHgk9vxM3aEQ&amp;usqp=CAE', 1277000, 0, 'casio g-shock ga-100-1a2dr analog-digital resin band 200m water resistant1277000'),
(19, 'Casio G-Shock GA-100-1A1DR Analog-Digital Resin Band 200M Water Resistant', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcTNpwn-80hvXQqSyyM_XDlrZMs-h9UAI8PRYHuz9HIpYNffHBAKfLFviKYHZMl04Fo6eGLv_-T_&amp;usqp=CAE', 1277000, 0, 'casio g-shock ga-100-1a1dr analog-digital resin band 200m water resistant1277000'),
(20, 'Casio G-shock G-Squad GBA-800LU-1ADR Black Digital Analog Dial Black Resin Strap', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSQBrLPXQ90AfPCQxxmDDumQXr9j02WRoYBaTydHdnUJ9EANBOLPKMFfYYaim7NydjiXt_8F6q-&amp;usqp=CAE', 1397000, 0, 'casio g-shock g-squad gba-800lu-1adr black digital analog dial black resin strap1397000'),
(21, 'Casio General MTP-E501-1AVDF Black Dial Black Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQhYimVP2sStxsw57RdCq7h764o6Tg_D6e2hSA-8L2RSengP2TTouHyRiVPx8eJbeivratOC7UT&amp;usqp=CAE', 898000, 0, 'casio general mtp-e501-1avdf black dial black resin strap898000'),
(22, 'Casio G-Shock GA-100-1A4DR Analog-Digital Resin Band 200M Water Resistant', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcT_ShJZEFvRKVF6nuEDbz92za-paI6oLBlnAJzfd9r-9ieVR_3PZ3pBJxeA5upczTC2oEbtSD0&amp;usqp=CAE', 1277000, 0, 'casio g-shock ga-100-1a4dr analog-digital resin band 200m water resistant1277000'),
(23, 'Casio Edifice EFR-546L-1AVUDF', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcRbVG6G87QhHXlrsCFSkfmm-IaMsiZpNzztPFsPp6jhnhav7I64G8-CCjR2EB-VKIvuGsR-dQE&amp;usqp=CAE', 1352000, 0, 'casio edifice efr-546l-1avudf1352000'),
(24, 'Casio General MTP-E175L-1EVDF Black Dial Black Leather Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRICAR6ijjjgopJZ43ZUcEtIXv5XkYGBj0OwutmO9iRRRFPmcxeF4VSwyprsPyzbgRmnhIHLGw&amp;usqp=CAE', 576000, 0, 'casio general mtp-e175l-1evdf black dial black leather strap576000'),
(25, 'Casio G-Shock GA-140-1A1DR Men Digital Analog Dial Black Resin Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcRHGjH74cwLYvdpBhXIc3Onld10IOgt1K42uXj0rchpYiOsygf-pmnpWAT1AwSGm5XVT6KPUVVA&amp;usqp=CAE', 1247000, 0, 'casio g-shock ga-140-1a1dr men digital analog dial black resin strap1247000'),
(26, 'CASIO Illuminator Jam Tangan Original Pria Digital Tali Karet W-216H-2AVDF', 'https://encrypted-tbn1.gstatic.com/shopping?q=tbn:ANd9GcQK1QdVjPWcifEnLHOPXpptkAbNlsGs99GYFzZ-3iShdyVfMrvMszTYuHKgd2syt3v46AlGHYg&amp;usqp=CAE', 367200, 0, 'casio illuminator jam tangan original pria digital tali karet w-216h-2avdf367200'),
(27, 'Casio G-Shock GX-56BB-1DR Solar Powered Water Resistant 200M Black Resin Band', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcR0DLoRVeuSxvP1JKLkIYwcCC4VO6nMAT6djVPnEfxob-PwKqH71syCDiz--TwGhbdpg7zOuAo&amp;usqp=CAE', 2119000, 0, 'casio g-shock gx-56bb-1dr solar powered water resistant 200m black resin band2119000'),
(28, 'Casio G-Shock Special Color GA-700CT-1ADR Digital Analog Dial Black Resin Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcQKSLSkuxHmvlJTTlNxuqW5XGZTIB3WJA6qmGKuNUV1u7hVm8Ww1aVF71Q5BUQI4hqFpUfxTFU&amp;usqp=CAE', 1217000, 0, 'casio g-shock special color ga-700ct-1adr digital analog dial black resin strap1217000'),
(29, 'Casio MTD-300SG-1AVDF Enticer Men Black Dial Dual Tone Stainless Steel Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTolqfWMWwycew5pELkXM9EmJInSNXLhMYLDyKop00evSS4BjA7RRwQ8AtrnMw88wSPqzJhNpg&amp;usqp=CAE', 950000, 0, 'casio mtd-300sg-1avdf enticer men black dial dual tone stainless steel strap950000'),
(30, 'Casio MTP-E175D-1EVDF Black Dial Stainless Steel Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSNZKKSopWoNPbs4GBFuC26ZcLm3VpX3ec5198-4MRaTPnAOYUJrC7K2AYJU5BWWoTckk7BEgE&amp;usqp=CAE', 576000, 0, 'casio mtp-e175d-1evdf black dial stainless steel strap576000'),
(31, 'Casio G-Shock Standard GA-900-1ADR Black Digital Analog Dial Black Resin Strap', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcQ_MjXn3owil1rVGdy3oDNVqUUQYr47tvKT0ZezUO4Dv-uHzPsRu2NtQ_v1ujyrb9Y5NraesQo&amp;usqp=CAE', 1409000, 0, 'casio g-shock standard ga-900-1adr black digital analog dial black resin strap1409000'),
(32, 'Casio G-Shock G-Squad GMD-B800SC-1BDR Digital Dial Green Lime Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQKy3S2nzbwmdxkn3sXuTymeYFZqt6XTcv0IKpshp0sYxBjKEGoojyPRMj829K6wwCZ2hV7rAaH&amp;usqp=CAE', 1049000, 0, 'casio g-shock g-squad gmd-b800sc-1bdr digital dial green lime resin strap1049000'),
(33, 'Jam Tangan Pria / Wanita Tahan Air Casio G Shock_DW6900BB New Digital Limited Editon Import Original', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcTZOQbiVmBnjxgflP_8DzbVsrv88o4PVGJN_zbi-Z-EjCJrKxqv017cMA-aQIk&amp;usqp=CAE', 60000, 0, 'jam tangan pria wanita tahan air casio g shock dw6900bb new digital limited editon import original60000'),
(34, 'Jam Tangan Pria Casio F-91WM-7ADF Digital Rubber Strap CasioHitamRubber', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSxUQ1N2rCnh6NmWXry3Webc_K2o6LjRSAN-a2p_l3A5_oxII33jDpB0pqP_iYFY5CGpsliJeE&amp;usqp=CAE', 186000, 0, 'jam tangan pria casio f-91wm-7adf digital rubber strap casiohitamrubber186000'),
(35, 'Jam Tangan CASIO ORIGINAL PRIA WANITA A500', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcT41j_52uc22m_9ry1AgBhmwSlsdnsE9ozB998ZjEj3OuIlWBpWLk6ZGX2UBWqyYvrtbaCW84Y&amp;usqp=CAE', 585000, 0, 'jam tangan casio original pria wanita a500585000'),
(36, 'Casio G-Shock GA-2000S-7ADR Digital Analog Dial White Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcSw9Xa5mdwnioPfKio_UowHs2ZJYd9DbyH3uLovUbYGEC2DUcNqXL9sDViO7gwhJ7CInXVJq7Y&amp;usqp=CAE', 1379000, 0, 'casio g-shock ga-2000s-7adr digital analog dial white resin strap1379000'),
(37, 'JAM TANGAN PRIA CA-506-1DF DIGITAL FOR MEN CasioSilikon', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcTiqHyZi0dN4r8XSvEWQTJ360tyHt3DaInf5VyRNb7urz-g0RFZ8PTtN9JZjp0&amp;usqp=CAE', 465500, 0, 'jam tangan pria ca-506-1df digital for men casiosilikon465500'),
(38, 'JAM TANGAN PRIA CASIO MTP-V003SG-9A ORIGINAL GARANSI RESMI 1 TAHUN', 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcSe3rIoQdj16JvCAaoIgFd1T3f0TrZGYo1aKprI7P3VAaqEcs0aYQbObCNEH7LMWhGKOLhqTaQ&amp;usqp=CAE', 379900, 0, 'jam tangan pria casio mtp-v003sg-9a original garansi resmi 1 tahun379900'),
(39, 'Casio G-Shock DW-5610SU-3DR Men Special Colour Digital Dial Army Green Resin Strap', 'https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSaL86TL2_sTtvcIHd_dPxVG7ob0ENjaVxvQFWLXIPtyYk5z9zC9OEBRXIbJxI4cJeL32_T397r&amp;usqp=CAE', 1394000, 0, 'casio g-shock dw-5610su-3dr men special colour digital dial army green resin strap1394000'),
(40, 'Casio G-Shock DW-9052-1VDR Digital Dial Black Resin Strap', 'https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcR8OEQFG6Mb6ysyY6jLiuckmC737rBx9Eni2cPUupKS1FAQiDeYixHdj6VR2lyzM9Y3ywZ8Bt0&amp;usqp=CAE', 839000, 0, 'casio g-shock dw-9052-1vdr digital dial black resin strap839000');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jamtangan`
--
ALTER TABLE `jamtangan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jamtangan`
--
ALTER TABLE `jamtangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
