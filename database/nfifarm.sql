-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 10.1.8-MariaDB - mariadb.org binary distribution
-- OS Server:                    Win32
-- HeidiSQL Versi:               11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk nfifarm
CREATE DATABASE IF NOT EXISTS `nfifarm` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `nfifarm`;

-- membuang struktur untuk table nfifarm.detailkegiatankelolahlahan
CREATE TABLE IF NOT EXISTS `detailkegiatankelolahlahan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noKegiatanKelolahLahan` varchar(70) DEFAULT NULL,
  `keterangankegiatanKelolahLahan` text,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `noKegiatanKelolahLahan` (`noKegiatanKelolahLahan`),
  CONSTRAINT `detailkegiatankelolahlahan_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.detailkegiatankelolahlahan: ~0 rows (lebih kurang)
DELETE FROM `detailkegiatankelolahlahan`;
/*!40000 ALTER TABLE `detailkegiatankelolahlahan` DISABLE KEYS */;
INSERT INTO `detailkegiatankelolahlahan` (`id`, `noKegiatanKelolahLahan`, `keterangankegiatanKelolahLahan`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	(1, '21092023-065536', 'ads akan menjadi lebih baik bbb', '2023-09-28 13:05:18', '1', '2024-01-23 20:18:21', '1');
/*!40000 ALTER TABLE `detailkegiatankelolahlahan` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.detailpembelianpupukobat
CREATE TABLE IF NOT EXISTS `detailpembelianpupukobat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPembelian` varchar(50) DEFAULT NULL,
  `kodePupukObat` varchar(10) DEFAULT NULL,
  `namaPupukObat` varchar(150) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `jumlahPembelian` float DEFAULT NULL,
  `jumlahPenggunaan` float DEFAULT NULL,
  `hargaBeli` float DEFAULT NULL,
  `subTotalPembelian` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `kodePupukObat` (`kodePupukObat`),
  KEY `noPembelian` (`noPembelian`),
  CONSTRAINT `detailpembelianpupukobat_ibfk_1` FOREIGN KEY (`kodePupukObat`) REFERENCES `pupukobat` (`kodePupukObat`),
  CONSTRAINT `detailpembelianpupukobat_ibfk_2` FOREIGN KEY (`noPembelian`) REFERENCES `pembelianpupukobat` (`noPembelian`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.detailpembelianpupukobat: ~21 rows (lebih kurang)
DELETE FROM `detailpembelianpupukobat`;
/*!40000 ALTER TABLE `detailpembelianpupukobat` DISABLE KEYS */;
INSERT INTO `detailpembelianpupukobat` (`id`, `noPembelian`, `kodePupukObat`, `namaPupukObat`, `satuan`, `jumlahPembelian`, `jumlahPenggunaan`, `hargaBeli`, `subTotalPembelian`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	(1, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 50, 0, 500, 500, '2023-10-26 06:27:46', '1', NULL, NULL),
	(2, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 50, 0, 500, 0, '2023-10-26 06:35:12', '1', NULL, NULL),
	(3, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 10, 0, 500, 0, '2023-10-26 06:36:44', '1', NULL, NULL),
	(4, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 200, 0, 500, 0, '2023-10-26 06:38:12', '1', NULL, NULL),
	(5, '2023-10-26 06:38:18', '20231041', 'aa', 'kg', 900, 0, 500, 0, '2023-10-26 06:38:33', '1', NULL, NULL),
	(6, '2023-10-26 06:38:38', '20231041', 'aa', 'kg', 10, 0, 100, 100, '2023-10-26 06:39:02', '1', NULL, NULL),
	(7, '2023-11-03 06:00:23', '20231041', 'aa', 'kg', 1, 0, 500, 500, '2023-11-03 06:00:46', '1', NULL, NULL),
	(8, '2023-11-03 06:19:32', '20231041', 'aa', 'kg', 5, 0, 5000, 25000, '2023-11-03 06:19:41', '1', NULL, NULL),
	(9, '2023-11-03 06:19:32', '20231041', 'aa', 'kg', 5, 0, 500, 2500, '2023-11-03 06:19:54', '1', NULL, NULL),
	(10, '2023-11-03 06:19:32', '20231041', 'aa', 'kg', 1, 0, 500, 500, '2023-11-03 06:22:10', '1', NULL, NULL),
	(11, '2023-11-03 06:19:32', '20231041', 'aa', 'kg', 60, 0, 500, 30000, '2023-11-03 06:22:31', '1', NULL, NULL),
	(12, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 1, 0, 500, 500, '2023-11-03 06:26:56', '1', NULL, NULL),
	(13, '2023-10-26 06:24:54', '20231041', 'aa', 'kg', 5000, 0, 2, 10000, '2023-11-03 06:27:10', '1', NULL, NULL),
	(15, '2023-12-20 06:51:23', '20231041', 'aa', 'kg', 5, 0, 5000, 25000, '2023-12-20 06:51:42', '1', NULL, NULL),
	(17, '2024-01-17 06:26:55', '20231041', 'aa', 'kg', 5, 0, 500, 2500, '2024-01-17 06:27:10', '1', NULL, NULL),
	(18, '2024-01-21 19:21:08', '20231041', 'aa', 'kg', 5, 0, 5000, 25000, '2024-01-21 19:21:20', '1', NULL, NULL),
	(19, '2024-01-21 19:23:30', '20231041', 'aa', 'kg', 6, 0, 500, 3000, '2024-01-21 19:23:39', '1', NULL, NULL),
	(20, '2024-01-21 19:25:23', '20231041', 'aa', 'kg', 5, 0, 500, 2500, '2024-01-21 19:25:32', '1', NULL, NULL),
	(21, '2024-01-21 19:25:23', '20231041', 'aa', 'kg', 5, 0, 500, 2500, '2024-01-21 19:25:38', '1', NULL, NULL),
	(24, '2024-01-21 19:26:33', '20231041', 'aa', 'kg', 5, 0, 5000, 25000, '2024-01-21 21:07:47', '1', NULL, NULL),
	(25, '2024-02-04 15:17:47', '20231041', 'aa', 'kg', 10, NULL, 5000, 50000, '2024-02-04 15:18:08', '1', NULL, NULL);
/*!40000 ALTER TABLE `detailpembelianpupukobat` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.hasilpanen
CREATE TABLE IF NOT EXISTS `hasilpanen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noKegiatanKelolahLahan` varchar(70) DEFAULT NULL,
  `tanggalPanen` date DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `jumlahPanen` float DEFAULT NULL,
  `hargaJual` float DEFAULT NULL,
  `subTotalPanen` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `noKegiatanKeolahLahan` (`noKegiatanKelolahLahan`),
  CONSTRAINT `hasilpanen_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.hasilpanen: ~0 rows (lebih kurang)
DELETE FROM `hasilpanen`;
/*!40000 ALTER TABLE `hasilpanen` DISABLE KEYS */;
/*!40000 ALTER TABLE `hasilpanen` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.jenistanaman
CREATE TABLE IF NOT EXISTS `jenistanaman` (
  `kodeJenisTanaman` varchar(10) NOT NULL,
  `jenisTanaman` varchar(200) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodeJenisTanaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.jenistanaman: ~3 rows (lebih kurang)
DELETE FROM `jenistanaman`;
/*!40000 ALTER TABLE `jenistanaman` DISABLE KEYS */;
INSERT INTO `jenistanaman` (`kodeJenisTanaman`, `jenisTanaman`, `status`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	('01', 'jagung', 'aktif', '2021-09-23 06:40:09', '1', NULL, NULL),
	('02', 'padi', 'aktif', '2021-09-23 06:40:17', '1', NULL, NULL),
	('03', 'tembakau', 'aktif', '2021-09-23 06:40:30', '1', '2023-10-10 21:30:00', '1');
/*!40000 ALTER TABLE `jenistanaman` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.kegiatankelolahlahan
CREATE TABLE IF NOT EXISTS `kegiatankelolahlahan` (
  `noKegiatanKelolahLahan` varchar(100) NOT NULL,
  `tanggalMulaiKegiatan` date DEFAULT NULL,
  `tanggalSelesaiKegiatan` date DEFAULT NULL,
  `kodeLokasiLahan` varchar(10) DEFAULT NULL,
  `LokasiLahan` varchar(200) DEFAULT NULL,
  `kodeJenisTanam` varchar(10) DEFAULT NULL,
  `jenisTanam` varchar(200) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL,
  `pendapatan` float DEFAULT NULL,
  `pengeluaran` float DEFAULT NULL,
  `keuntungan` float DEFAULT NULL,
  `keterangan` text,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noKegiatanKelolahLahan`),
  KEY `kodeLokasiLahan` (`kodeLokasiLahan`),
  KEY `kodeJenisTanam` (`kodeJenisTanam`),
  CONSTRAINT `kegiatankelolahlahan_ibfk_1` FOREIGN KEY (`kodeLokasiLahan`) REFERENCES `lahan` (`kodeLokasiLahan`),
  CONSTRAINT `kegiatankelolahlahan_ibfk_2` FOREIGN KEY (`kodeJenisTanam`) REFERENCES `jenistanaman` (`kodeJenisTanaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.kegiatankelolahlahan: ~0 rows (lebih kurang)
DELETE FROM `kegiatankelolahlahan`;
/*!40000 ALTER TABLE `kegiatankelolahlahan` DISABLE KEYS */;
INSERT INTO `kegiatankelolahlahan` (`noKegiatanKelolahLahan`, `tanggalMulaiKegiatan`, `tanggalSelesaiKegiatan`, `kodeLokasiLahan`, `LokasiLahan`, `kodeJenisTanam`, `jenisTanam`, `status`, `pendapatan`, `pengeluaran`, `keuntungan`, `keterangan`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	('21092023-065536', '2023-09-21', '1899-12-30', '01', 'lokasi a', '02', 'padi', 'aktif', NULL, NULL, NULL, NULL, '2023-09-21 06:55:45', '1', '2023-09-21 20:47:28', '1');
/*!40000 ALTER TABLE `kegiatankelolahlahan` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.lahan
CREATE TABLE IF NOT EXISTS `lahan` (
  `kodeLokasiLahan` varchar(10) NOT NULL,
  `lokasiLahan` varchar(200) DEFAULT NULL,
  `tanggalPembelian` date DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodeLokasiLahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.lahan: ~0 rows (lebih kurang)
DELETE FROM `lahan`;
/*!40000 ALTER TABLE `lahan` DISABLE KEYS */;
INSERT INTO `lahan` (`kodeLokasiLahan`, `lokasiLahan`, `tanggalPembelian`, `status`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	('01', 'lokasi a', '2023-09-21', 'aktif', '2023-09-21 06:45:57', '1', '2023-09-21 06:46:11', '1');
/*!40000 ALTER TABLE `lahan` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `status` enum('y','n') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nama` (`nama`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.pegawai: ~3 rows (lebih kurang)
DELETE FROM `pegawai`;
/*!40000 ALTER TABLE `pegawai` DISABLE KEYS */;
INSERT INTO `pegawai` (`id`, `nama`, `status`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	(2, 'ismail', 'y', '2023-09-29 11:06:16', '1', '2023-09-30 09:33:13', '1'),
	(3, 'hasan', 'n', '2023-09-30 09:43:41', '1', '2023-10-10 21:32:45', '1'),
	(4, 'naafi', 'y', '2023-10-04 21:01:35', '1', NULL, NULL);
/*!40000 ALTER TABLE `pegawai` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.pelaksanapekerja
CREATE TABLE IF NOT EXISTS `pelaksanapekerja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noKegiatanKelolahLahan` varchar(70) DEFAULT NULL,
  `tanggalBekerja` date DEFAULT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `upah` float DEFAULT NULL,
  `keterangan` text,
  `status` enum('lunas','belum lunas') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `noKegiatanKelolaLahan` (`noKegiatanKelolahLahan`),
  KEY `nama` (`nama`),
  CONSTRAINT `pelaksanapekerja_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`),
  CONSTRAINT `pelaksanapekerja_ibfk_2` FOREIGN KEY (`nama`) REFERENCES `pegawai` (`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.pelaksanapekerja: ~0 rows (lebih kurang)
DELETE FROM `pelaksanapekerja`;
/*!40000 ALTER TABLE `pelaksanapekerja` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelaksanapekerja` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.pembelianpupukobat
CREATE TABLE IF NOT EXISTS `pembelianpupukobat` (
  `noPembelian` varchar(50) NOT NULL,
  `tanggalPembelian` datetime DEFAULT NULL,
  `totalPembelian` float DEFAULT NULL,
  `sisaPembayaran` float DEFAULT NULL,
  `status` enum('lunas','belum lunas','batal') DEFAULT NULL,
  `keterangan` text,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noPembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.pembelianpupukobat: ~14 rows (lebih kurang)
DELETE FROM `pembelianpupukobat`;
/*!40000 ALTER TABLE `pembelianpupukobat` DISABLE KEYS */;
INSERT INTO `pembelianpupukobat` (`noPembelian`, `tanggalPembelian`, `totalPembelian`, `sisaPembayaran`, `status`, `keterangan`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	('2023-10-26 06:24:54', '2023-11-03 00:00:00', 11000, 0, '', NULL, '2023-10-26 06:25:02', '1', NULL, NULL),
	('2023-10-26 06:38:18', '2023-10-26 00:00:00', 0, 0, '', NULL, '2023-10-26 06:38:33', '1', NULL, NULL),
	('2023-10-26 06:38:38', '2023-10-26 00:00:00', 0, 0, '', NULL, '2023-10-26 06:39:02', '1', NULL, NULL),
	('2023-11-03 06:00:23', '2023-11-03 00:00:00', 0, 0, '', NULL, '2023-11-03 06:00:46', '1', NULL, NULL),
	('2023-11-03 06:19:32', '2023-11-03 00:00:00', 0, 0, '', NULL, '2023-11-03 06:19:41', '1', NULL, NULL),
	('2023-11-03 06:29:47', '2023-11-03 00:00:00', 0, 0, '', NULL, '2023-11-03 06:29:56', '1', NULL, NULL),
	('2023-12-20 06:51:23', '2023-12-20 00:00:00', 2569600, 500000, '', NULL, '2023-12-20 06:51:42', '1', NULL, NULL),
	('2024-01-17 06:15:18', '2024-01-17 00:00:00', 2594600, 0, '', NULL, '2024-01-17 06:15:54', '1', NULL, NULL),
	('2024-01-17 06:26:55', '2024-01-17 00:00:00', 5094600, 0, '', NULL, '2024-01-17 06:27:10', '1', NULL, NULL),
	('2024-01-21 19:21:08', '2024-01-21 00:00:00', 25000, 0, 'lunas', NULL, '2024-01-21 19:21:20', '1', NULL, NULL),
	('2024-01-21 19:23:30', '2024-01-21 00:00:00', 0, 0, '', NULL, '2024-01-21 19:23:39', '1', NULL, NULL),
	('2024-01-21 19:25:23', '2024-01-21 00:00:00', 5000, 0, '', NULL, '2024-01-21 19:25:32', '1', NULL, NULL),
	('2024-01-21 19:26:33', '2024-01-21 00:00:00', 25000, 0, 'belum lunas', 'asdfsd\r\n', '2024-01-21 19:26:44', '1', '2024-01-28 11:09:44', '1'),
	('2024-02-04 15:17:47', '2024-02-04 00:00:00', 50000, 0, '', NULL, '2024-02-04 15:18:08', '1', NULL, NULL);
/*!40000 ALTER TABLE `pembelianpupukobat` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.pendapatan
CREATE TABLE IF NOT EXISTS `pendapatan` (
  `idPendapatan` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idPendapatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.pendapatan: ~0 rows (lebih kurang)
DELETE FROM `pendapatan`;
/*!40000 ALTER TABLE `pendapatan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pendapatan` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.penggunaanalat
CREATE TABLE IF NOT EXISTS `penggunaanalat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noKegiatanKelolahLahan` varchar(70) DEFAULT NULL,
  `tanggalAlat` date DEFAULT NULL,
  `namaAlat` varchar(100) DEFAULT NULL,
  `biayaAlat` float DEFAULT NULL,
  `keterangan` text,
  `status` enum('lunas','belum lunas') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `noKegiatanKelolaLahan` (`noKegiatanKelolahLahan`),
  CONSTRAINT `penggunaanalat_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.penggunaanalat: ~0 rows (lebih kurang)
DELETE FROM `penggunaanalat`;
/*!40000 ALTER TABLE `penggunaanalat` DISABLE KEYS */;
/*!40000 ALTER TABLE `penggunaanalat` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.penggunaanpupukobat
CREATE TABLE IF NOT EXISTS `penggunaanpupukobat` (
  `id` int(11) DEFAULT NULL,
  `noKegiatanKelolahLahan` varchar(70) DEFAULT NULL,
  `tanggalPupuk` date DEFAULT NULL,
  `namaPupuk` varchar(200) DEFAULT NULL,
  `hargaPupuk` float DEFAULT NULL,
  `jumlahPupuk` int(11) DEFAULT NULL,
  `subTotalPupuk` float DEFAULT NULL,
  `keterangan` text,
  `status` enum('lunas','belum lunas') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  KEY `noKegiatanKelolahLahan` (`noKegiatanKelolahLahan`),
  CONSTRAINT `penggunaanpupukobat_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.penggunaanpupukobat: ~0 rows (lebih kurang)
DELETE FROM `penggunaanpupukobat`;
/*!40000 ALTER TABLE `penggunaanpupukobat` DISABLE KEYS */;
/*!40000 ALTER TABLE `penggunaanpupukobat` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.pupukobat
CREATE TABLE IF NOT EXISTS `pupukobat` (
  `kodePupukObat` varchar(10) NOT NULL,
  `namaPupukObat` varchar(150) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodePupukObat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.pupukobat: ~0 rows (lebih kurang)
DELETE FROM `pupukobat`;
/*!40000 ALTER TABLE `pupukobat` DISABLE KEYS */;
INSERT INTO `pupukobat` (`kodePupukObat`, `namaPupukObat`, `satuan`, `stok`, `createDate`, `createUser`, `modifDate`, `modifUser`) VALUES
	('20231041', 'aa', 'kg', 7358, '2023-10-04 20:59:38', '1', '2024-02-04 15:18:08', '1');
/*!40000 ALTER TABLE `pupukobat` ENABLE KEYS */;

-- membuang struktur untuk table nfifarm.satuan
CREATE TABLE IF NOT EXISTS `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `satuan` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel nfifarm.satuan: ~5 rows (lebih kurang)
DELETE FROM `satuan`;
/*!40000 ALTER TABLE `satuan` DISABLE KEYS */;
INSERT INTO `satuan` (`id`, `satuan`) VALUES
	(1, 'kg'),
	(2, 'ons'),
	(3, 'biji'),
	(4, 'pohon'),
	(5, 'biji');
/*!40000 ALTER TABLE `satuan` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
