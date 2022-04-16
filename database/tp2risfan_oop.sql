-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for tp2risfan_oop
CREATE DATABASE IF NOT EXISTS `tp2risfan_oop` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `tp2risfan_oop`;

-- Dumping structure for table tp2risfan_oop.tbl_kabkota
CREATE TABLE IF NOT EXISTS `tbl_kabkota` (
  `id_kabkota` int(11) NOT NULL AUTO_INCREMENT,
  `kode_kabkota` varchar(26) NOT NULL,
  `nama_kabkota` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `kode_provinsi` varchar(26) NOT NULL,
  PRIMARY KEY (`id_kabkota`) USING BTREE,
  UNIQUE KEY `kode_kabkota` (`kode_kabkota`) USING BTREE,
  KEY `kode_provinsi` (`kode_provinsi`),
  CONSTRAINT `tbl_kabkota_ibfk_1` FOREIGN KEY (`kode_provinsi`) REFERENCES `tbl_provinsi` (`kode_provinsi`)
) ENGINE=InnoDB AUTO_INCREMENT=227 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tp2risfan_oop.tbl_kabkota: ~32 rows (approximately)
/*!40000 ALTER TABLE `tbl_kabkota` DISABLE KEYS */;
INSERT INTO `tbl_kabkota` (`id_kabkota`, `kode_kabkota`, `nama_kabkota`, `created_at`, `update_at`, `kode_provinsi`) VALUES
	(1, 'KSU', 'Kabupaten Adm. Kepulauan Seribu', '2022-04-16 16:41:31', '2022-04-16 16:47:17', 'ID-JK'),
	(2, 'TNA', 'Kota Adm. Jakarta Pusat', '2022-04-16 16:48:53', NULL, 'ID-JK'),
	(3, 'TJP', 'Kota Adm. Jakarta Utara', '2022-04-16 17:03:14', NULL, 'ID-JK'),
	(4, 'GGP', 'Kota Adm. Jakarta Barat', '2022-04-16 17:03:14', NULL, 'ID-JK'),
	(5, 'KYB', 'Kota Adm. Jakarta Selatan', '2022-04-16 17:03:14', NULL, 'ID-JK'),
	(6, 'CKG', 'Kota Adm. Jakarta Timur', '2022-04-16 17:03:14', NULL, 'ID-JK'),
	(7, 'CBI', 'Kabupaten Bogor', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(8, 'SBM', 'Kabupaten Sukabumi', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(9, 'CJR', 'Kabupaten Cianjur', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(10, 'SOR', 'Kabupaten Bandung', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(11, 'GRT', 'Kabupaten Garut', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(12, 'SPA', 'Kabupaten Tasikmalaya', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(13, 'CMS', 'Kabupaten Ciamis', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(14, 'KNG', 'Kabupaten Kuningan', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(15, 'SBR', 'Kabupaten Cirebon', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(16, 'MJL', 'Kabupaten Majalengka', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(17, 'SMD', 'Kabupaten Sumedang', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(18, 'IDM', 'Kabupaten Indramayu', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(19, 'SNG', 'Kabupaten Subang', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(20, 'PWK', 'Kabupaten Purwakarta', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(21, 'KWG', 'Kabupaten Karawang', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(22, 'CKR', 'Kabupaten Bekasi', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(23, 'NPH', 'Kabupaten Bandung Barat', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(24, 'BGR', 'Kota Bogor', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(25, 'SKB', 'Kota Sukabumi', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(26, 'BDG', 'Kota Bandung', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(27, 'CBN', 'Kota Cirebon', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(28, 'BKS', 'Kota Bekasi', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(29, 'DPK', 'Kota Depok', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(30, 'CMH', 'Kota Cimahi', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(31, 'TSM', 'Kota Tasikmalaya', '2022-04-16 17:03:14', NULL, 'ID-JB'),
	(32, 'BJR', 'Kota Banjar', '2022-04-16 17:03:14', NULL, 'ID-JB');
/*!40000 ALTER TABLE `tbl_kabkota` ENABLE KEYS */;

-- Dumping structure for table tp2risfan_oop.tbl_provinsi
CREATE TABLE IF NOT EXISTS `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL AUTO_INCREMENT,
  `kode_provinsi` varchar(26) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `update_at` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_provinsi`) USING BTREE,
  UNIQUE KEY `kode_provinsi` (`kode_provinsi`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table tp2risfan_oop.tbl_provinsi: ~2 rows (approximately)
/*!40000 ALTER TABLE `tbl_provinsi` DISABLE KEYS */;
INSERT INTO `tbl_provinsi` (`id_provinsi`, `kode_provinsi`, `nama_provinsi`, `created_at`, `update_at`) VALUES
	(1, 'ID-JK', 'DKI Jakarta', '2022-04-16 16:37:09', NULL),
	(2, 'ID-JB', 'Jawa Barat', '2022-04-16 16:37:45', NULL);
/*!40000 ALTER TABLE `tbl_provinsi` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
