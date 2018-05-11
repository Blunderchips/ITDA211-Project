CREATE DATABASE  IF NOT EXISTS `qac_shop_xq9x3wv31` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `qac_shop_xq9x3wv31`;
-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: qac_shop_xq9x3wv31
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.21-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_xq9x3wv31`
--

DROP TABLE IF EXISTS `customer_xq9x3wv31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer_xq9x3wv31` (
  `customerID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `customerType` varchar(32) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `postalCode` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_xq9x3wv31`
--

LOCK TABLES `customer_xq9x3wv31` WRITE;
/*!40000 ALTER TABLE `customer_xq9x3wv31` DISABLE KEYS */;
INSERT INTO `customer_xq9x3wv31` VALUES (1,'Joe Soap','Indvidual','0217824465','53 Main Road','7974'),(2,'Anibal Alsop','Indvidual','0794501014','60 Chestnut Street','3454'),(3,'Andre Brumm','Indvidual','0795091027','65 Cross Street','5434'),(4,'Tomoko Ringgold','Indvidual','0831701054','97 Hartford Road','2343'),(5,'Sherise Fagin','Indvidual','0796611068','76 Brown Street','6657'),(6,'Emmett Hausmann','Indvidual','0794201068','7 King Street','2433'),(7,'Margarita Culpepper','Indvidual','0839691029','46 Route 100','4234'),(8,'Owen Hersh','Indvidual','0837591013','71 Hillside Avenue','4645'),(9,'Jean Villani','Indvidual','0799531014','97 Deerfield Drive','8978'),(10,'Luna Mulkey','Indvidual','0838811032','86 Grove Street','2343'),(11,'Mikes B&B','B&B','0834811032','45 Grove Street','2253'),(12,'Bed with Sally','B&B','0838816732','44 Adam Street','2353'),(13,'Vally Stop','B&B','0728841032','67 Heney Street','7746'),(14,'Darell Um','Interior Designer','0834819364','24 Street West','5536'),(15,'Matthew Rank','Interior Designer','0835624732','67 New Street','5252'),(16,'Rodolfo Mose','Interior Designer','0746241032','78 Harrison Avenue','2413');
/*!40000 ALTER TABLE `customer_xq9x3wv31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_xq9x3wv31`
--

DROP TABLE IF EXISTS `inventory_xq9x3wv31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inventory_xq9x3wv31` (
  `itemID` int(11) NOT NULL AUTO_INCREMENT,
  `itemType` varchar(32) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `pricePerUnit` float DEFAULT NULL,
  `markup` float DEFAULT NULL,
  `numberInStock` int(11) DEFAULT NULL,
  `itemSize` int(11) DEFAULT NULL,
  `colour` varchar(16) DEFAULT NULL,
  `stockLimit` int(11) DEFAULT NULL,
  `vendor` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemID`),
  KEY `vendor` (`vendor`),
  CONSTRAINT `inventory_xq9x3wv31_ibfk_1` FOREIGN KEY (`vendor`) REFERENCES `vendor_xq9x3wv31` (`vendorID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_xq9x3wv31`
--

LOCK TABLES `inventory_xq9x3wv31` WRITE;
/*!40000 ALTER TABLE `inventory_xq9x3wv31` DISABLE KEYS */;
INSERT INTO `inventory_xq9x3wv31` VALUES (1,'antique','Victorian coin collection',95,10,1,NULL,NULL,0,3),(2,'antique','assorted coin collection',52,25,1,NULL,NULL,0,3),(3,'antique','wizard of Oz original printing',44,45,1,NULL,NULL,0,3),(4,'antique','vintage car',500,25,1,NULL,NULL,0,4),(5,'antique','Chair and table set',50,125,1,NULL,NULL,0,4),(6,'antique','old lamp',52,10,1,NULL,NULL,0,4),(7,'antique','Spanish  coin collection',60,30,1,NULL,NULL,0,4),(8,'antique','wooden lamp',52,10,1,NULL,NULL,0,4),(9,'new item','table cloth',78,65,20,2,'black',5,1),(10,'new item','table cloth',8,125,20,3,'green',5,1),(11,'new item','table cloth',57,30,20,2,'white',5,1),(12,'new item','table cloth',20,30,20,5,'brown',5,2),(13,'new item','table cloth',60,45,20,2,'brown',1,2);
/*!40000 ALTER TABLE `inventory_xq9x3wv31` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Table1insert AFTER UPDATE ON Inventory_XQ9X3WV31 
FOR EACH ROW 
BEGIN
    IF NEW.numberInStock<NEW.stockLimit THEN
INSERT INTO StockOrder (orderDate, itemID) VALUES (NOW(), NEW.itemID);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sale_item_xq9x3wv31`
--

DROP TABLE IF EXISTS `sale_item_xq9x3wv31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_item_xq9x3wv31` (
  `saleID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  `numberPurchesed` int(11) DEFAULT NULL,
  PRIMARY KEY (`saleID`,`itemID`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `sale_item_xq9x3wv31_ibfk_1` FOREIGN KEY (`saleID`) REFERENCES `sale_xq9x3wv31` (`saleID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sale_item_xq9x3wv31_ibfk_2` FOREIGN KEY (`itemID`) REFERENCES `inventory_xq9x3wv31` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_item_xq9x3wv31`
--

LOCK TABLES `sale_item_xq9x3wv31` WRITE;
/*!40000 ALTER TABLE `sale_item_xq9x3wv31` DISABLE KEYS */;
INSERT INTO `sale_item_xq9x3wv31` VALUES (1,9,5),(2,13,2),(3,11,7),(4,10,1),(5,12,6),(5,13,6),(6,9,2),(6,11,3),(7,10,2),(7,12,2),(7,13,1),(8,10,3),(9,9,4),(10,13,1),(11,11,1),(12,12,3),(12,13,2),(13,9,2),(13,11,4),(14,1,1),(14,10,1),(15,10,8),(16,12,1);
/*!40000 ALTER TABLE `sale_item_xq9x3wv31` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER Table2insert AFTER UPDATE ON Sale_Item_XQ9X3WV31 
FOR EACH ROW 
BEGIN
UPDATE Inventory_XQ9X3WV31 SET numberInStock = numberInStock - NEW.numberPurchesed WHERE itemID = NEW.itemID;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sale_xq9x3wv31`
--

DROP TABLE IF EXISTS `sale_xq9x3wv31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sale_xq9x3wv31` (
  `saleID` int(11) NOT NULL AUTO_INCREMENT,
  `dateOfSale` date DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  PRIMARY KEY (`saleID`),
  KEY `customer` (`customer`),
  CONSTRAINT `sale_xq9x3wv31_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer_xq9x3wv31` (`customerID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sale_xq9x3wv31`
--

LOCK TABLES `sale_xq9x3wv31` WRITE;
/*!40000 ALTER TABLE `sale_xq9x3wv31` DISABLE KEYS */;
INSERT INTO `sale_xq9x3wv31` VALUES (1,'2011-05-25',1),(2,'2017-03-05',2),(3,'2011-06-30',1),(4,'2010-01-01',1),(5,'2015-11-30',2),(6,'2015-11-30',2),(7,'2013-03-03',3),(8,'2013-01-25',4),(9,'2016-02-23',3),(10,'2013-05-25',5),(11,'2011-12-16',6),(12,'2015-05-30',7),(13,'2011-11-26',8),(14,'2010-05-17',9),(15,'2001-11-09',10),(16,'2003-07-28',11),(17,'2011-02-25',12),(18,'2009-12-26',13),(19,'2014-02-04',14),(20,'2011-12-23',15),(21,'2006-11-20',16);
/*!40000 ALTER TABLE `sale_xq9x3wv31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockorder`
--

DROP TABLE IF EXISTS `stockorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockorder` (
  `orderID` int(11) NOT NULL AUTO_INCREMENT,
  `orderDate` date DEFAULT NULL,
  `itemID` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `itemID` (`itemID`),
  CONSTRAINT `stockorder_ibfk_1` FOREIGN KEY (`itemID`) REFERENCES `inventory_xq9x3wv31` (`itemID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockorder`
--

LOCK TABLES `stockorder` WRITE;
/*!40000 ALTER TABLE `stockorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_xq9x3wv31`
--

DROP TABLE IF EXISTS `vendor_xq9x3wv31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_xq9x3wv31` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `vendorType` varchar(32) DEFAULT NULL,
  `phoneNumber` varchar(10) DEFAULT NULL,
  `address` varchar(32) DEFAULT NULL,
  `postalCode` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_xq9x3wv31`
--

LOCK TABLES `vendor_xq9x3wv31` WRITE;
/*!40000 ALTER TABLE `vendor_xq9x3wv31` DISABLE KEYS */;
INSERT INTO `vendor_xq9x3wv31` VALUES (1,'Valint & Balk','distributor','0826776601','56 Main Road','7975'),(2,'E-Corp','wholeSale_XQ9X3WV31r','0826756601','76 Hill Street','2343'),(3,'Sam Jacobs','individual','0218954842','73 Berg Street','6456'),(4,'Bob MacDavid','individual','0826456601','45 Berg Street','6456'),(5,'Shavon Custard','individual','0837991047','10 East Street','8069'),(6,'Rebekah Veal','individual','0796471078','78 Harrison Avenue','0232'),(7,'Elmer Triplett','individual','0794221043','62 Devonshire Drive','6523'),(8,'Elton Beauchesne','individual','0793171012','28 Cypress Court','5411'),(9,'Anibal Alsop','individual','0794501014','32 Pine Street','4538'),(10,'Isaura Brumfield','individual','0831651082','62 Devonshire Drive','5621');
/*!40000 ALTER TABLE `vendor_xq9x3wv31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'qac_shop_xq9x3wv31'
--

--
-- Dumping routines for database 'qac_shop_xq9x3wv31'
--
/*!50003 DROP PROCEDURE IF EXISTS `checkAvalibility_XQ9X3WV31` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `checkAvalibility_XQ9X3WV31`()
BEGIN 
SELECT description, colour, itemSize AS 'size', (pricePerUnit + (pricePerUnit * (markup / 100)))
AS 'Cost per Unit', numberInStock FROM Inventory_XQ9X3WV31 WHERE numberInStock > 0;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `generateBill_XQ9X3WV31` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `generateBill_XQ9X3WV31`(_saleID INTEGER)
BEGIN 
SELECT Inventory_XQ9X3WV31.description, Inventory_XQ9X3WV31.itemType, Inventory_XQ9X3WV31.itemSize, Inventory_XQ9X3WV31.colour 
FROM Inventory_XQ9X3WV31 JOIN Sale_Item_XQ9X3WV31 ON Inventory_XQ9X3WV31.itemID = Sale_Item_XQ9X3WV31.itemID WHERE Sale_Item_XQ9X3WV31.saleID = _saleID;



SELECT SUM(pricePerUnit + (pricePerUnit * (markup / 100))) AS 'Total Cost' 
FROM Inventory_XQ9X3WV31 JOIN Sale_Item_XQ9X3WV31 ON Inventory_XQ9X3WV31.itemID = Sale_Item_XQ9X3WV31.itemID WHERE Sale_Item_XQ9X3WV31.saleID = _saleID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-10 20:17:09
