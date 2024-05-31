-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2024 pada 12.12
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_presensi3`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `kode_matkul` varchar(20) NOT NULL,
  `hari` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `nim` varchar(20) NOT NULL,
  `id_ket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_kelas`, `kode_matkul`, `hari`, `tanggal`, `nim`, `id_ket`) VALUES
(12, '', '', 'Rabu', '2024-01-17', '2201091001', 1),
(13, '', '', 'Rabu', '2024-01-17', '2201091002', 1),
(14, '', '', 'Rabu', '2024-01-17', '2201091006', 1),
(15, '', '', 'Rabu', '2024-01-17', '2201092004', 1),
(16, '', '', 'Rabu', '2024-01-17', '2201092008', 1),
(17, '', '', 'Rabu', '2024-01-17', '2201092011', 1),
(18, '', '', 'Rabu', '2024-01-17', '2201092021', 1),
(19, '', '', 'Rabu', '2024-01-17', '2201092043', 1),
(20, '', '', 'Rabu', '2024-01-17', '2201092044', 3),
(21, '', '', 'Rabu', '2024-01-17', '2201092047', 1),
(22, '', '', 'Rabu', '2024-01-17', '2201093002', 4),
(29, '', '', 'Rabu', '2024-01-17', '2201091004', 3),
(30, '', '', 'Rabu', '2024-01-17', '2201091007', 1),
(31, '', '', 'Rabu', '2024-01-17', '2201091018', 1),
(32, '', '', 'Rabu', '2024-01-17', '2201092027', 1),
(33, '', '', 'Rabu', '2024-01-17', '2201092034', 1),
(34, '', '', 'Rabu', '2024-01-17', '2201092045', 1),
(36, '', '', 'Rabu', '2024-01-17', '2201091007', 4),
(37, '', '', 'Rabu', '2024-01-17', '2201091018', 4),
(38, '', '', 'Rabu', '2024-01-17', '2201092027', 4),
(39, '', '', 'Rabu', '2024-01-17', '2201092034', 4),
(40, '', '', 'Rabu', '2024-01-17', '2201092045', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `kode_dosen` varchar(16) NOT NULL,
  `nama_dosen` varchar(80) NOT NULL,
  `status_dosen` enum('AKTIF','TIDAK AKTIF','','') NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`kode_dosen`, `nama_dosen`, `status_dosen`, `username`, `password`) VALUES
('101', 'Roni Putra', 'AKTIF', 'roniPutra', '202cb962ac59075b964b07152d234b70'),
('102', 'Yulherniwati', 'AKTIF', 'yulherniwati', '202cb962ac59075b964b07152d234b70'),
('103', 'Harfebi Fryonanda', 'AKTIF', 'harfebiFryonanda', '202cb962ac59075b964b07152d234b70'),
('104', 'Fanni Sukma', 'AKTIF', 'fanniSukma', '202cb962ac59075b964b07152d234b70'),
('105', 'Ideva Gaputra', 'AKTIF', 'idevaGaputra', '202cb962ac59075b964b07152d234b70'),
('106', 'Aldo Erianda', 'AKTIF', 'aldoErianda', '202cb962ac59075b964b07152d234b70'),
('107', 'Rahmi Putri Kurnia', 'AKTIF', 'rahmiPutri', '202cb962ac59075b964b07152d234b70'),
('108', 'Ulya Ilhami Arsyah', 'AKTIF', 'ulyailhami', '202cb962ac59075b964b07152d234b70'),
('109', 'Ronal Hadi', 'AKTIF', 'ronalhadi', '202cb962ac59075b964b07152d234b70'),
('110', 'Deni Satria', 'AKTIF', 'deniSatria', '202cb962ac59075b964b07152d234b70'),
('111', 'Yori Adi Atma', 'AKTIF', 'yoriadiatma', '202cb962ac59075b964b07152d234b70'),
('112', 'Ardian Firosha', 'AKTIF', 'ardianfirosha', '202cb962ac59075b964b07152d234b70'),
('113', 'Hendra Rotama', 'AKTIF', 'hendrarotama', '202cb962ac59075b964b07152d234b70'),
('114', 'Defni', 'AKTIF', 'defni', '202cb962ac59075b964b07152d234b70'),
('115', 'Rita Afyenni', 'AKTIF', 'ritaafyenni', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hari`
--

CREATE TABLE `hari` (
  `id_hari` int(11) NOT NULL,
  `hari` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `hari`
--

INSERT INTO `hari` (`id_hari`, `hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat'),
(6, 'Sabtu'),
(7, 'Minggu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `hari` varchar(50) NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `kode_matkul` varchar(10) NOT NULL,
  `kode_dosen` varchar(10) NOT NULL,
  `mulai` time NOT NULL,
  `selesai` time NOT NULL,
  `kode_ruangan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`, `id_kelas`, `kode_matkul`, `kode_dosen`, `mulai`, `selesai`, `kode_ruangan`) VALUES
(1, 'Rabu', '4', 'ISY3304', '101', '10:15:00', '13:50:00', '301'),
(2, 'Rabu', '4', 'ISY3206', '102', '10:15:00', '13:50:00', '201'),
(3, 'Rabu', '4', 'ISY3307', '106', '13:00:00', '16:35:00', '304'),
(4, 'Rabu', '5', 'ISY3306', '108', '10:59:00', '13:00:00', '301'),
(5, 'Rabu', '4', 'ISY3205', '105', '13:50:00', '16:35:00', '304'),
(6, 'Kamis', '4', 'ISY3305', '111', '07:30:00', '10:00:00', '301'),
(7, 'Selasa', '5', 'ISY3304', '101', '13:50:00', '16:35:00', '302'),
(8, 'Jumat', '6', 'ISY3304', '101', '07:30:00', '10:00:00', '302');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_ket` int(11) NOT NULL,
  `ket` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id_ket`, `ket`) VALUES
(1, 'Hadir'),
(2, 'Sakit'),
(3, 'Izin'),
(4, 'Alfa');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `jlh_mhs` int(5) NOT NULL,
  `jlh_mk` int(5) NOT NULL,
  `jlh_sks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `jlh_mhs`, `jlh_mk`, `jlh_sks`) VALUES
('1', 'MI 1 A', 28, 8, 20),
('2', 'MI 1 B', 28, 10, 20),
('3', 'MI 1 C', 28, 8, 20),
('4', 'MI 2 A', 27, 9, 21),
('5', 'MI 2 B', 28, 9, 21),
('6', 'MI 2 C', 28, 9, 21),
('7', 'MI 3 A', 29, 10, 18),
('8', 'MI 3 B', 28, 10, 18),
('9', 'MI 3 C', 27, 10, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `program_studi` enum('D3MI','D3TK','D4TRPL','') NOT NULL,
  `id_kelas` varchar(10) NOT NULL,
  `username` varchar(16) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `program_studi`, `id_kelas`, `username`, `password`) VALUES
('2201091001', 'Anjeli Masrijal Putri', 'D3MI', '4', '2201091001', 'd9b1d7db4cd6e70935368a1efb10e377'),
('2201091002', 'Aria Mardiah', 'D3MI', '4', '2201091002', '202cb962ac59075b964b07152d234b70'),
('2201091004', 'Mauizati Hasanah', 'D3MI', '5', '', ''),
('2201091006', 'Hafiz Alex Sandro', 'D3MI', '4', '', ''),
('2201091007', 'Heru Rizaldi', 'D3MI', '5', '', ''),
('2201091010', 'Nadya Kusuma', 'D3MI', '6', '', ''),
('2201091018', 'Kalisa', 'D3MI', '5', '', ''),
('2201092003', 'Baihaqi', 'D3MI', '6', '', ''),
('2201092004', 'Bintang Syafputra', 'D3MI', '4', '', ''),
('2201092005', 'Aditya Swandy', 'D3MI', '6', '', ''),
('2201092008', 'Fauzan Syakira', 'D3MI', '4', '', ''),
('2201092011', 'Heru Rafki', 'D3MI', '4', '', ''),
('2201092021', 'Bimo Surya', 'D3MI', '4', '', ''),
('2201092027', 'Radiatul', 'D3MI', '5', '', ''),
('2201092032', 'Rifki Aditya Ramadhan', 'D3MI', '6', '', ''),
('2201092034', 'Wahyu Bulkhoir', 'D3MI', '5', '', ''),
('2201092043', 'Hanna Adillah', 'D3MI', '4', '', ''),
('2201092044', 'Larsa Zalona Illahi', 'D3MI', '4', '2201092044', '202cb962ac59075b964b07152d234b70'),
('2201092045', 'Miftahul Azizah', 'D3MI', '5', '', ''),
('2201092047', 'Nasywa Davina', 'D3MI', '4', '', ''),
('2201092048', 'Nurul Iqma', 'D3MI', '6', '', ''),
('2201093001', 'Dian Putri Sriwahyuni', 'D3MI', '6', '', ''),
('2201093002', 'Rahman Faisal', 'D3MI', '4', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matkul`
--

CREATE TABLE `matkul` (
  `kode_matkul` varchar(10) NOT NULL,
  `nama_matkul` varchar(64) NOT NULL,
  `semester` int(2) NOT NULL,
  `sks` int(2) NOT NULL,
  `jam` int(2) NOT NULL,
  `ket` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `matkul`
--

INSERT INTO `matkul` (`kode_matkul`, `nama_matkul`, `semester`, `sks`, `jam`, `ket`) VALUES
('ISY3204', 'Interaksi Manusia dan Komputer', 3, 3, 3, 'T'),
('ISY3205', 'Jaringan Komputer', 3, 3, 5, 'T/P'),
('ISY3206', 'Rekayasa Perangkat Lunak', 3, 4, 6, 'T/P'),
('ISY3207', 'Desain Antar Muka', 3, 1, 3, 'P'),
('ISY3304', 'Pemrograman Mobile', 3, 3, 5, 'T/P'),
('ISY3305', 'Pemrograman Web Dinamis', 3, 1, 3, 'P'),
('ISY3306', 'Pemrograman Desktop', 3, 1, 3, 'P'),
('ISY3307', 'Sistem Informasi Geografis', 3, 2, 2, 'T/P'),
('ISY3308', 'Analisis dan Perancangan Sistem Informasi', 3, 3, 3, 'T');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `username`, `nama`, `password`, `level`) VALUES
(1, 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(4, 'adminn', 'Larsa', '202cb962ac59075b964b07152d234b70', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ruangan`
--

CREATE TABLE `ruangan` (
  `kode_ruangan` varchar(20) NOT NULL,
  `nama_ruangan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ruangan`
--

INSERT INTO `ruangan` (`kode_ruangan`, `nama_ruangan`) VALUES
('201', 'E201'),
('202', 'E202'),
('203', 'E203'),
('204', 'E204'),
('205', 'E205'),
('206', 'E206'),
('207', 'E207'),
('208', 'E208'),
('301', 'E301'),
('302', 'E302'),
('303', 'E303'),
('304', 'E304'),
('305', 'E305'),
('306', 'E306'),
('307', 'E307'),
('308', 'E308');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `nim` (`nim`),
  ADD KEY `absensi_ibfk_2` (`id_kelas`);

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`kode_dosen`);

--
-- Indeks untuk tabel `hari`
--
ALTER TABLE `hari`
  ADD PRIMARY KEY (`id_hari`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `kode_matkul` (`kode_matkul`),
  ADD KEY `kode_dosen` (`kode_dosen`),
  ADD KEY `kode_ruangan` (`kode_ruangan`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_ket`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `matkul`
--
ALTER TABLE `matkul`
  ADD PRIMARY KEY (`kode_matkul`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ruangan`
--
ALTER TABLE `ruangan`
  ADD PRIMARY KEY (`kode_ruangan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id_absensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `hari`
--
ALTER TABLE `hari`
  MODIFY `id_hari` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34250;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_ket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`),
  ADD CONSTRAINT `jadwal_ibfk_2` FOREIGN KEY (`kode_matkul`) REFERENCES `matkul` (`kode_matkul`),
  ADD CONSTRAINT `jadwal_ibfk_3` FOREIGN KEY (`kode_dosen`) REFERENCES `dosen` (`kode_dosen`),
  ADD CONSTRAINT `jadwal_ibfk_4` FOREIGN KEY (`kode_ruangan`) REFERENCES `ruangan` (`kode_ruangan`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
