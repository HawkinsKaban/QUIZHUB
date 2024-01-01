-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jan 2024 pada 17.57
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quizhub`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `noAdmin` int(10) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `noAdmin`, `username`, `password`, `nama`) VALUES
(1, 1, 'admin', 'admin', 'kairie');

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nip` int(10) DEFAULT NULL,
  `username` varchar(25) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `matkul` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id`, `nip`, `username`, `password`, `nama`, `admin_id`, `matkul`) VALUES
(1, 123456, 'fadila', 'naswan', 'naswan fadila', 1, 'Pemrograman Web'),
(2, 234567, 'maulana', 'hasif', 'ambo', 1, 'Jaringan Enterprise'),
(3, 345678, 'hawkins', 'ray', 'Kaban', 1, 'Pemrograman Berorien'),
(4, 13032101, '13032101', '', 'ray', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(25) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `dosen_id` int(11) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `username`, `password`, `nama`, `admin_id`, `dosen_id`, `kelas`) VALUES
(1, 1303210171, 'mahasiswa1', 'password1', 'athoul muwafiq', 1, 1, 'A'),
(2, 1303210172, 'mahasiswa2', 'password2', 'kukuh bela agama', 1, 2, 'B'),
(3, 1303210173, 'mahasiswa3', 'password4', 'M zainuri', 1, 1, 'B'),
(4, 1303210174, 'mahasiswa5', 'password5', 'moch Anggiansyah', 1, 2, 'A');

-- --------------------------------------------------------

--
-- Struktur dari tabel `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `nim` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `score` varchar(10) NOT NULL,
  `token` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `nim`, `nama`, `score`, `token`) VALUES
(18, '1303210173', 'M zainuri', '30', '759120118');

-- --------------------------------------------------------

--
-- Struktur dari tabel `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL,
  `token` varchar(50) NOT NULL,
  `waktu_mengerjakan` varchar(10) NOT NULL,
  `mapel` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `setting`
--

INSERT INTO `setting` (`id_setting`, `token`, `waktu_mengerjakan`, `mapel`) VALUES
(1, '61810124', '10', 'produktif');

-- --------------------------------------------------------

--
-- Struktur dari tabel `soal`
--

CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL,
  `soal` varchar(200) NOT NULL,
  `jawaban_benar` varchar(1) NOT NULL,
  `jawaban_a` varchar(40) NOT NULL,
  `jawaban_b` varchar(40) NOT NULL,
  `jawaban_c` varchar(40) NOT NULL,
  `jawaban_d` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `soal`
--

INSERT INTO `soal` (`id_soal`, `soal`, `jawaban_benar`, `jawaban_a`, `jawaban_b`, `jawaban_c`, `jawaban_d`) VALUES
(1, 'Untuk membuat direktori didalam system operasi linux digunakan perintah....', 'd', 'Cat', 'Cd', 'Md', 'Mkdir'),
(2, 'Satuan informasi terkecil yang dikenal dalam komunikasi data adalah....', 'b', 'Segment', 'Bit', 'Byte', 'Label'),
(3, 'Perintah untuk mengetahui jalur/rute suatu domain komputer/website menggunakan pada system linux adalah....', 'b', 'Ping', 'Ifconfig', 'Ipconfig', 'Tracert'),
(4, 'Untuk membuat berbagi pakai koneksi internet (Internet Connection Sharing) minimal komputer yang diperlukan sebanyak....', 'c', '1', '5', '2', '4'),
(5, 'Teks perintah untu k melihat tabel routing pada Windows adalah....', 'd', 'Route -n', 'Route -a', 'Route -d', 'Route -Print'),
(6, 'Berikut ini jenis topologi jaringan komputer, kecuali....', 'd', 'Star', 'Bus', 'Mesh', 'Three'),
(7, 'Salah satu tipe jaringan komputer yang umum dijumpai adalah....', 'c', 'Star', 'WAN', 'Client-server', 'Bus'),
(8, 'Perangkat yang berfungsi sebagai repeater dan sekaligus concentrator dalam sebuah jaringan komputer adalah....', 'a', 'Kabel UTP', 'Router', 'Server', 'Connector'),
(9, 'IP Address yang menunjukkan nomor jaringan (identitas segmen) disebut dengan....', 'd', 'Net ID', 'Host ID', 'IP Public', 'IP Broadcast'),
(10, 'Suatu sistem yang memungkinkan nama suatu host pada jaringan komputer atau internet ditranslasikan menjadi IP address disebut....', 'b', 'Protokol', 'DNS', 'DHCP', 'Gatewaay');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `dosen_id` (`dosen_id`);

--
-- Indeks untuk tabel `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`);

--
-- Indeks untuk tabel `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id_soal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `soal`
--
ALTER TABLE `soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`id`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`dosen_id`) REFERENCES `dosen` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
