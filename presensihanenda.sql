/*
 Navicat Premium Data Transfer

 Source Server         : SERVER LOKAL
 Source Server Type    : MySQL
 Source Server Version : 80030 (8.0.30)
 Source Host           : localhost:3306
 Source Schema         : presensihanenda

 Target Server Type    : MySQL
 Target Server Version : 80030 (8.0.30)
 File Encoding         : 65001

 Date: 21/02/2024 18:15:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cabang
-- ----------------------------
DROP TABLE IF EXISTS `cabang`;
CREATE TABLE `cabang`  (
  `kode_cabang` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_cabang` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `lokasi_cabang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `radius_cabang` int NOT NULL,
  PRIMARY KEY (`kode_cabang`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of cabang
-- ----------------------------
INSERT INTO `cabang` VALUES ('PST', 'Klinik Utama Hanenda', '-6.2955481,106.8587626', 20);

-- ----------------------------
-- Table structure for departemen
-- ----------------------------
DROP TABLE IF EXISTS `departemen`;
CREATE TABLE `departemen`  (
  `kode_dept` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_dept` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`kode_dept`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of departemen
-- ----------------------------
INSERT INTO `departemen` VALUES ('ADM', 'Admisi Shift 1');
INSERT INTO `departemen` VALUES ('ADS', 'Admisi Shift 2');
INSERT INTO `departemen` VALUES ('APT', 'Apoteker');
INSERT INTO `departemen` VALUES ('CSM', 'CaseMix');
INSERT INTO `departemen` VALUES ('FAR', 'Farmasi Shift 1');
INSERT INTO `departemen` VALUES ('FAS', 'Farmasi Shift 2');
INSERT INTO `departemen` VALUES ('FIN', 'Finance');
INSERT INTO `departemen` VALUES ('HRD', 'Human Resource Development ');
INSERT INTO `departemen` VALUES ('IT', 'Information Technology');
INSERT INTO `departemen` VALUES ('SAP', 'SarPras Shift 2');
INSERT INTO `departemen` VALUES ('SAR', 'SarPras Shift 1');
INSERT INTO `departemen` VALUES ('SCR', 'Security Shift 1');
INSERT INTO `departemen` VALUES ('SCT', 'Security Shift 2');
INSERT INTO `departemen` VALUES ('TMD', 'Tenaga Medis Shift 1');
INSERT INTO `departemen` VALUES ('TMS', 'Tenaga Medis Shift 2');
INSERT INTO `departemen` VALUES ('TRP', 'Terapis Shift 1');
INSERT INTO `departemen` VALUES ('TRS', 'Terapis Shift 2');

-- ----------------------------
-- Table structure for jam_kerja
-- ----------------------------
DROP TABLE IF EXISTS `jam_kerja`;
CREATE TABLE `jam_kerja`  (
  `kode_jam_kerja` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_jam_kerja` varchar(15) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `awal_jam_masuk` time NOT NULL,
  `jam_masuk` time NOT NULL,
  `akhir_jam_masuk` time NOT NULL,
  `jam_pulang` time NOT NULL,
  `lintashari` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jam_kerja`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of jam_kerja
-- ----------------------------
INSERT INTO `jam_kerja` VALUES ('JK01', 'Office Hour', '06:00:00', '08:00:00', '12:00:00', '17:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK02', 'S1 SarPras', '06:00:00', '07:00:00', '08:00:00', '14:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK03', 'S2 SarPras', '12:00:00', '13:30:00', '14:30:00', '20:30:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK04', 'S1 Security', '06:00:00', '08:00:00', '09:00:00', '20:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK05', 'S2 Security', '18:00:00', '20:00:00', '21:00:00', '08:00:00', '1');
INSERT INTO `jam_kerja` VALUES ('JK06', 'S1 Tenaga Medis', '06:00:00', '07:30:00', '09:00:00', '14:30:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK07', 'S2 Tenaga Medis', '12:00:00', '14:30:00', '16:00:00', '20:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK08', 'CaseMix', '08:00:00', '10:00:00', '12:00:00', '17:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK09', 'S1 Terapis', '06:00:00', '08:00:00', '09:00:00', '15:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK10', 'S2 Terapis', '12:00:00', '15:00:00', '16:00:00', '20:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK11', 'Apoteker', '14:00:00', '15:30:00', '17:00:00', '18:00:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK12', 'S1 Admisi', '06:00:00', '07:30:00', '09:00:00', '14:30:00', '0');
INSERT INTO `jam_kerja` VALUES ('JK13', 'S2 Admisi', '06:00:00', '13:00:00', '15:00:00', '20:00:00', '0');

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan`  (
  `nik` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `jabatan` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `no_hp` varchar(13) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `foto` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_dept` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_cabang` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`nik`) USING BTREE,
  INDEX `fk_karyawan_cabang`(`kode_cabang` ASC) USING BTREE,
  INDEX `fk_karyawan_dept`(`kode_dept` ASC) USING BTREE,
  CONSTRAINT `fk_karyawan_cabang` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_karyawan_dept` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('HN039', 'Nur Qolbiah', 'Fisioterapi', '085397996991', NULL, 'TRS', 'PST', '$2y$10$dRcyU7SyjLXyMipll3QWZOyAFVMpPghLAYrrX/vdDkSkgKdcpuLi2', NULL);
INSERT INTO `karyawan` VALUES ('HNDA001', 'Arifin Fadli', 'Security', '089609011890', NULL, 'SCR', 'PST', '$2y$10$R2xAnc7LclsmFAkItfULJ.yyMhr9fntUPdrqSgmcqxTUChDfo6sP2', NULL);
INSERT INTO `karyawan` VALUES ('HNDA002', 'Ayu Intan Permatasari', 'Fisioterapis', '085283499938', NULL, 'TRP', 'PST', '$2y$10$mInPJXb0.ozLUUdWnUBIhOHhUecQKLn2Kw5RHxYDP7bmvEwTHE0jG', NULL);
INSERT INTO `karyawan` VALUES ('HNDA003', 'Fahmi Rinaldi', 'CaseMix', '08886024451', NULL, 'CSM', 'PST', '$2y$10$L/ORtmF8njJ/Bwb/tZDe5umYs7minkipspN5Lp2kvvC64jq/0ESea', NULL);
INSERT INTO `karyawan` VALUES ('HNDA004', 'Hambar Sambowo Rumi', 'Perawat', '081293228015', NULL, 'TMD', 'PST', '$2y$10$hONKfUCmwbGsantpRKwIpe4OUJnW48gCT7Q2Wv14xaBhPonVAd2HG', NULL);
INSERT INTO `karyawan` VALUES ('HNDA005', 'Ismail', 'Admisi', '085714023100', NULL, 'ADM', 'PST', '$2y$10$F2FM/J/GmFzauJvJYhNAu.5ZiWxxf3dm3RnrAtU0D5MNhCPUngAu2', NULL);
INSERT INTO `karyawan` VALUES ('HNDA006', 'Maya Maulina Solihah', 'HRD', '085931204065', NULL, 'HRD', 'PST', '$2y$10$KmF6ojXFz75GjjXpkIuGbuOheIvUbbZKfotvtomulbOc3gI6GE.X.', NULL);
INSERT INTO `karyawan` VALUES ('HNDA008', 'Muhlis Rowi', 'Finance', '089669611115', NULL, 'FIN', 'PST', '$2y$10$3gZFTGKkCAlggL7YRoPFCO7sDZ1jojqjegyx5wMmLmg0yeG7JPsju', NULL);
INSERT INTO `karyawan` VALUES ('HNDA009', 'Muzzaky Fathurrahman', 'Fisioterapi', '085885172189', NULL, 'TRP', 'PST', '$2y$10$pOp6LRS5atGnIGFkzGNdp.7xRNV2Oykz5uehKPg.UaOaS2I/X2qwG', NULL);
INSERT INTO `karyawan` VALUES ('HNDA013', 'Zahra Amelia', 'Perawat', '081380182246', NULL, 'TMS', 'PST', '$2y$10$MY9Opitkzk3K3PjayUepkeF1sQYOBcnhrAq41GxgqSpM0KDfdCYoK', NULL);
INSERT INTO `karyawan` VALUES ('HNDA014', 'Ahmad Zainudin', 'Security', '08994382498', NULL, 'SCR', 'PST', '$2y$10$fwf5MU0DV.U6rWRAILFZb.kdkVYgnBPj7olWyKF9s0atO1sp2aYHq', NULL);
INSERT INTO `karyawan` VALUES ('HNDA015', 'Mohammad Ramdhan', 'Apoteker', '088210338289', NULL, 'APT', 'PST', '$2y$10$Lu908PD.y3YIwypWmD8OB.YjUoAWNPL8ThnpwB8OjkZqODAX2b7xm', NULL);
INSERT INTO `karyawan` VALUES ('HNDA016', 'Ayuk Trisnawati', 'Farmasi', '081210660815', NULL, 'FAR', 'PST', '$2y$10$u2iRm4xVz2p.ZX1pzWrapeWgBDZQp5YKRPIQElTjU1GHQucXpsZba', NULL);
INSERT INTO `karyawan` VALUES ('HNDA017', 'Fuji Astuti', 'Farmasi', '085782270707', NULL, 'FAS', 'PST', '$2y$10$nYLPS0h2iyEG23v8xFtgdOnakDcWK2lrBUsXeNwHS7AoF1AgdnrEy', NULL);
INSERT INTO `karyawan` VALUES ('HNDA023', 'apt Suprihati, M.Si', 'Wakil Direktur', '088808625139', NULL, 'HRD', 'PST', '$2y$10$iK60DpHbE3qByFcqwZG96u6gr958/sCVCgpJd630d443YV6PF7jfq', NULL);
INSERT INTO `karyawan` VALUES ('HNDA024', 'Dede Firmansyah', 'IT', '0818670988', 'HN024.jpg', 'IT', 'PST', '$2y$10$cOKh5susis7F/pHaGrGTG.sFDrRnWYucqjq6Jcv2jpNcjxKlmstgS', NULL);
INSERT INTO `karyawan` VALUES ('HNDA025', 'Achmad Mutatohirin', 'Security', '081283667081', NULL, 'SCT', 'PST', '$2y$10$bnvaP5Xi5LfGztNTRbZ7uu54MLVArBdNo//UsxNHW0OVxKj2PFyTS', NULL);
INSERT INTO `karyawan` VALUES ('HNDA026', 'Annissa Rizkia', 'Terapis', '082226727843', NULL, 'TRP', 'PST', '$2y$10$7FW9y/yZUNKioqFWSrtBluUE2AIqz45I9PZ7Ze1HP6ft1kVxhDl4S', NULL);
INSERT INTO `karyawan` VALUES ('HNDA030', 'Renyta Jayantyasa', 'Terapis', '085879748697', NULL, 'TRS', 'PST', '$2y$10$OoO4jl1T.CsHMEYhs5Jbb.qbe8qbM/croUx2qxdLh4jd9SnfY3B/m', NULL);
INSERT INTO `karyawan` VALUES ('HNDA032', 'Widhia Gita Bella', 'Admisi', '081387205417', NULL, 'ADM', 'PST', '$2y$10$Ws6Bs363CAHstYkEn6i2DOqsye.SAaL3jkGdJfIge4FKQH4VFaTXS', NULL);
INSERT INTO `karyawan` VALUES ('HNDA033', 'Wahyu Priyanto', 'SarPras', '081212474818', NULL, 'SAP', 'PST', '$2y$10$2qUvftfNR43kNw6BwZBcNucEEFTuhs7x8B.JjK4L9t6XOmz.4RDI.', NULL);
INSERT INTO `karyawan` VALUES ('HNDA034', 'Alviany Fitriansyah', 'Admisi', '089671758940', NULL, 'ADS', 'PST', '$2y$10$HdRyFIvuU1/zUAe7MlCGA./m5K0DTSfT6Vz9I2eegDN6OF3z3PrQq', NULL);
INSERT INTO `karyawan` VALUES ('HNDA037', 'Mouretta Risti Kusumaningrum', 'Terapis', '085784375560', NULL, 'TRP', 'PST', '$2y$10$mE8R4Re6Xo9y4NPwU4Pi2uismaY5A39yeghU3quulDw894MMNZHhy', NULL);
INSERT INTO `karyawan` VALUES ('HNDA038', 'Muhammad Farahat', 'SarPras', '087820910844', NULL, 'SAR', 'PST', '$2y$10$AWLQO3da/e4uJt2PAfuujeGuq/HnH.v.fvRzlvFl9tAqkC2pb8yom', NULL);

-- ----------------------------
-- Table structure for konfigurasi_jamkerja
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi_jamkerja`;
CREATE TABLE `konfigurasi_jamkerja`  (
  `nik` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hari` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `fk_kj_karyawan`(`nik` ASC) USING BTREE,
  INDEX `fk_kj_jk`(`kode_jam_kerja` ASC) USING BTREE,
  CONSTRAINT `fk_kj_jk` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `jam_kerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_kj_karyawan` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of konfigurasi_jamkerja
-- ----------------------------

-- ----------------------------
-- Table structure for konfigurasi_jamkerja_by_date
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi_jamkerja_by_date`;
CREATE TABLE `konfigurasi_jamkerja_by_date`  (
  `nik` char(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tanggal` date NULL DEFAULT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `fk_kjbydate_karyawan`(`nik` ASC) USING BTREE,
  CONSTRAINT `fk_kjbd_karyawan` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of konfigurasi_jamkerja_by_date
-- ----------------------------

-- ----------------------------
-- Table structure for konfigurasi_jk_dept
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi_jk_dept`;
CREATE TABLE `konfigurasi_jk_dept`  (
  `kode_jk_dept` char(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `kode_cabang` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_dept` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`kode_jk_dept`) USING BTREE,
  INDEX `fk_kjd_cabang`(`kode_cabang` ASC) USING BTREE,
  INDEX `fk_kjd_dept`(`kode_dept` ASC) USING BTREE,
  CONSTRAINT `fk_kjd_cabang` FOREIGN KEY (`kode_cabang`) REFERENCES `cabang` (`kode_cabang`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_kjd_dept` FOREIGN KEY (`kode_dept`) REFERENCES `departemen` (`kode_dept`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of konfigurasi_jk_dept
-- ----------------------------
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTADM', 'PST', 'ADM');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTADS', 'PST', 'ADS');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTAPT', 'PST', 'APT');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTCSM', 'PST', 'CSM');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTFIN', 'PST', 'FIN');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTHRD', 'PST', 'HRD');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTIT', 'PST', 'IT');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTSAP', 'PST', 'SAP');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTSAR', 'PST', 'SAR');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTSCR', 'PST', 'SCR');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTSCT', 'PST', 'SCT');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTTMD', 'PST', 'TMD');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTTMS', 'PST', 'TMS');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTTRP', 'PST', 'TRP');
INSERT INTO `konfigurasi_jk_dept` VALUES ('JPSTTRS', 'PST', 'TRS');

-- ----------------------------
-- Table structure for konfigurasi_jk_dept_detail
-- ----------------------------
DROP TABLE IF EXISTS `konfigurasi_jk_dept_detail`;
CREATE TABLE `konfigurasi_jk_dept_detail`  (
  `kode_jk_dept` char(7) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `hari` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_jam_kerja` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  INDEX `fk_jkdept`(`kode_jk_dept` ASC) USING BTREE,
  CONSTRAINT `fk_jkdept` FOREIGN KEY (`kode_jk_dept`) REFERENCES `konfigurasi_jk_dept` (`kode_jk_dept`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of konfigurasi_jk_dept_detail
-- ----------------------------
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Senin', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Selasa', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Rabu', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Kamis', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Jumat', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Sabtu', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADM', 'Minggu', 'JK12');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Senin', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Selasa', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Rabu', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Kamis', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Jumat', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Sabtu', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTADS', 'Minggu', 'JK13');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Senin', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Selasa', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Rabu', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Kamis', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Jumat', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Sabtu', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTAPT', 'Minggu', 'JK11');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Senin', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Selasa', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Rabu', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Kamis', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Jumat', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Sabtu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTCSM', 'Minggu', 'JK08');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Senin', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Selasa', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Rabu', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Kamis', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Jumat', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Sabtu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTFIN', 'Minggu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Senin', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Selasa', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Rabu', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Kamis', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Jumat', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Sabtu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTHRD', 'Minggu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Senin', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Selasa', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Rabu', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Kamis', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Jumat', 'JK01');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Sabtu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTIT', 'Minggu', NULL);
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Senin', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Selasa', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Rabu', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Kamis', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Jumat', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Sabtu', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCR', 'Minggu', 'JK04');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Senin', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Selasa', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Rabu', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Kamis', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Jumat', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Sabtu', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSCT', 'Minggu', 'JK05');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Senin', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Selasa', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Rabu', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Kamis', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Jumat', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Sabtu', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMD', 'Minggu', 'JK06');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Senin', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Selasa', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Rabu', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Kamis', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Jumat', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Sabtu', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTMS', 'Minggu', 'JK07');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Senin', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Selasa', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Rabu', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Kamis', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Jumat', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Sabtu', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRP', 'Minggu', 'JK09');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Senin', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Selasa', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Rabu', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Kamis', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Jumat', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Sabtu', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTTRS', 'Minggu', 'JK10');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Senin', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Selasa', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Rabu', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Kamis', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Jumat', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Sabtu', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAR', 'Minggu', 'JK02');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Senin', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Selasa', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Rabu', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Kamis', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Jumat', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Sabtu', 'JK03');
INSERT INTO `konfigurasi_jk_dept_detail` VALUES ('JPSTSAP', 'Minggu', 'JK03');

-- ----------------------------
-- Table structure for master_cuti
-- ----------------------------
DROP TABLE IF EXISTS `master_cuti`;
CREATE TABLE `master_cuti`  (
  `kode_cuti` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nama_cuti` varchar(30) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jml_hari` smallint NULL DEFAULT NULL,
  PRIMARY KEY (`kode_cuti`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of master_cuti
-- ----------------------------
INSERT INTO `master_cuti` VALUES ('C01', 'Tahunan', 12);
INSERT INTO `master_cuti` VALUES ('C02', 'Cuti Melahirkan', 30);
INSERT INTO `master_cuti` VALUES ('C04', 'Cuti Menikah', 2);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (4, '2023_12_14_233749_create_permission_tables', 1);
INSERT INTO `migrations` VALUES (5, '2023_12_15_002819_create_permission_tables', 2);

-- ----------------------------
-- Table structure for model_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE `model_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_permissions_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for model_has_roles
-- ----------------------------
DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE `model_has_roles`  (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`, `model_id`, `model_type`) USING BTREE,
  INDEX `model_has_roles_model_id_model_type_index`(`model_id` ASC, `model_type` ASC) USING BTREE,
  CONSTRAINT `fk_users` FOREIGN KEY (`model_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of model_has_roles
-- ----------------------------
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 9);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 15);
INSERT INTO `model_has_roles` VALUES (1, 'App\\Models\\User', 16);

-- ----------------------------
-- Table structure for pengajuan_izin
-- ----------------------------
DROP TABLE IF EXISTS `pengajuan_izin`;
CREATE TABLE `pengajuan_izin`  (
  `kode_izin` char(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `nik` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_izin_dari` date NULL DEFAULT NULL,
  `tgl_izin_sampai` date NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL COMMENT 'i : izin s : sakit',
  `kode_cuti` char(3) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `doc_sid` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status_approved` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT '0' COMMENT '0 : Pending 1: Disetuji 2: Ditolak',
  PRIMARY KEY (`kode_izin`) USING BTREE,
  INDEX `fk_pengajuan_karyawan`(`nik` ASC) USING BTREE,
  INDEX `fk_pengajuan_cuti`(`kode_cuti` ASC) USING BTREE,
  CONSTRAINT `fk_pengajuan_cuti` FOREIGN KEY (`kode_cuti`) REFERENCES `master_cuti` (`kode_cuti`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_pi_karyawan` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengajuan_izin
-- ----------------------------

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `permissions_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of permissions
-- ----------------------------
INSERT INTO `permissions` VALUES (1, 'view-karyawan', 'web', '2023-12-15 00:36:28', '2023-12-15 00:36:28');
INSERT INTO `permissions` VALUES (2, 'view-departemen', 'web', '2023-12-15 00:36:28', '2023-12-15 00:36:28');

-- ----------------------------
-- Table structure for presensi
-- ----------------------------
DROP TABLE IF EXISTS `presensi`;
CREATE TABLE `presensi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `nik` char(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `tgl_presensi` date NOT NULL,
  `jam_in` time NULL DEFAULT NULL,
  `jam_out` time NULL DEFAULT NULL,
  `foto_in` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `foto_out` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lokasi_in` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `lokasi_out` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `kode_jam_kerja` char(4) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `status` char(1) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_izin` char(9) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `fk_presensi_karyawan`(`nik` ASC) USING BTREE,
  INDEX `fk_prensesi_pengajuan_izin`(`kode_izin` ASC) USING BTREE,
  INDEX `fk_presensi_jk`(`kode_jam_kerja` ASC) USING BTREE,
  CONSTRAINT `fk_prensesi_pengajuan_izin` FOREIGN KEY (`kode_izin`) REFERENCES `pengajuan_izin` (`kode_izin`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_presensi_jk` FOREIGN KEY (`kode_jam_kerja`) REFERENCES `jam_kerja` (`kode_jam_kerja`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_presensi_karyawan` FOREIGN KEY (`nik`) REFERENCES `karyawan` (`nik`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 36 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of presensi
-- ----------------------------

-- ----------------------------
-- Table structure for role_has_permissions
-- ----------------------------
DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE `role_has_permissions`  (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`, `role_id`) USING BTREE,
  INDEX `role_has_permissions_role_id_foreign`(`role_id` ASC) USING BTREE,
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of role_has_permissions
-- ----------------------------
INSERT INTO `role_has_permissions` VALUES (1, 1);
INSERT INTO `role_has_permissions` VALUES (2, 1);

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `roles_name_guard_name_unique`(`name` ASC, `guard_name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', 'web', '2023-12-15 00:36:28', '2023-12-15 00:36:28');
INSERT INTO `roles` VALUES (2, 'admin departemen', 'web', '2023-12-18 00:22:14', '2023-12-18 00:22:14');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_dept` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `kode_cabang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (9, 'Adam Adifa', 'adam@gmail.com', NULL, '$2y$10$QyRg7XiipzUiFQjwLD/aFOYqimZNNwi65yH76hRybocmt0N0Cjbye', 'IT', 'PST', NULL, '2023-12-18 22:45:36', '2023-12-18 22:45:36');
INSERT INTO `users` VALUES (15, 'Maya Maulina Solihah', 'maya@klinikhanenda.id', NULL, '$2y$10$CN7UG8q7qaHa4E.YQo984uSGDNr2QEFWo8E8iYotD1Gu9cfvoV5vq', 'HRD', 'PST', NULL, '2024-02-21 17:48:00', '2024-02-21 17:48:00');
INSERT INTO `users` VALUES (16, 'Dede Firmansyah', 'dede@klinikhanenda.id', NULL, '$2y$10$TMPzrw.TmflvCw5wEoTopuHZlGu3dlU685BUO6EJ70aBvGqa5O.AO', 'HRD', 'PST', NULL, '2024-02-21 17:48:25', '2024-02-21 17:48:25');

-- ----------------------------
-- View structure for q_rekappresensi
-- ----------------------------
DROP VIEW IF EXISTS `q_rekappresensi`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `q_rekappresensi` AS select `karyawan`.`nik` AS `nik`,`karyawan`.`nama_lengkap` AS `nama_lengkap`,`karyawan`.`jabatan` AS `jabatan`,`presensi`.`tgl_1` AS `tgl_1`,`presensi`.`tgl_2` AS `tgl_2`,`presensi`.`tgl_3` AS `tgl_3`,`presensi`.`tgl_4` AS `tgl_4`,`presensi`.`tgl_5` AS `tgl_5`,`presensi`.`tgl_6` AS `tgl_6`,`presensi`.`tgl_7` AS `tgl_7`,`presensi`.`tgl_8` AS `tgl_8`,`presensi`.`tgl_9` AS `tgl_9`,`presensi`.`tgl_10` AS `tgl_10`,`presensi`.`tgl_11` AS `tgl_11`,`presensi`.`tgl_12` AS `tgl_12`,`presensi`.`tgl_13` AS `tgl_13`,`presensi`.`tgl_14` AS `tgl_14`,`presensi`.`tgl_15` AS `tgl_15`,`presensi`.`tgl_16` AS `tgl_16`,`presensi`.`tgl_17` AS `tgl_17`,`presensi`.`tgl_18` AS `tgl_18`,`presensi`.`tgl_19` AS `tgl_19`,`presensi`.`tgl_20` AS `tgl_20`,`presensi`.`tgl_21` AS `tgl_21`,`presensi`.`tgl_22` AS `tgl_22`,`presensi`.`tgl_23` AS `tgl_23`,`presensi`.`tgl_24` AS `tgl_24`,`presensi`.`tgl_25` AS `tgl_25`,`presensi`.`tgl_26` AS `tgl_26`,`presensi`.`tgl_27` AS `tgl_27`,`presensi`.`tgl_28` AS `tgl_28`,`presensi`.`tgl_29` AS `tgl_29`,`presensi`.`tgl_30` AS `tgl_30`,`presensi`.`tgl_31` AS `tgl_31` from (`karyawan` left join (select `presensi`.`nik` AS `nik`,max(if((`presensi`.`tgl_presensi` = '2023-11-01'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_1`,max(if((`presensi`.`tgl_presensi` = '2023-11-02'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_2`,max(if((`presensi`.`tgl_presensi` = '2023-11-03'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_3`,max(if((`presensi`.`tgl_presensi` = '2023-11-04'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_4`,max(if((`presensi`.`tgl_presensi` = '2023-11-05'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_5`,max(if((`presensi`.`tgl_presensi` = '2023-11-06'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_6`,max(if((`presensi`.`tgl_presensi` = '2023-11-07'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_7`,max(if((`presensi`.`tgl_presensi` = '2023-11-08'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_8`,max(if((`presensi`.`tgl_presensi` = '2023-11-09'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_9`,max(if((`presensi`.`tgl_presensi` = '2023-11-10'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_10`,max(if((`presensi`.`tgl_presensi` = '2023-11-11'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_11`,max(if((`presensi`.`tgl_presensi` = '2023-11-12'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_12`,max(if((`presensi`.`tgl_presensi` = '2023-11-13'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_13`,max(if((`presensi`.`tgl_presensi` = '2023-11-14'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_14`,max(if((`presensi`.`tgl_presensi` = '2023-11-15'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_15`,max(if((`presensi`.`tgl_presensi` = '2023-11-16'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_16`,max(if((`presensi`.`tgl_presensi` = '2023-11-17'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_17`,max(if((`presensi`.`tgl_presensi` = '2023-11-18'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_18`,max(if((`presensi`.`tgl_presensi` = '2023-11-19'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_19`,max(if((`presensi`.`tgl_presensi` = '2023-11-20'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_20`,max(if((`presensi`.`tgl_presensi` = '2023-11-21'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_21`,max(if((`presensi`.`tgl_presensi` = '2023-11-22'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_22`,max(if((`presensi`.`tgl_presensi` = '2023-11-23'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_23`,max(if((`presensi`.`tgl_presensi` = '2023-11-24'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_24`,max(if((`presensi`.`tgl_presensi` = '2023-11-25'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_25`,max(if((`presensi`.`tgl_presensi` = '2023-11-26'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_26`,max(if((`presensi`.`tgl_presensi` = '2023-11-27'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_27`,max(if((`presensi`.`tgl_presensi` = '2023-11-28'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_28`,max(if((`presensi`.`tgl_presensi` = '2023-11-29'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_29`,max(if((`presensi`.`tgl_presensi` = '2023-11-30'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_30`,max(if((`presensi`.`tgl_presensi` = '2023-11-31'),concat(convert(ifnull(`presensi`.`jam_in`,'NA') using latin1),'|',convert(ifnull(`presensi`.`jam_out`,'NA') using latin1),'|',ifnull(`presensi`.`status`,'NA'),'|',ifnull(`jam_kerja`.`nama_jam_kerja`,'NA'),'|',convert(ifnull(`jam_kerja`.`jam_masuk`,'NA') using latin1),'|',convert(ifnull(`jam_kerja`.`jam_pulang`,'NA') using latin1),'|',ifnull(`presensi`.`kode_izin`,'NA'),'|',ifnull(`pengajuan_izin`.`keterangan`,'NA'),'|'),NULL)) AS `tgl_31` from ((`presensi` left join `jam_kerja` on((`presensi`.`kode_jam_kerja` = `jam_kerja`.`kode_jam_kerja`))) left join `pengajuan_izin` on((`presensi`.`kode_izin` = `pengajuan_izin`.`kode_izin`))) group by `presensi`.`nik`) `presensi` on((`karyawan`.`nik` = `presensi`.`nik`)));

SET FOREIGN_KEY_CHECKS = 1;
