/*
SQLyog Ultimate v12.5.1 (32 bit)
MySQL - 10.1.8-MariaDB : Database - nfifarm
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`nfifarm` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `nfifarm`;

/*Table structure for table `detailkegiatankelolahlahan` */

DROP TABLE IF EXISTS `detailkegiatankelolahlahan`;

CREATE TABLE `detailkegiatankelolahlahan` (
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

/*Table structure for table `detailpembelianpupukobat` */

DROP TABLE IF EXISTS `detailpembelianpupukobat`;

CREATE TABLE `detailpembelianpupukobat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noPembelian` varchar(50) DEFAULT NULL,
  `kodePupukObat` varchar(10) DEFAULT NULL,
  `namaPupukObat` varchar(150) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `jumlahPembelian` float DEFAULT NULL,
  `hargaBeli` float DEFAULT NULL,
  `subTotalPembelian` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `noPembelian` (`noPembelian`),
  CONSTRAINT `detailpembelianpupukobat_ibfk_1` FOREIGN KEY (`noPembelian`) REFERENCES `pembelianpupukobat` (`noPembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `hasilpanen` */

DROP TABLE IF EXISTS `hasilpanen`;

CREATE TABLE `hasilpanen` (
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

/*Table structure for table `jenistanaman` */

DROP TABLE IF EXISTS `jenistanaman`;

CREATE TABLE `jenistanaman` (
  `kodeJenisTanaman` varchar(10) NOT NULL,
  `jenisTanaman` varchar(200) DEFAULT NULL,
  `status` enum('aktif','tidak aktif') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodeJenisTanaman`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `kegiatankelolahlahan` */

DROP TABLE IF EXISTS `kegiatankelolahlahan`;

CREATE TABLE `kegiatankelolahlahan` (
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

/*Table structure for table `lahan` */

DROP TABLE IF EXISTS `lahan`;

CREATE TABLE `lahan` (
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

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(200) DEFAULT NULL,
  `status` enum('y','n') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nama` (`nama`),
  CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`nama`) REFERENCES `pelaksanapekerja` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Table structure for table `pelaksanapekerja` */

DROP TABLE IF EXISTS `pelaksanapekerja`;

CREATE TABLE `pelaksanapekerja` (
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
  CONSTRAINT `pelaksanapekerja_ibfk_1` FOREIGN KEY (`noKegiatanKelolahLahan`) REFERENCES `kegiatankelolahlahan` (`noKegiatanKelolahLahan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `pembelianpupukobat` */

DROP TABLE IF EXISTS `pembelianpupukobat`;

CREATE TABLE `pembelianpupukobat` (
  `noPembelian` varchar(50) NOT NULL,
  `tanggalPembelian` datetime DEFAULT NULL,
  `totalPembelian` float DEFAULT NULL,
  `status` enum('lunas','belum lunas') DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`noPembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `penggunaanalat` */

DROP TABLE IF EXISTS `penggunaanalat`;

CREATE TABLE `penggunaanalat` (
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Table structure for table `penggunaanpupukobat` */

DROP TABLE IF EXISTS `penggunaanpupukobat`;

CREATE TABLE `penggunaanpupukobat` (
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

/*Table structure for table `pupukobat` */

DROP TABLE IF EXISTS `pupukobat`;

CREATE TABLE `pupukobat` (
  `kodePupukObat` varchar(10) NOT NULL,
  `namaPupukObat` varchar(150) DEFAULT NULL,
  `satuan` varchar(50) DEFAULT NULL,
  `stok` float DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `createUser` varchar(50) DEFAULT NULL,
  `modifDate` datetime DEFAULT NULL,
  `modifUser` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kodePupukObat`),
  CONSTRAINT `pupukobat_ibfk_1` FOREIGN KEY (`kodePupukObat`) REFERENCES `detailpembelianpupukobat` (`noPembelian`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
