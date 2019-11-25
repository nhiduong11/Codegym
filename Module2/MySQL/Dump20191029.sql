-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_tiet_khu_vuc`
--

DROP TABLE IF EXISTS `chi_tiet_khu_vuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_khu_vuc` (
  `idSach` int(11) NOT NULL,
  `idKhuVuc` int(11) NOT NULL,
  `shelf` varchar(45) NOT NULL,
  `compartment` varchar(45) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `idDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_sach_idx` (`idSach`),
  KEY `fk_khu_vuc_idx` (`idKhuVuc`),
  CONSTRAINT `fk_khu_vuc` FOREIGN KEY (`idKhuVuc`) REFERENCES `khu_vuc` (`idkhuvuc`),
  CONSTRAINT `fk_sach` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_khu_vuc`
--

LOCK TABLES `chi_tiet_khu_vuc` WRITE;
/*!40000 ALTER TABLE `chi_tiet_khu_vuc` DISABLE KEYS */;
INSERT INTO `chi_tiet_khu_vuc` VALUES (1,1,'A','A',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:52:18'),(2,1,'A','B',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:55:38'),(3,1,'A','c',5,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:55:38'),(4,1,'B','A',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:55:38'),(5,1,'B','B',20,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:55:38'),(2,2,'A','A',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:59:59'),(3,2,'A','B',5,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:59:59'),(4,2,'B','A',20,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:59:59'),(5,2,'B','B',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:00:00'),(3,3,'A','A',5,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:06:42'),(5,3,'A','B',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:06:42'),(6,3,'A','C',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:17:36'),(7,3,'B','A',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:17:36'),(8,3,'B','B',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:17:36'),(7,1,'C','A',10,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:17:36');
/*!40000 ALTER TABLE `chi_tiet_khu_vuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_muon`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chi_tiet_phieu_muon` (
  `idSach` int(11) NOT NULL,
  `idPhieuMuon` int(11) NOT NULL,
  `soLuong` int(11) NOT NULL,
  `idDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  KEY `fk_phieu_muon_idx` (`idPhieuMuon`),
  KEY `fk_sach_idx` (`idSach`),
  CONSTRAINT `fk_phieu_muon_chi_tiet` FOREIGN KEY (`idPhieuMuon`) REFERENCES `phieu_muon` (`idPhieuMuon`),
  CONSTRAINT `fk_sach_phieu_muon` FOREIGN KEY (`idSach`) REFERENCES `sach` (`idSach`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_muon`
--

LOCK TABLES `chi_tiet_phieu_muon` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_muon` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_phieu_muon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khu_vuc`
--

DROP TABLE IF EXISTS `khu_vuc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khu_vuc` (
  `idkhuvuc` int(11) NOT NULL AUTO_INCREMENT,
  `tenKhuVuc` varchar(45) NOT NULL,
  `isDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idkhuvuc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khu_vuc`
--

LOCK TABLES `khu_vuc` WRITE;
/*!40000 ALTER TABLE `khu_vuc` DISABLE KEYS */;
INSERT INTO `khu_vuc` VALUES (1,'Khu A',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:47:11'),(2,'Khu B',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:47:11'),(3,'Khu C',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:47:11');
/*!40000 ALTER TABLE `khu_vuc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loai_sach`
--

DROP TABLE IF EXISTS `loai_sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loai_sach` (
  `idLoaiSach` int(11) NOT NULL AUTO_INCREMENT,
  `tenLoaiSach` varchar(45) NOT NULL,
  `isDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idLoaiSach`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loai_sach`
--

LOCK TABLES `loai_sach` WRITE;
/*!40000 ALTER TABLE `loai_sach` DISABLE KEYS */;
INSERT INTO `loai_sach` VALUES (1,'Tien Hiep',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:27:54'),(2,'Kiem Hiep',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:42:28');
/*!40000 ALTER TABLE `loai_sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhan_vien`
--

DROP TABLE IF EXISTS `nhan_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhan_vien` (
  `idNhanVien` int(11) NOT NULL AUTO_INCREMENT,
  `tenNhanVien` varchar(45) NOT NULL,
  `isDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idNhanVien`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhan_vien`
--

LOCK TABLES `nhan_vien` WRITE;
/*!40000 ALTER TABLE `nhan_vien` DISABLE KEYS */;
INSERT INTO `nhan_vien` VALUES (1,'Tran Van Thanh',1,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:26:54');
/*!40000 ALTER TABLE `nhan_vien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_muon`
--

DROP TABLE IF EXISTS `phieu_muon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieu_muon` (
  `idPhieuMuon` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `idNhanVien` int(11) NOT NULL,
  `ngayMuon` date NOT NULL,
  `hanTra` date NOT NULL,
  `ngayTra` date DEFAULT NULL,
  `idDelete` tinyint(1) DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idPhieuMuon`),
  KEY `fk_user_idx` (`idUser`),
  KEY `fk_nhan_vien_idx` (`idNhanVien`),
  CONSTRAINT `fk_nhan_vien` FOREIGN KEY (`idNhanVien`) REFERENCES `nhan_vien` (`idNhanVien`),
  CONSTRAINT `fk_user` FOREIGN KEY (`idUser`) REFERENCES `user_va_the_thu_vien` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_muon`
--

LOCK TABLES `phieu_muon` WRITE;
/*!40000 ALTER TABLE `phieu_muon` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_muon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sach`
--

DROP TABLE IF EXISTS `sach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sach` (
  `idSach` int(11) NOT NULL AUTO_INCREMENT,
  `tenSach` varchar(255) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `TacGia` varchar(45) DEFAULT NULL,
  `NhaXuatBan` varchar(45) DEFAULT NULL,
  `GiaTien` int(11) NOT NULL,
  `TomTat` text,
  `idLoaiSach` int(11) NOT NULL,
  `idDelete` tinyint(1) NOT NULL DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyby` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idSach`),
  KEY `fk_loai_sach_idx` (`idLoaiSach`),
  CONSTRAINT `fk_loai_sach` FOREIGN KEY (`idLoaiSach`) REFERENCES `loai_sach` (`idLoaiSach`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sach`
--

LOCK TABLES `sach` WRITE;
/*!40000 ALTER TABLE `sach` DISABLE KEYS */;
INSERT INTO `sach` VALUES (1,'Huyết Viêm Đế Tôn (Hệ Thống Truy Diễm Của Ma Thần)',10,'Nhóc Đáng Yêu','truyenfull',100000,'Hắn vốn dĩ là một tên siêu cấp nghiện game tiên hiệp ở thế kỷ XXI, nhưng ngặt nỗi vì tài pk quá siêu cấp cho nên chỉ cần là game có hắn chơi thì lúc nào hắn cũng là đại thần đứng đầu không có đối thủ. Cho đến một ngày hắn đang chán nản vì bản thân quá vô đối thì máy tính của hắn cư nhiên lại bị chập điện, sau đó hắn phát hiện bản thân đột nhiên lại xuyên qua đến một thế giới khác. ',1,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:37:58'),(2,'Nguyên Thuỷ Đại Thiên Tôn',20,'natsudragneellls','truyenfull',200000,'guyên Thủy Đại Vũ Trụ lúc này, trong mênh mông tinh không khắp nơi đều là đại chiến. Mỗi giây phút qua đi, đều có thể trông thấy từng khỏa tinh thần rơi rụng, liệt nhật bạo tạc mà ra.  Những nơi đại chiến thảm liệt nhất liền từng tòa từng tòa thiên hà cũng vì đó mà tan vỡ. Hàng tỉ khỏa tinh thần cứ như vậy trong đại chiến mà nổ tung thành cát bụi.',1,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:38:51'),(3,'Đạo Chu',15,'DanteSparda','truyenfull',150000,'Trên thế giới này tồn tại rất nhiều những điều kỳ bí mà con người vẫn không có cách nào hiểu được. Một trong những sự kiện đó là có hay không sự tồn tại một chiều không gian khác hay một vũ trụ khác. Trong Phật Đạo từng có câu nhất hoa nhất thế giới nhưng không biết sự thật đó có tồn tại hay không? Ai cũng không rõ! Có lẽ có, có lẽ không? Không ai trả lời được!',1,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:39:53'),(4,'Cuồng Huyết Thiên Ma',30,'Hư Không','truyenfull',50000,'Hắn là một sát thủ có tiếng vang ở thế kỉ thứ XXI. Một chuyện tồi tệ xảy ra với hắn đó là tử thần đã cướp đi mạng sống của hắn. Nhưng trong cái rủi vẫn luôn có cái may, hắn xuyên việt tới dị giới. Cơ thể mà hắn chiếm hữu là con trai của Diệp Bắc Phàm gia gia. Điều làm hắn xấu hổ và tủi nhục vô cùng đó là cơ thể hắn không có linh căn khiến cho việc tu luyện của hắn gặp vô vàn khó khăn. Với hệ thống tu luyện nghịch thiên cùng với kinh nghiệm từ 200 bộ tiểu thuyết xuyên việt mà hắn từng đọc nên khó khăn cũng vơi đi phần nào.',1,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:40:46'),(5,'Nhân Tổ',40,'Lừa Con Lon Ton','truyenfull',200000,'Đây là Đại Thế Giới được thống trị bởi tam tộc. Phía bắc được chiếm lĩnh bởi Ma tộc, nơi đây khí hậu âm u, có một tầng ám vân che kín cả phương bắc, ánh mặt trời không thể chiếu xuyên qua được.  Phía tây là lãnh thổ của Thần tộc, chủng tộc này cao ngạo, tự cho là chúa tể thế giới này, là quang minh chi tử, cực kỳ coi thường các chủng tộc khác. Phía nam thuộc về Yêu tộc, nơi đây rừng rậm sâm lâm, dãy núi bất tận, sông hồ đan xen, yêu thú sinh sống vô số.',1,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:41:51'),(6,'Nghịch Thiên Tà Thần',10,'Hỏa Tinh Dẫn Lực','truyenfull',300000,'Ý thức Vân Triệt dần dần thức tỉnh.  Sao lại thế này... Chẳng lẽ ta còn chưa chết sao? Rõ ràng là ta đã rơi xuống Tuyệt Vân Nhai, làm sao có thể còn sống! Với lại trên người vậy mà không có cảm giác đau đớn... Ngay cả cảm giác khó chịu cũng không có? Xảy ra chuyện gì?  Vân Triệt lập tức mở mắt ra, nhanh chóng ngồi bật dậy, bỗng nhiên nhận ra mình đang ở trên chiếc giường lớn mềm mại, phía trên giường là mạn liên màu đỏ thẫm rũ xuống, nhuộm đẫm không khí vui mừng.',2,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:44:05'),(7,'Bích Huyết Kiếm',20,'Kim Dung','truyenfull',500000,'Mặt trời sắp lặn, đàn quạ đang bay về tổ. Trên con đường cái quan nối liền Thiểm Tây với Tân Lĩnh có một thiếu niên thư sinh đang cưỡi con ngựa trắng, vừa đi vừa ngắm phong cảnh vẻ mặt rất hớn hở. Thư sinh có tuổi chưa đầy hai mươi, tay cầm roi ngựa và lẩm bẩm ngâm nga: \"Cảnh mặt trời lặn đẹp biết bao, tiếc thay không còn tồn tại được lâu.\"',2,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:44:54'),(8,'Vạn Cổ Chi Vương',10,'Khoái Xan Điếm','truyenfull',200000,'Đông Thần đại lục là thế giới tu hành mênh mông lấy võ làm chủ. Võ giả trong truyền thuyết đạp phá hư không, dời núi lấp biển, tay hái mặt trăng mặt trời, Thôn Thiên Diệt Địa, để lại đủ loại Thần Tích. Ở bên trên đại lục có rất nhiều quốc gia, đều là nơi lấy võ lập quốc, thành lập rất nhiều Võ phủ, Học phủ. Thương Vân quốc. Thanh Xương thành, ở chân núi phía sau Thanh Phong Học phủ.',2,0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 06:45:53');
/*!40000 ALTER TABLE `sach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_va_the_thu_vien`
--

DROP TABLE IF EXISTS `user_va_the_thu_vien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_va_the_thu_vien` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `SoCMND` varchar(10) NOT NULL,
  `isDelete` tinyint(1) NOT NULL DEFAULT '0',
  `deleteBy` varchar(45) DEFAULT NULL,
  `deleteDate` timestamp NULL DEFAULT NULL,
  `modifyBy` varchar(45) DEFAULT NULL,
  `modifyDate` timestamp NULL DEFAULT NULL,
  `createBy` varchar(45) NOT NULL,
  `createDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_va_the_thu_vien`
--

LOCK TABLES `user_va_the_thu_vien` WRITE;
/*!40000 ALTER TABLE `user_va_the_thu_vien` DISABLE KEYS */;
INSERT INTO `user_va_the_thu_vien` VALUES (1,'Tran Van DEMO',22,'Nam','191896389',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:22:17'),(2,'Demo so 02',20,'Nu','191896987',0,NULL,NULL,NULL,NULL,'Tran Van Thanh','2019-10-29 07:23:49');
/*!40000 ALTER TABLE `user_va_the_thu_vien` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-29 15:42:57
