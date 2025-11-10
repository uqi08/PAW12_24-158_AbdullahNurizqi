-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Nov 2025 pada 16.38
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
-- Database: `crud_book`
--
CREATE DATABASE IF NOT EXISTS `crud_book` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `crud_book`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `crud_book`
--

CREATE TABLE `crud_book` (
  `id` int(11) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `author` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `cover_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `crud_book`
--
ALTER TABLE `crud_book`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `crud_book`
--
ALTER TABLE `crud_book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `db_mvc`
--
CREATE DATABASE IF NOT EXISTS `db_mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_mvc`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `tahun`, `deskripsi`, `created_at`) VALUES
(1, 'Clean Code', 'Robert C. Martin', 2008, 'Buku tentang praktik menulis kode yang bersih.', '2025-11-04 12:38:04'),
(2, 'The Pragmatic Programmer', 'Andrew Hunt, David Thomas', 1999, 'Kumpulan prinsip dan tips pragmatis untuk programmer.', '2025-11-04 12:38:04'),
(3, 'Refactoring', 'Martin Fowler', 2018, 'Teknik meningkatkan desain kode tanpa mengubah perilaku.', '2025-11-04 12:38:04');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Database: `kasir`
--
CREATE DATABASE IF NOT EXISTS `kasir` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `kasir`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(100) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga`, `stok`, `supplier_id`) VALUES
(1, 'B001', 'Beras Premium 5kg', 65000, 100, 1),
(2, 'B002', 'Minyak Goreng 2L', 32000, 150, 2),
(3, 'B003', 'Gula Pasir 1kg', 16000, 200, 3),
(4, 'B004', 'Tepung Terigu 1kg', 13000, 180, 4),
(5, 'B005', 'Kopi Bubuk 200gr', 25000, 90, 5),
(6, 'B006', 'Teh Celup 50s', 17000, 120, 6),
(7, 'B007', 'Air Mineral 600ml', 5000, 300, 7),
(8, 'B008', 'Susu UHT 1L', 22000, 130, 8),
(9, 'B009', 'Mie Instan 5 pack', 15000, 250, 9),
(10, 'B010', 'Sabun Cuci 1L', 18000, 140, 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('P001', 'Andi Pratama', 'L', '081234567890', 'Jl. Merdeka No.1'),
('P002', 'Budi Santoso', 'L', '081234567891', 'Jl. Sudirman No.5'),
('P003', 'Citra Dewi', 'P', '081234567892', 'Jl. Melati No.7'),
('P004', 'Diana Putri', 'P', '081234567893', 'Jl. Anggrek No.8'),
('P005', 'Eko Saputra', 'L', '081234567894', 'Jl. Mawar No.9'),
('P006', 'Fajar Hidayat', 'L', '081234567895', 'Jl. Kenanga No.10'),
('P007', 'Gina Sari', 'P', '081234567896', 'Jl. Cempaka No.11'),
('P008', 'Hendra Wijaya', 'L', '081234567897', 'Jl. Flamboyan No.12'),
('P009', 'Indah Lestari', 'P', '081234567898', 'Jl. Dahlia No.13'),
('P010', 'Joko Susilo', 'L', '081234567899', 'Jl. Melur No.14');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `waktu_bayar` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `metode` enum('TUNAI','TRANSFER','EDC') DEFAULT NULL,
  `transaksi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `waktu_bayar`, `total`, `metode`, `transaksi_id`) VALUES
(1, '2025-10-01 10:05:00', 130000, 'TUNAI', 1),
(2, '2025-10-02 14:00:00', 95000, 'TRANSFER', 2),
(3, '2025-10-03 09:30:00', 72000, 'TUNAI', 3),
(4, '2025-10-04 13:00:00', 85000, 'EDC', 4),
(5, '2025-10-05 11:15:00', 98000, 'TUNAI', 5),
(6, '2025-10-06 10:45:00', 114000, 'TRANSFER', 6),
(7, '2025-10-07 15:20:00', 102000, 'EDC', 7),
(8, '2025-10-08 09:50:00', 120000, 'TUNAI', 8),
(9, '2025-10-09 16:00:00', 97000, 'TRANSFER', 9),
(10, '2025-10-10 12:30:00', 110000, 'EDC', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama`, `telp`, `alamat`) VALUES
(1, 'PT Sumber Makmur', '0211234567', 'Jl. Raya Bogor No.10'),
(2, 'CV Sejahtera', '0211234568', 'Jl. Gatot Subroto No.5'),
(3, 'PT Cahaya Abadi', '0211234569', 'Jl. Meruya No.2'),
(4, 'PT Indo Bersama', '0211234570', 'Jl. Panjang No.3'),
(5, 'CV Sentosa', '0211234571', 'Jl. Palmerah No.6'),
(6, 'PT Maju Jaya', '0211234572', 'Jl. Juanda No.7'),
(7, 'PT Aneka Rasa', '0211234573', 'Jl. Tebet No.9'),
(8, 'CV Tunas Baru', '0211234574', 'Jl. Kelapa Gading No.11'),
(9, 'PT Sinar Dunia', '0211234575', 'Jl. Pluit No.13'),
(10, 'PT Mega mega', '0211234576', 'Jl. Cikini No.15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `waktu_transaksi` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pelanggan_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `waktu_transaksi`, `keterangan`, `total`, `pelanggan_id`) VALUES
(1, '2025-10-01', 'Pembelian harian', 130000, 'P001'),
(2, '2025-10-02', 'Pembelian bulanan', 95000, 'P002'),
(3, '2025-10-03', 'Pembelian tambahan', 72000, 'P003'),
(4, '2025-10-04', 'Pembelian promo', 85000, 'P004'),
(5, '2025-10-05', 'Pembelian biasa', 98000, 'P005'),
(6, '2025-10-06', 'Pembelian stok', 114000, 'P006'),
(7, '2025-10-07', 'Pembelian rumah tangga', 102000, 'P007'),
(8, '2025-10-08', 'Pembelian kebutuhan dapur', 120000, 'P008'),
(9, '2025-10-09', 'Pembelian bulanan', 97000, 'P009'),
(10, '2025-10-10', 'Pembelian promo', 110000, 'P010');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `transaksi_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`transaksi_id`, `barang_id`, `harga`, `qty`) VALUES
(1, 1, 65000, 1),
(1, 2, 32000, 2),
(2, 3, 16000, 3),
(2, 4, 13000, 2),
(3, 5, 25000, 1),
(4, 6, 17000, 2),
(5, 7, 5000, 5),
(6, 8, 22000, 2),
(7, 9, 15000, 3),
(8, 10, 18000, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `no_hp`, `level`) VALUES
(1, 'admin1', '12345', 'Admin Utama', 'Jl. Merdeka No.1', '0812000001', 1),
(2, 'kasir1', '12345', 'Kasir A', 'Jl. Sudirman No.2', '0812000002', 2),
(3, 'kasir2', '12345', 'Kasir B', 'Jl. Melati No.3', '0812000003', 2),
(4, 'gudang1', '12345', 'Petugas Gudang A', 'Jl. Mawar No.4', '0812000004', 3),
(5, 'gudang2', '12345', 'Petugas Gudang B', 'Jl. Anggrek No.5', '0812000005', 3),
(6, 'admin2', '12345', 'Admin Kedua', 'Jl. Flamboyan No.6', '0812000006', 1),
(7, 'kasir3', '12345', 'Kasir C', 'Jl. Dahlia No.7', '0812000007', 2),
(8, 'kasir4', '12345', 'Kasir D', 'Jl. Cempaka No.8', '0812000008', 2),
(9, 'gudang3', '12345', 'Petugas Gudang C', 'Jl. Kenanga No.9', '0812000009', 3),
(10, 'superadmin', 'admin123', 'Super Admin', 'Jl. Raya Bogor No.10', '0812000010', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`transaksi_id`,`barang_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id_supplier`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`);
--
-- Database: `mvc`
--
CREATE DATABASE IF NOT EXISTS `mvc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mvc`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `tahun`, `deskripsi`, `created_at`) VALUES
(1, 'Clean Code', 'Robert C. Martin', 2008, 'Buku tentang praktik menulis kode yang bersih.', '2025-11-04 12:39:39'),
(2, 'The Pragmatic Programmer', 'Andrew Hunt, David Thomas', 1999, 'Kumpulan prinsip dan tips pragmatis untuk programmer.', '2025-11-04 12:39:39'),
(3, 'Refactoring', 'Martin Fowler', 2018, 'Teknik meningkatkan desain kode tanpa mengubah perilaku.', '2025-11-04 12:39:39'),
(4, 'Clean Code', 'Robert C. Martin', 2008, 'Buku tentang praktik menulis kode yang bersih.', '2025-11-04 12:41:00'),
(5, 'The Pragmatic Programmer', 'Andrew Hunt, David Thomas', 1999, 'Kumpulan prinsip dan tips pragmatis untuk programmer.', '2025-11-04 12:41:00'),
(6, 'Refactoring', 'Martin Fowler', 2018, 'Teknik meningkatkan desain kode tanpa mengubah perilaku.', '2025-11-04 12:41:00'),
(7, 'sang kancil', 'uqi', 2010, 'aw aw', '2025-11-04 12:43:33');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Database: `mydb`
--
CREATE DATABASE IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mydb`;
--
-- Database: `penjualan`
--
CREATE DATABASE IF NOT EXISTS `penjualan` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`id`, `kode_barang`, `nama_barang`, `harga`, `stok`, `supplier_id`) VALUES
(1, 'BRG001', 'Indomie Goreng', 3500, 200, 1),
(2, 'BRG002', 'Beras Ramos 5kg', 62000, 50, 2),
(3, 'BRG003', 'Gula Pasir 1kg', 14000, 80, 3),
(4, 'BRG004', 'Minyak Goreng 1L', 17000, 120, 3),
(5, 'BRG005', 'Teh Celup Sosro 30pcs', 7500, 40, 4),
(6, 'BRG006', 'Kopi Kapal Api 65g', 2500, 100, 4),
(7, 'BRG007', 'Air Mineral Aqua 600ml', 3500, 160, 5),
(8, 'BRG008', 'Sabun Lifebuoy 70g', 2800, 75, 5),
(9, 'BRG009', 'Shampoo Sunsilk 90ml', 6500, 60, 6),
(10, 'BRG010', 'Rokok Djarum Super', 28000, 30, 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nota`
--

CREATE TABLE `nota` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `nomor_nota` varchar(50) NOT NULL,
  `tanggal_cetak` datetime NOT NULL,
  `kasir_id` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('PL001', 'Ahmad Fauzi', 'L', '081234111111', 'Jl. Anggrek No. 12'),
('PL002', 'Siti Aisyah', 'P', '081234222222', 'Jl. Melati No. 45'),
('PL003', 'Budi Santoso', 'L', '081234333333', 'Jl. Kenanga No. 9'),
('PL004', 'Dewi Lestari', 'P', '081234444444', 'Jl. Mawar No. 78'),
('PL005', 'Rudi Hartono', 'L', '081234555555', 'Jl. Dahlia No. 88'),
('PL006', 'Putri Ananda', 'P', '081234666666', 'Jl. Cemara No. 34'),
('PL007', 'Joko Prasetyo', 'L', '081234777777', 'Jl. Flamboyan No. 17'),
('PL008', 'Nurul Qory', 'P', '081234888888', 'Jl. Seruni No. 20'),
('PL009', 'Agus Saputra', 'L', '081234999999', 'Jl. Cempaka No. 50'),
('PL010', 'Citra Rahmawati', 'P', '081234000000', 'Jl. Kamboja No. 4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `waktu_bayar` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `metode` enum('TUNAI','TRANSFER','EDC') DEFAULT NULL,
  `transaksi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`id`, `nama`, `telp`, `alamat`) VALUES
(1, 'PT Maju Jaya', '081234567890', 'Jl. Merdeka No. 10, Surabaya'),
(2, 'CV Sumber Makmur', '082134567891', 'Jl. Raya Diponegoro No. 25, Malang'),
(3, 'UD Sentosa Abadi', '083134567892', 'Jl. Gatot Subroto No. 15, Sidoarjo'),
(4, 'PT Berkah Sejahtera', '084134567893', 'Jl. Ahmad Yani No. 45, Gresik'),
(5, 'CV Makmur Lestari', '085134567894', 'Jl. Pahlawan No. 12, Mojokerto'),
(6, 'PT Sinar Abadi', '086134567895', 'Jl. Sudirman No. 8, Pasuruan'),
(7, 'UD Karya Mandiri', '087134567896', 'Jl. Imam Bonjol No. 20, Probolinggo'),
(8, 'CV Sejahtera Bersama', '088134567897', 'Jl. Trunojoyo No. 33, Jember'),
(9, 'PT Mitra Niaga', '089134567898', 'Jl. Diponegoro No. 5, Banyuwangi'),
(10, 'UD Tunas Harapan', '081234567899', 'Jl. Jaksa Agung Suprapto No. 18, Lumajang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_nota` varchar(50) NOT NULL,
  `waktu_transaksi` date DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pelanggan_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `transaksi_id` int(11) NOT NULL,
  `barang_id` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nomor_nota` (`nomor_nota`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `kasir_id` (`kasir_id`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `nota`
--
ALTER TABLE `nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`);

--
-- Ketidakleluasaan untuk tabel `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`kasir_id`) REFERENCES `pengguna` (`id_user`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `pelanggan` (`id`);

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`),
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`id`);
--
-- Database: `penjualann`
--
CREATE DATABASE IF NOT EXISTS `penjualann` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `penjualann`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_barang`
--

CREATE TABLE `penjualan_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(10) DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_barang`
--

INSERT INTO `penjualan_barang` (`id`, `kode_barang`, `nama_barang`, `harga`, `stok`, `supplier_id`) VALUES
(1, 'BRG001', 'Beras Premium 5Kg', 65000, 120, 1),
(2, 'BRG002', 'Gula Pasir 1Kg', 14000, 200, 2),
(3, 'BRG003', 'Minyak Goreng 1L', 18000, 180, 3),
(4, 'BRG004', 'Tepung Terigu 1Kg', 12000, 150, 4),
(5, 'BRG005', 'Kopi Bubuk 200gr', 25000, 95, 5),
(6, 'BRG006', 'Teh Celup 50pcs', 17000, 135, 3),
(7, 'BRG007', 'Garam Halus 500gr', 5000, 230, 2),
(8, 'BRG008', 'Susu Bubuk 1Kg', 78000, 80, 6),
(9, 'BRG009', 'Kecap Manis 550ml', 20000, 70, 7),
(10, 'BRG010', 'Saus Sambal 500ml', 18000, 90, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_nota`
--

CREATE TABLE `penjualan_nota` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `nomor_nota` varchar(50) DEFAULT NULL,
  `tanggal_cetak` datetime DEFAULT NULL,
  `kasir_id` tinyint(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_nota`
--

INSERT INTO `penjualan_nota` (`id`, `transaksi_id`, `nomor_nota`, `tanggal_cetak`, `kasir_id`) VALUES
(1, 1, 'NT001', '2025-11-09 19:56:19', 1),
(2, 2, 'NT002', '2025-11-09 19:56:19', 1),
(3, 3, 'NT003', '2025-11-09 19:56:19', 2),
(4, 4, 'NT004', '2025-11-09 19:56:19', 3),
(5, 5, 'NT005', '2025-11-09 19:56:19', 4),
(6, 6, 'NT006', '2025-11-09 19:56:19', 5),
(7, 7, 'NT007', '2025-11-09 19:56:19', 6),
(8, 8, 'NT008', '2025-11-09 19:56:19', 7),
(9, 9, 'NT009', '2025-11-09 19:56:19', 8),
(10, 10, 'NT010', '2025-11-09 19:56:19', 9),
(11, 11, 'NT1762693007', '2025-11-09 13:56:47', 3),
(12, 12, 'NT1762694254', '2025-11-09 14:17:34', 3),
(13, 13, 'NT1762694270', '2025-11-09 14:17:50', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_pelanggan`
--

CREATE TABLE `penjualan_pelanggan` (
  `id` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis_kelamin` enum('L','P') DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_pelanggan`
--

INSERT INTO `penjualan_pelanggan` (`id`, `nama`, `jenis_kelamin`, `telp`, `alamat`) VALUES
('PL001', 'Budi Santoso', 'L', '081234111222', 'Bandung'),
('PL002', 'Siti Aminah', 'P', '082211445566', 'Jakarta'),
('PL003', 'Agus Wijaya', 'L', '081233556677', 'Solo'),
('PL004', 'Dewi Lestari', 'P', '085799221144', 'Bogor'),
('PL005', 'Rudi Hartono', 'L', '089655441122', 'Garut'),
('PL006', 'Ratna Wahyuni', 'P', '082144512233', 'Malang'),
('PL007', 'Andi Kurniawan', 'L', '081256667788', 'Surabaya'),
('PL008', 'Nur Aisyah', 'P', '083899221133', 'Medan'),
('PL009', 'Joko Susilo', 'L', '089912345678', 'Bali'),
('PL010', 'Maya Oktavia', 'P', '081345667700', 'Makassar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_pembayaran`
--

CREATE TABLE `penjualan_pembayaran` (
  `id` int(11) NOT NULL,
  `waktu_bayar` datetime DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `metode` enum('TUNAI','TRANSFER','EDC') DEFAULT NULL,
  `transaksi_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_pembayaran`
--

INSERT INTO `penjualan_pembayaran` (`id`, `waktu_bayar`, `total`, `metode`, `transaksi_id`) VALUES
(1, '2025-11-09 19:56:19', 125000, 'TUNAI', 1),
(2, '2025-11-09 19:56:19', 65000, 'TRANSFER', 2),
(3, '2025-11-09 19:56:19', 95000, 'TUNAI', 3),
(4, '2025-11-09 19:56:19', 48000, 'EDC', 4),
(5, '2025-11-09 19:56:19', 30000, 'TUNAI', 5),
(6, '2025-11-09 19:56:19', 52000, 'TUNAI', 6),
(7, '2025-11-09 19:56:19', 87000, 'TRANSFER', 7),
(8, '2025-11-09 19:56:19', 120000, 'EDC', 8),
(9, '2025-11-09 19:56:19', 45000, 'TUNAI', 9),
(10, '2025-11-09 19:56:19', 70000, 'TUNAI', 10);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_pengguna`
--

CREATE TABLE `penjualan_pengguna` (
  `id_user` tinyint(4) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(35) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` varchar(150) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `level` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_pengguna`
--

INSERT INTO `penjualan_pengguna` (`id_user`, `username`, `password`, `nama`, `alamat`, `hp`, `level`) VALUES
(1, 'kasir01', '123', 'Rina', 'Bandung', '081234567001', 2),
(2, 'admin01', 'admin', 'Dedi', 'Jakarta', '081234567002', 1),
(3, 'kasir02', '123', 'Wulan', 'Bogor', '081234567003', 2),
(4, 'kasir03', '123', 'Hani', 'Medan', '081234567004', 2),
(5, 'kasir04', '123', 'Rio', 'Makassar', '081234567005', 2),
(6, 'kasir05', '123', 'Toni', 'Surabaya', '081234567006', 2),
(7, 'kasir06', '123', 'Ayu', 'Bali', '081234567007', 2),
(8, 'kasir07', '123', 'Ali', 'Pontianak', '081234567008', 2),
(9, 'kasir08', '123', 'Fitri', 'Semarang', '081234567009', 2),
(10, 'kasir09', '123', 'Yoga', 'Yogyakarta', '081234567010', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_supplier`
--

CREATE TABLE `penjualan_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `telp` varchar(12) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_supplier`
--

INSERT INTO `penjualan_supplier` (`id_supplier`, `nama`, `telp`, `alamat`) VALUES
(1, 'PT Maju Jaya', '081999111222', 'Bandung'),
(2, 'CV Sinar Abadi', '082133557799', 'Sumedang'),
(3, 'UD Makmur Sejahtera', '089611223344', 'Jakarta'),
(4, 'PT Berkah Mandiri', '083812345678', 'Medan'),
(5, 'CV Aneka Niaga', '081255667788', 'Surabaya'),
(6, 'PT Global Utama', '089812341234', 'Palembang'),
(7, 'UD Cahaya Baru', '081322110011', 'Yogyakarta'),
(8, 'CV Sumber Rezeki', '082211889900', 'Malang'),
(9, 'PT Nusantara Sentosa', '081298765432', 'Bali'),
(10, 'CV Mega Distribusi', '085312341234', 'Makassar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_transaksi`
--

CREATE TABLE `penjualan_transaksi` (
  `id` int(11) NOT NULL,
  `waktu_transaksi` datetime DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `pelanggan_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_transaksi`
--

INSERT INTO `penjualan_transaksi` (`id`, `waktu_transaksi`, `keterangan`, `total`, `pelanggan_id`) VALUES
(1, '2025-11-09 19:56:19', 'Pembelian kebutuhan dapur', 125000, 'PL001'),
(2, '2025-11-09 19:56:19', 'Belanja bulanan', 65000, 'PL002'),
(3, '2025-11-09 19:56:19', 'Pembelian grosir kecil', 95000, 'PL003'),
(4, '2025-11-09 19:56:19', 'Isi stok rumah', 48000, 'PL004'),
(5, '2025-11-09 19:56:19', 'Belanja tambahan', 30000, 'PL005'),
(6, '2025-11-09 19:56:19', 'Pembelian minuman', 52000, 'PL006'),
(7, '2025-11-09 19:56:19', 'Stok rumah tangga', 87000, 'PL007'),
(8, '2025-11-09 19:56:19', 'Kebutuhan warung', 120000, 'PL008'),
(9, '2025-11-09 19:56:19', 'Belanja pribadi', 45000, 'PL009'),
(10, '2025-11-09 19:56:19', 'Pembelian camping', 70000, 'PL010'),
(11, '2025-11-09 13:56:47', 'mau beli', 234000, 'PL003'),
(12, '2025-11-09 14:17:34', 'mau beli', 0, 'PL003'),
(13, '2025-11-09 14:17:50', 'mau beli', 260000, 'PL003');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan_transaksi_detail`
--

CREATE TABLE `penjualan_transaksi_detail` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) DEFAULT NULL,
  `barang_id` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan_transaksi_detail`
--

INSERT INTO `penjualan_transaksi_detail` (`id`, `transaksi_id`, `barang_id`, `harga`, `qty`) VALUES
(1, 1, 1, 65000, 1),
(2, 1, 2, 14000, 2),
(3, 2, 3, 18000, 2),
(4, 3, 4, 12000, 3),
(5, 4, 7, 5000, 4),
(6, 5, 5, 25000, 1),
(7, 6, 6, 17000, 3),
(8, 7, 8, 78000, 1),
(9, 8, 9, 20000, 4),
(10, 9, 10, 18000, 2),
(11, 11, 10, 18000, 13),
(12, 13, 9, 20000, 13);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indeks untuk tabel `penjualan_nota`
--
ALTER TABLE `penjualan_nota`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `kasir_id` (`kasir_id`);

--
-- Indeks untuk tabel `penjualan_pelanggan`
--
ALTER TABLE `penjualan_pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`);

--
-- Indeks untuk tabel `penjualan_pengguna`
--
ALTER TABLE `penjualan_pengguna`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `penjualan_supplier`
--
ALTER TABLE `penjualan_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indeks untuk tabel `penjualan_transaksi`
--
ALTER TABLE `penjualan_transaksi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indeks untuk tabel `penjualan_transaksi_detail`
--
ALTER TABLE `penjualan_transaksi_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan_nota`
--
ALTER TABLE `penjualan_nota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan_pengguna`
--
ALTER TABLE `penjualan_pengguna`
  MODIFY `id_user` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan_supplier`
--
ALTER TABLE `penjualan_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `penjualan_transaksi`
--
ALTER TABLE `penjualan_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `penjualan_transaksi_detail`
--
ALTER TABLE `penjualan_transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `penjualan_barang`
--
ALTER TABLE `penjualan_barang`
  ADD CONSTRAINT `penjualan_barang_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `penjualan_supplier` (`id_supplier`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan_nota`
--
ALTER TABLE `penjualan_nota`
  ADD CONSTRAINT `penjualan_nota_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `penjualan_transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_nota_ibfk_2` FOREIGN KEY (`kasir_id`) REFERENCES `penjualan_pengguna` (`id_user`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan_pembayaran`
--
ALTER TABLE `penjualan_pembayaran`
  ADD CONSTRAINT `penjualan_pembayaran_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `penjualan_transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan_transaksi`
--
ALTER TABLE `penjualan_transaksi`
  ADD CONSTRAINT `penjualan_transaksi_ibfk_1` FOREIGN KEY (`pelanggan_id`) REFERENCES `penjualan_pelanggan` (`id`) ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penjualan_transaksi_detail`
--
ALTER TABLE `penjualan_transaksi_detail`
  ADD CONSTRAINT `penjualan_transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `penjualan_transaksi` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penjualan_transaksi_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `penjualan_barang` (`id`) ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data untuk tabel `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"kasir_penjualan\",\"table\":\"barang\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-10-30 07:46:22', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"id\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeks untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeks untuk tabel `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeks untuk tabel `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeks untuk tabel `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeks untuk tabel `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeks untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeks untuk tabel `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeks untuk tabel `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeks untuk tabel `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeks untuk tabel `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeks untuk tabel `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `sistem_kehadiran`
--
CREATE DATABASE IF NOT EXISTS `sistem_kehadiran` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sistem_kehadiran`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `id_dosen` int(11) NOT NULL,
  `nama_dosen` varchar(100) NOT NULL,
  `nip` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`id_dosen`, `nama_dosen`, `nip`, `email`) VALUES
(1, 'Dr. Ahmad Santoso', '19800123', 'ahmad@kampus.ac.id'),
(2, 'Dewi Lestari, M.Kom', '19850512', 'dewi@kampus.ac.id'),
(3, 'Hendra Wijaya, S.T., M.T.', '19791211', 'hendra@kampus.ac.id'),
(4, 'Ir. Rudi Hartono', '19750307', 'rudi@kampus.ac.id'),
(5, 'Siti Aminah, M.Kom', '19860221', 'siti@kampus.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_kuliah`
--

CREATE TABLE `jadwal_kuliah` (
  `id_jadwal` int(11) NOT NULL,
  `id_mk` int(11) DEFAULT NULL,
  `id_dosen` int(11) DEFAULT NULL,
  `hari` enum('Senin','Selasa','Rabu','Kamis','Jumat','Sabtu') DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `ruang` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal_kuliah`
--

INSERT INTO `jadwal_kuliah` (`id_jadwal`, `id_mk`, `id_dosen`, `hari`, `jam_mulai`, `jam_selesai`, `ruang`) VALUES
(1, 1, 1, 'Senin', '08:00:00', '09:40:00', 'Lab A'),
(2, 2, 2, 'Selasa', '10:00:00', '11:40:00', 'Lab B'),
(3, 3, 3, 'Rabu', '13:00:00', '14:40:00', 'Lab C'),
(4, 4, 4, 'Kamis', '09:00:00', '10:40:00', 'Ruang 101'),
(5, 5, 5, 'Jumat', '08:00:00', '09:40:00', 'Ruang 102');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kehadiran`
--

CREATE TABLE `kehadiran` (
  `id_kehadiran` int(11) NOT NULL,
  `nim` varchar(10) DEFAULT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `status` enum('Hadir','Izin','Sakit','Alpa') DEFAULT 'Alpa',
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kehadiran`
--

INSERT INTO `kehadiran` (`id_kehadiran`, `nim`, `id_jadwal`, `tanggal`, `status`, `keterangan`) VALUES
(1, 'M001', 1, '2025-10-01', 'Hadir', ''),
(2, 'M002', 1, '2025-10-01', 'Sakit', 'Demam'),
(3, 'M003', 2, '2025-10-02', 'Hadir', ''),
(4, 'M004', 3, '2025-10-03', 'Izin', 'Acara keluarga'),
(5, 'M005', 4, '2025-10-04', 'Hadir', ''),
(6, 'M001', 2, '2025-10-02', 'Hadir', ''),
(7, 'M002', 3, '2025-10-03', 'Alpa', 'Tidak hadir tanpa keterangan'),
(8, 'M003', 4, '2025-10-04', 'Hadir', ''),
(9, 'M004', 5, '2025-10-05', 'Hadir', ''),
(10, 'M005', 1, '2025-10-01', 'Sakit', 'Flu berat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `semester` tinyint(4) DEFAULT NULL,
  `alamat` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jurusan`, `semester`, `alamat`) VALUES
('M001', 'Andi Pratama', 'Informatika', 3, 'Jl. Merdeka No.1'),
('M002', 'Budi Santoso', 'Informatika', 3, 'Jl. Mawar No.2'),
('M003', 'Citra Dewi', 'Sistem Informasi', 5, 'Jl. Melati No.3'),
('M004', 'Diana Putri', 'Teknik Komputer', 1, 'Jl. Kenanga No.4'),
('M005', 'Eko Saputra', 'Informatika', 3, 'Jl. Dahlia No.5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mk` int(11) NOT NULL,
  `kode_mk` varchar(10) DEFAULT NULL,
  `nama_mk` varchar(100) NOT NULL,
  `sks` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mk`, `kode_mk`, `nama_mk`, `sks`) VALUES
(1, 'IF101', 'Algoritma dan Pemrograman', 3),
(2, 'IF102', 'Basis Data', 3),
(3, 'IF103', 'Pemrograman Web', 3),
(4, 'IF104', 'Struktur Data', 3),
(5, 'IF105', 'Jaringan Komputer', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id_dosen`);

--
-- Indeks untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_dosen` (`id_dosen`);

--
-- Indeks untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD PRIMARY KEY (`id_kehadiran`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mk`),
  ADD UNIQUE KEY `kode_mk` (`kode_mk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id_dosen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  MODIFY `id_kehadiran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_mk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_kuliah`
--
ALTER TABLE `jadwal_kuliah`
  ADD CONSTRAINT `jadwal_kuliah_ibfk_1` FOREIGN KEY (`id_mk`) REFERENCES `mata_kuliah` (`id_mk`),
  ADD CONSTRAINT `jadwal_kuliah_ibfk_2` FOREIGN KEY (`id_dosen`) REFERENCES `dosen` (`id_dosen`);

--
-- Ketidakleluasaan untuk tabel `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `kehadiran_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal_kuliah` (`id_jadwal`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
