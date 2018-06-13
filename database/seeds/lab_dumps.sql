DROP TABLE IF EXISTS `results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `results` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `id_2` (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `results`
--

LOCK TABLES `results` WRITE;
/*!40000 ALTER TABLE `results` DISABLE KEYS */;
INSERT INTO `results` VALUES (1,'Negative'),(2,'Positive'),(3,'Failed'),(4,'Unknown'),(5,'Collect new sample'),(6,'Valid'),(7,'Invalid');
/*!40000 ALTER TABLE `results` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `actions`
--

DROP TABLE IF EXISTS `actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `actions` (
  `id` TINYINT UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `active` TINYINT UNSIGNED DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `actions`
--

LOCK TABLES `actions` WRITE;
/*!40000 ALTER TABLE `actions` DISABLE KEYS */;
INSERT INTO `actions` VALUES (0,'Dispatch',1),(1,'Rerun',1);
/*!40000 ALTER TABLE `actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sites`
--

DROP TABLE IF EXISTS `sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sites` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `facility` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sites`
--

LOCK TABLES `sites` WRITE;
/*!40000 ALTER TABLE `sites` DISABLE KEYS */;
INSERT INTO `sites` VALUES (1,6429),(2,6430),(3,6433),(4,6437),(5,6440),(6,6442),(7,6423),(8,6446),(9,6424),(10,6721),(11,6728),(12,6729),(13,6734),(14,4452),(15,4457),(16,4464),(17,4454),(18,4479),(19,4460),(20,4482),(21,6444),(22,6445);
/*!40000 ALTER TABLE `sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedings`
--

DROP TABLE IF EXISTS `feedings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedings` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `feeding` varchar(100) NOT NULL,
  `feeding_description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedings`
--

LOCK TABLES `feedings` WRITE;
/*!40000 ALTER TABLE `feedings` DISABLE KEYS */;
INSERT INTO `feedings` VALUES (1,'EBF','Exclusive Breast Feeding [ 0 - 6 Months]'),(2,'MBF','Mixed Breast Feeding  [ 0 - 6 Months ]'),(3,'NBF','Not Breast Feeding [ > 6 Months ]'),(4,'ERF','Exclusive Replacement  Feeding  [ 0 - 6 Months]'),(5,'None','No Data'),(6,'BF','Breast Feeding [ > 6 Months ]'),(7,'NBF','Not Breast Feeding [ < 6 Months ]');
/*!40000 ALTER TABLE `feedings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prophylaxis_types`
--

DROP TABLE IF EXISTS `prophylaxis_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prophylaxis_types` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `prophylaxis_type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prophylaxis_types`
--

LOCK TABLES `prophylaxis_types` WRITE;
/*!40000 ALTER TABLE `prophylaxis_types` DISABLE KEYS */;
INSERT INTO `prophylaxis_types` VALUES (1,'Mother Intervention'),(2,'Infant Prophylaxis');
/*!40000 ALTER TABLE `prophylaxis_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilitytype`
--

DROP TABLE IF EXISTS `facilitytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facilitytype` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilitytype`
--

LOCK TABLES `facilitytype` WRITE;
/*!40000 ALTER TABLE `facilitytype` DISABLE KEYS */;
INSERT INTO `facilitytype` VALUES (1,'National Hospital'),(2,'Provincial Hospital'),(3,'District Hospital'),(4,'Sub District Hospital'),(5,'Dispensary'),(6,'Health Care '),(7,'Medical Clinic '),(8,'Mission Hospital'),(9,'Children Home'),(10,'Medical Center'),(11,'Nursing Home'),(12,'Labaratory / Labs'),(13,'Hospital'),(14,'Other'),(15,'VCT'),(16,'Maternity Home/Unit'),(17,'Medical Care'),(18,'Medical Services'),(19,'Health Center'),(20,'Health Services');
/*!40000 ALTER TABLE `facilitytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partners`
--

DROP TABLE IF EXISTS `partners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partners` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `partnerDHISCode` varchar(100) DEFAULT NULL,
  `partnertype` varchar(100) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `flag` int(45) DEFAULT NULL,
  `orderno` int(45) DEFAULT NULL,
  `unknown2013` double DEFAULT NULL,
  `unknown2014` double DEFAULT NULL,
  `unknown2015` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partners`
--

LOCK TABLES `partners` WRITE;
/*!40000 ALTER TABLE `partners` DISABLE KEYS */;
INSERT INTO `partners` VALUES (0,'No Partner',NULL,'Other Partner',NULL,1,NULL,NULL,NULL,NULL),(1,'ICAP Eastern',NULL,'Care Treatment Partner','ICAP.png',1,NULL,0,0,2),(2,'Aphia Plus Western',NULL,'Care Treatment Partner','AWESTERN.png',1,NULL,1,0,1),(3,'EDARP',NULL,'Care Treatment Partner',NULL,1,NULL,8,18,19),(4,'CHS - Naishi',NULL,'Care Treatment Partner','CHS.png',1,NULL,39,27,0),(5,'ICAP Nyanza',NULL,'Care Treatment Partner','ICAP.png',1,NULL,0,0,1),(12,'UCSF - FACES',NULL,'Care Treatment Partner','CDC.png',1,NULL,2,1,2),(17,'CHS - Western Kenya ',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(19,'APHIA Plus HCM ',NULL,'Care Treatment Partner',NULL,1,NULL,0,100,80),(20,'UoMaryland-PACT Endeleza ',NULL,'Care Treatment Partner',NULL,1,NULL,32,61,84),(22,'APHIAplus RIFT',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,5),(23,'UON CRISSP Plus',NULL,'Care Treatment Partner',NULL,1,NULL,0,14,0),(24,'Healthstrat TACT programme',NULL,'Care Treatment Partner',NULL,1,NULL,0,8,67),(25,'AMREF',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(27,'APHIAplus Kamili (Central-Eastern)',NULL,'Care Treatment Partner',NULL,1,NULL,4,1,9),(28,'Aphia Plus Pwani',NULL,'Care Treatment Partner','ANAIROBI.png',1,NULL,2,2,3),(29,'CHAK-CDC HIV-AidS Program',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,3),(31,'EGPAF-TUNAWEZA',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,NULL),(32,'CRS SAidIA Project',NULL,'Care Treatment Partner',NULL,1,NULL,25,0,60),(37,'UMB Western Kenya-Timiza',NULL,'Care Treatment Partner',NULL,1,NULL,32,61,84),(41,'HJF-South Rift Valley',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(43,'CARE International Kenya',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(44,'EGPAF-TIMIZA90 (Homabay)',NULL,'Care Treatment Partner',NULL,1,NULL,6,0,0),(45,'Siaya MOH CoAg ',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(48,'Lea Toto Program',NULL,'Care Treatment Partner',NULL,1,NULL,89,86,83),(55,'AMPATH Plus',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(57,'CHS - Tegemeza Plus',NULL,'Care Treatment Partner','CHS.png',1,NULL,39,27,0),(58,'Mkomani Clinic Society',NULL,'Care Treatment Partner',NULL,1,NULL,0,4,0),(59,'Coptic Hospital',NULL,'Care Treatment Partner',NULL,1,NULL,100,0,100),(60,'LVCT',NULL,'Care Treatment Partner',NULL,1,NULL,NULL,NULL,NULL),(61,'APHIAplus Imarisha',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,3),(62,'EGPAF ZUIA',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,13),(68,'KCCB-KARP',NULL,'Care Treatment Partner',NULL,1,NULL,2,0,0),(69,'HJF-Nairobi',NULL,'Care Treatment Partner',NULL,1,NULL,NULL,NULL,NULL),(70,'University of Manitoba',NULL,'Care Treatment Partner',NULL,1,NULL,NULL,NULL,NULL),(72,'UON MARPS',NULL,'Care Treatment Partner',NULL,1,NULL,NULL,NULL,NULL),(73,'HJF Kisumu West',NULL,'Care Treatment Partner',NULL,1,NULL,51,89,84),(74,'UON-CoEHM',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(75,'EGPAF-TIMIZA90 (Turkana)',NULL,'Care Treatment Partner',NULL,1,NULL,0,3,4),(77,'Boresha maabara, UOM',NULL,'Care Treatment Partner',NULL,1,NULL,21,7,37),(78,'IRDO-Pembetatu',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0),(79,'Afya Jijini project',NULL,'Care Treatment Partner',NULL,1,NULL,8,5,2),(80,'FHI 360',NULL,'Care Treatment Partner',NULL,0,NULL,0,0,NULL),(81,'Global Implementation Solutions (GIS) ',NULL,'Care Treatment Partner',NULL,1,NULL,0,0,0);
/*!40000 ALTER TABLE `partners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `provinces` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provinces`
--

LOCK TABLES `provinces` WRITE;
/*!40000 ALTER TABLE `provinces` DISABLE KEYS */;
INSERT INTO `provinces` VALUES (1,'Central'),(2,'Coast'),(3,'Eastern'),(5,'Nairobi'),(6,'North Eastern'),(7,'Nyanza'),(8,'Rift Valley'),(9,'Western');
/*!40000 ALTER TABLE `provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `machines`
--

DROP TABLE IF EXISTS `machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `machines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `machine` varchar(20) DEFAULT NULL,
  `output` varchar(150) DEFAULT NULL,
  `eid_limit` tinyint(4) unsigned  DEFAULT NULL,
  `vl_limit` tinyint(4) unsigned  DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `machines`
--

LOCK TABLES `machines` WRITE;
/*!40000 ALTER TABLE `machines` DISABLE KEYS */;
INSERT INTO `machines` VALUES (1,'TaqMan','<strong> TaqMan </strong>',22,21),(2,'Abbott','<strong><font color=\'#0000FF\'> Abbott </font></strong>',94,93),(3,'C8800','<strong> C8800 </strong>',NULL,93),(4,'Panther','<strong><font color=\'#FF00FB\'> Panther </font></strong>',NULL,93);
/*!40000 ALTER TABLE `machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worksheetstatus`
--

DROP TABLE IF EXISTS `worksheetstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worksheetstatus` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `state` varchar(100) DEFAULT NULL,
  `output` varchar(150) DEFAULT NULL,
  `active` TINYINT UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worksheetstatus`
--

LOCK TABLES `worksheetstatus` WRITE;
/*!40000 ALTER TABLE `worksheetstatus` DISABLE KEYS */;
INSERT INTO `worksheetstatus` VALUES (1,'In-Process','<strong><font color=\'#FFD324\'>In-Process</font></strong>',1),(2,'Tested','<strong><font color=\'#0000FF\'>Tested</font></strong>',1),(3,'Approved','<strong><font color=\'#339900\'>Approved</font></strong>',1),(4,'Cancelled','<strong><font color=\'#FF0000\'>Cancelled</font></strong>',1);
/*!40000 ALTER TABLE `worksheetstatus` ENABLE KEYS */;
UNLOCK TABLES;



--
-- Table structure for table `viralrejectedreasons`
--

DROP TABLE IF EXISTS `viralrejectedreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viralrejectedreasons` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viralrejectedreasons`
--

LOCK TABLES `viralrejectedreasons` WRITE;
/*!40000 ALTER TABLE `viralrejectedreasons` DISABLE KEYS */;
INSERT INTO `viralrejectedreasons` VALUES (1,'Improper Collection Technique [Clotted Haemolyzed / Short Draw Lipemic ]'),(2,'Incorrect Container / Tube Received'),(3,'Patient id error / No Specimen Label'),(4,'Requisition & Specimen do not match'),(5,'Delayed Delivery of Specimen'),(10,'Improperly Packaged Specimens / Shipment [ Leaking specimen / breaking / high temperature ]'),(11,'Sample Missing on Requisition Form'),(12,'Sample \'not due for re-collection\' not 3 months'),(13,'Patient Died'),(14,'Insufficient  sample volume'),(15,'No Request form accompanying the sample'),(16,'Collected on expired Filter paper/ tube'),(17,'Missing Sample ( Physical Sample Missing)'),(18,'Duplicate Entry'),(19,'Other');
/*!40000 ALTER TABLE `viralrejectedreasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_points`
--

DROP TABLE IF EXISTS `entry_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_points` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_points`
--

LOCK TABLES `entry_points` WRITE;
/*!40000 ALTER TABLE `entry_points` DISABLE KEYS */;
INSERT INTO `entry_points` VALUES 
(1,'IPD'),
(2,'OPD'),
(3,'Maternity'),
(4,'CCC'),
(5,'MCH/PMTCT'),
(6,'Other'),
(7,'No Data');
/*!40000 ALTER TABLE `entry_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prophylaxis`
--

DROP TABLE IF EXISTS `prophylaxis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prophylaxis` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(100),
  `ptype` TINYINT UNSIGNED NOT NULL,
  `flag` TINYINT UNSIGNED NOT NULL DEFAULT '1',
  `rank` TINYINT UNSIGNED DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prophylaxis`
--

LOCK TABLES `prophylaxis` WRITE;
/*!40000 ALTER TABLE `prophylaxis` DISABLE KEYS */;
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (1, 'SdNVP Only', NULL, 1, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (2, 'Interrupted HAART (HAART until end of BF)', NULL, 1, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (3, 'AZT (From 14wks or later) + sdNVP + 3TC + AZT+3TC for 7 days', NULL, 1, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (4, 'HAART', NULL, 1, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (5, 'PM13 : None', 'PM13', 1, 1, 10);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (6, 'PM1X : Other Regimens', 'PM1X', 1, 1, 11);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (7, 'No Data', 'No Data', 1, 1, 12);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (8, 'SdNVP Only', NULL, 2, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (9, 'Sd NVP+AZT+3TC', NULL, 2, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (10, 'NVP for 6 weeks (Mother on HAART or not BF)', NULL, 2, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (11, 'NVP during BF', NULL, 2, 0, NULL);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (12, 'Others', NULL, 2, 1, 4);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (13, 'None', NULL, 2, 1, 3);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (14, 'No Data', NULL, 2, 1, 5);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (15, 'NVP for 12 Wks', NULL, 2, 1, 7);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (16, 'NVP+AZT', NULL, 2, 1, 6);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (17, 'PM3 :AZT+3TC+NVP', 'PM3', 1, 1, 1);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (18, 'PM4 :AZT+3TC+EFV', 'PM4', 1, 1, 2);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (19, 'PM5 :AZT+3TC+LPV/r', 'PM5', 1, 1, 3);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (20, 'PM6 :TDF+3TC+NVP', 'PM6', 1, 1, 4);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (21, 'PM7 :TDF+3TC+LPV/r', 'PM7', 1, 1, 5);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (22, 'PM9 :TDF+3TC+EFV', 'PM9', 1, 1, 6);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (23, 'PM10:AZT+3TC+ATV/r', 'PM10', 1, 1, 7);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (24, 'PM11:TDF+3TC+ATV/r', 'PM11', 1, 1, 8);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (25, 'PM12:TDF+3TC+DTG', 'PM12', 1, 1, 9);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (26, 'AZT for 6 weeks + NVP for 12 weeks', NULL, 2, 1, 1);
INSERT INTO `prophylaxis` (`ID`, `name`, `alias`, `ptype`, `flag`, `rank`) VALUES (27, 'AZT for 6 weeks + NVP for >12 weeks ', NULL, 2, 1, 2);
/*!40000 ALTER TABLE `prophylaxis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `districts` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `SubCountyDHISCode` varchar(50) DEFAULT NULL,
  `SubCountyMFLCode` varchar(50) DEFAULT NULL,
  `SubCountyCoordinates` varchar(3070) DEFAULT NULL,
  `county` int(32) NOT NULL,
  `province` TINYINT UNSIGNED NOT NULL,
  `comment` varchar(32) DEFAULT NULL,
  `flag` int(32) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `districts`
--

LOCK TABLES `districts` WRITE;
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` VALUES (1,'Gatundu South ','EcRytSSIkUq','210','',23,1,'dhis',1),(4,'Kirinyaga Central','JKNaaTjVapG','205','',21,1,'dhis',1),(6,'maragwa','l46g2PZUjoh','207','[[[[37.2728,-0.7917],[37.3032,-0.8047],[37.3302,-0.8469],[37.4398,-0.8645],[37.4715,-0.878],[37.4806,-0.8999],[37.4419,-0.9386],[37.4382,-0.9761],[37.3995,-0.972],[37.324,-0.8917],[37.315,-0.9184],[37.2542,-0.8638],[37.2534,-0.8826],[37.2084,-0.9263],[37.2171,-0.9712],[37.1606,-0.9446],[37.1465,-0.9731],[37.1208,-0.9458],[37.0937,-0.9721],[37.0614,-0.952],[37.0364,-0.9677],[36.9916,-0.912],[36.9311,-0.8772],[36.9154,-0.8443],[36.8106,-0.8077],[36.7564,-0.7567],[36.727,-0.69],[36.7071,-0.6803],[36.7083,-0.6662],[36.8057,-0.7369],[36.8152,-0.713],[36.9553,-0.7698],[37.0817,-0.7861],[37.0958,-0.7678],[37.1856,-0.7491],[37.1957,-0.7664],[37.2627,-0.7815],[37.2661,-0.7831],[37.2728,-0.7917]]]]',22,1,'dhis',1),(7,'ndaragwa',NULL,NULL,NULL,19,1,NULL,1),(11,'Thika Town ','YZAZ1a9MIvX','231','[[[[36.9797,-0.9797],[36.8868,-0.8984],[36.7458,-0.8294],[36.7214,-0.807],[36.7335,-0.7805],[36.713,-0.7477],[36.7071,-0.6803],[36.727,-0.69],[36.7564,-0.7567],[36.8106,-0.8077],[36.9154,-0.8443],[36.9311,-0.8772],[36.9916,-0.912],[37.0364,-0.9677],[37.0614,-0.952],[37.0937,-0.9721],[37.1208,-0.9458],[37.1465,-0.9731],[37.1606,-0.9446],[37.2171,-0.9712],[37.2084,-0.9263],[37.2534,-0.8826],[37.2542,-0.8638],[37.315,-0.9184],[37.3497,-0.9874],[37.419,-1.0398],[37.3437,-1.1223],[37.2942,-1.0774],[37.211,-1.0844],[37.1744,-1.1187],[37.1834,-1.1714],[37.1523,-1.2276],[37.1009,-1.2643],[37.064,-1.209],[37.0052,-1.2414],[36.9845,-1.2273],[36.9291,-1.2272],[36.9088,-1.212],[36.9394,-1.1786],[36.8955,-1.1651],[36.8813,-1.1587],[36.8971,-1.1238],[36.8657,-1.1166],[36.895,-1.0636],[36.7691,-0.9771],[36.7252,-0.9585],[36.7399,-0.9408],[36.7338,-0.9211],[36.7945,-0.9675],[36.8868,-0.9805],[36.8733,-1.0442],[36.9197,-1.067],[36.9419,-1.067],[36.9536,-1.0478],[36.9415,-1.0385],[36.982,-0.9965],[36.9797,-0.9797]]]]',23,1,'dhis',1),(12,'Kaloleni','tSKDWoVKiPo\r\n','307\r\n',NULL,4,2,NULL,1),(13,'Kilifi North','MEkEH8ZmcOU\r\n',NULL,NULL,4,2,NULL,1),(15,'Kinango','LOgbecTRkbp','304','[[[[39.5852,-4.0722],[39.5202,-4.0682],[39.5165,-4.0982],[39.4603,-4.1119],[39.4221,-4.1503],[39.3828,-4.1617],[39.3836,-4.1396],[39.3114,-4.1458],[39.2973,-4.2223],[39.2708,-4.2345],[39.2386,-4.225],[39.1711,-4.3209],[39.1434,-4.3089],[39.1384,-4.2548],[39.119,-4.2267],[39.0896,-4.222],[39.093,-4.1913],[39.0713,-4.2064],[39.0566,-4.1917],[39.035,-4.2218],[39.0048,-4.2083],[38.9521,-4.2208],[38.7694,-4.025],[38.9513,-3.9565],[39.0346,-3.7584],[38.9381,-3.7],[38.9545,-3.6716],[38.9715,-3.64],[39.0613,-3.688],[39.0966,-3.5661],[39.3238,-3.5582],[39.3545,-3.5945],[39.3531,-3.6934],[39.3652,-3.7244],[39.3976,-3.7321],[39.3942,-3.7721],[39.3873,-3.8023],[39.4241,-3.8147],[39.5271,-3.9084],[39.5558,-3.9582],[39.5462,-3.9813],[39.5794,-3.9873],[39.5869,-4.0507],[39.5663,-4.0257],[39.559,-4.0418],[39.5685,-4.0263],[39.579,-4.0324],[39.5666,-4.0484],[39.5852,-4.0722]]]]',3,2,'dhis',1),(17,'Lamu West','Lfxw0DfD4jN','311','[[[[40.8777,-2.2452],[40.8979,-2.2555],[40.9165,-2.2966],[40.8662,-2.3029],[40.8171,-2.3374],[40.8178,-2.2813],[40.8777,-2.2452]]],[[[40.7191,-2.4681],[40.6337,-2.462],[40.4376,-2.4009],[40.4326,-2.3884],[40.33,-2.4022],[40.327,-2.3885],[40.2383,-2.3901],[40.233,-2.2261],[40.1972,-2.0362],[40.4788,-1.8921],[40.4983,-1.8852],[40.5125,-1.9032],[40.9913,-1.6875],[41.5715,-1.647],[41.459,-1.7801],[41.4863,-1.7669],[41.4804,-1.7987],[41.4532,-1.8027],[41.4563,-1.7877],[41.4368,-1.8063],[41.447,-1.8124],[41.4293,-1.8087],[41.4368,-1.8207],[41.4121,-1.8409],[41.4388,-1.8415],[41.3874,-1.8912],[41.4044,-1.8588],[41.2807,-1.9871],[41.2615,-1.9546],[41.2301,-1.9721],[41.2244,-1.9451],[41.2356,-1.9402],[41.2232,-1.9396],[41.2194,-1.9149],[41.2154,-1.9529],[41.1942,-1.927],[41.1674,-1.9487],[41.179,-1.9354],[41.2001,-1.9473],[41.1883,-1.9566],[41.2032,-1.954],[41.189,-1.9668],[41.1932,-1.9874],[41.1718,-1.9798],[41.1918,-1.9962],[41.1257,-1.998],[41.1252,-1.9801],[41.1038,-2.0021],[41.0962,-1.9904],[41.0996,-2.0057],[41.0835,-2.0138],[41.0759,-1.9974],[41.0782,-2.0182],[41.0124,-2.0559],[40.979,-2.0198],[40.9857,-1.9481],[41.0174,-1.909],[41.0033,-1.9082],[40.9734,-1.939],[40.9751,-1.9893],[40.9599,-2.0171],[40.9807,-2.0662],[40.947,-2.0849],[40.9188,-2.0335],[40.9209,-1.9988],[40.8076,-1.9574],[40.8915,-2.0082],[40.8815,-2.0145],[40.9059,-2.0101],[40.9132,-2.0658],[40.8974,-2.0652],[40.8971,-2.0479],[40.8924,-2.0688],[40.9073,-2.0699],[40.9165,-2.0937],[40.9215,-2.2106],[40.9429,-2.2405],[40.941,-2.2215],[40.969,-2.2368],[40.976,-2.2262],[40.9904,-2.262],[40.9554,-2.3127],[40.9249,-2.3233],[40.9129,-2.314],[40.9229,-2.2887],[40.9517,-2.2884],[40.9273,-2.2854],[40.9071,-2.2573],[40.9088,-2.2196],[40.8855,-2.2156],[40.8909,-2.2426],[40.848,-2.2523],[40.8054,-2.2913],[40.7981,-2.2754],[40.821,-2.2465],[40.8087,-2.2485],[40.7932,-2.2804],[40.8084,-2.3104],[40.7763,-2.2996],[40.7819,-2.2635],[40.7465,-2.2515],[40.7779,-2.2657],[40.7713,-2.2981],[40.7605,-2.2949],[40.7981,-2.3284],[40.7238,-2.2974],[40.7713,-2.326],[40.7816,-2.3577],[40.7787,-2.3351],[40.8216,-2.3618],[40.8257,-2.3885],[40.7705,-2.4543],[40.7191,-2.4681]]],[[[41.0899,-2.0418],[41.1357,-2.0555],[41.1733,-2.106],[41.131,-2.1324],[41.1357,-2.1169],[41.1182,-2.1032],[41.1279,-2.114],[41.1113,-2.1404],[41.0454,-2.1421],[41.0562,-2.1668],[41.0351,-2.1471],[41.0395,-2.1279],[41.0257,-2.1493],[40.9993,-2.1474],[40.9943,-2.1677],[41.0163,-2.2026],[40.9996,-2.2094],[40.9799,-2.1724],[40.9679,-2.1851],[40.9719,-2.111],[41.0899,-2.0418]]],[[[41.1924,-2.0024],[41.1871,-2.0312],[41.1404,-2.0209],[41.1924,-2.0024]]],[[[41.2015,-2.0004],[41.2115,-2.0274],[41.1968,-2.0241],[41.2015,-2.0004]]],[[[41.2659,-1.9637],[41.2732,-1.9763],[41.2562,-1.9935],[41.2743,-1.9977],[41.3076,-1.9718],[41.2368,-2.0471],[41.2676,-2.0092],[41.2471,-1.9887],[41.2659,-1.9637]]]]',6,2,'dhis',1),(18,'Malindi','lGg3wEy784X\r\n','308\r\n',NULL,4,2,NULL,1),(20,'Msambweni','ADMywdLwoRX','305','[[[[39.5766,-4.2505],[39.6021,-4.2492],[39.5409,-4.4351],[39.5246,-4.4191],[39.5004,-4.4446],[39.4533,-4.5838],[39.4363,-4.5901],[39.4271,-4.5598],[39.449,-4.5259],[39.4284,-4.5329],[39.4418,-4.5384],[39.4223,-4.5584],[39.4129,-4.5504],[39.4173,-4.5807],[39.4023,-4.5901],[39.3943,-4.5774],[39.3982,-4.6191],[39.4132,-4.6224],[39.4049,-4.6462],[39.3054,-4.6388],[39.3141,-4.5801],[39.2983,-4.5995],[39.293,-4.5795],[39.2871,-4.6185],[39.2813,-4.5938],[39.2571,-4.5901],[39.2737,-4.593],[39.2757,-4.6254],[39.2671,-4.6168],[39.2366,-4.6349],[39.2466,-4.6423],[39.2193,-4.6707],[38.4524,-4.1422],[38.7694,-4.025],[38.9521,-4.2208],[39.0048,-4.2083],[39.035,-4.2218],[39.0566,-4.1917],[39.0713,-4.2064],[39.093,-4.1913],[39.0896,-4.222],[39.119,-4.2267],[39.1384,-4.2548],[39.1434,-4.3089],[39.1711,-4.3209],[39.1999,-4.3831],[39.226,-4.374],[39.3159,-4.3983],[39.3382,-4.3786],[39.3952,-4.3888],[39.421,-4.3834],[39.4778,-4.324],[39.4984,-4.2729],[39.4805,-4.2631],[39.5439,-4.2591],[39.5692,-4.2391],[39.5766,-4.2505]]],[[[39.3605,-4.6529],[39.4005,-4.6576],[39.4069,-4.6746],[39.3482,-4.6667],[39.3605,-4.6529]]],[[[39.2696,-4.6529],[39.2945,-4.662],[39.2768,-4.6707],[39.2696,-4.6529]]]]',3,2,'dhis',1),(22,'GARSEN','Lj0mu9j58Ss','310','[[[[40.1918,-2.7482],[39.8806,-2.3056],[39.2289,-3.0745],[39.1748,-3.0671],[39.1347,-3.0291],[39.0934,-3.0545],[39.0593,-3.0344],[39.0843,-3.0395],[38.6314,-2.4205],[38.6859,-2.4128],[38.7837,-2.3514],[38.9246,-2.0699],[38.9962,-1.919],[39.1017,-1.982],[39.2105,-1.929],[39.3241,-1.8075],[39.7697,-1.8177],[39.7683,-1.7947],[39.7994,-1.7893],[40.0271,-1.7987],[40.0572,-1.9048],[40.1721,-1.8896],[40.1784,-1.9981],[40.1972,-2.0362],[40.233,-2.2261],[40.2383,-2.3901],[40.327,-2.3885],[40.33,-2.4022],[40.4326,-2.3884],[40.4376,-2.4009],[40.6337,-2.462],[40.7191,-2.4681],[40.6099,-2.5609],[40.496,-2.5151],[40.4813,-2.5215],[40.5015,-2.5174],[40.5327,-2.5394],[40.4571,-2.5418],[40.3468,-2.5915],[40.3507,-2.5732],[40.339,-2.5968],[40.2605,-2.6479],[40.1988,-2.7346],[40.1851,-2.7274],[40.1918,-2.7482]]]]',5,2,'dhis',1),(24,'Taveta','jNzRdAwjaQ1','313','[[[[37.6977,-3.1881],[37.8564,-3.1853],[37.8607,-3.0889],[37.8787,-3.0856],[37.9044,-2.8935],[37.9254,-2.8747],[37.9458,-2.7836],[37.9776,-2.7893],[38.1743,-2.6911],[38.2811,-2.773],[38.3629,-2.8926],[38.4639,-2.9869],[38.5172,-2.9779],[38.6167,-2.9978],[38.6812,-3.036],[38.8161,-3.0585],[39.0205,-3.0137],[39.0593,-3.0344],[39.0934,-3.0545],[39.1347,-3.0291],[39.1748,-3.0671],[39.2289,-3.0745],[39.2304,-3.1629],[39.1736,-3.3514],[39.1114,-3.5575],[39.0966,-3.5661],[39.0613,-3.688],[38.9715,-3.64],[38.9545,-3.6716],[38.7394,-3.5445],[38.6561,-3.4459],[38.6725,-3.4318],[38.6344,-3.3732],[38.5529,-3.3634],[38.5139,-3.1666],[38.1432,-3.162],[38.1471,-3.3754],[38.1302,-3.3784],[38.1294,-3.4359],[38.1492,-3.4375],[38.1418,-3.7418],[38.5058,-3.8126],[38.5574,-3.9259],[38.4448,-4.1359],[37.7958,-3.6793],[37.7477,-3.5451],[37.6737,-3.509],[37.6136,-3.5273],[37.6047,-3.5064],[37.6272,-3.4673],[37.5927,-3.4646],[37.5931,-3.4445],[37.7183,-3.3132],[37.6977,-3.1881]]]]',7,2,'dhis',1),(27,'garbatulla','ecl4YnDebUi','406','[[[[38.558,-0.015],[38.4425,-0.0776],[38.406,-0.0601],[38.3142,0.0839],[38.2892,0.161],[38.1885,0.2359],[38.1869,0.328],[38.1535,0.3769],[38.0596,0.6643],[38.0116,0.6456],[37.9985,0.7318],[37.9658,0.7536],[38.0122,0.795],[38.055,0.7782],[38.1623,0.8181],[38.3049,0.8204],[38.3199,0.8344],[38.3513,0.8243],[38.3987,0.855],[38.4758,0.8671],[38.5021,0.8535],[38.5223,0.9012],[38.5499,0.9202],[38.5651,0.9823],[38.6509,1.0038],[38.7236,1.0566],[38.7583,1.1137],[38.8445,1.1594],[39.0133,1.1755],[39.1295,1.1367],[39.1856,1.0776],[39.2738,1.0668],[39.3688,1.0322],[39.4329,0.985],[39.4587,0.9681],[39.4458,0.9677],[39.402,0.9634],[39.2825,0.8856],[39.1449,0.6915],[39.0375,0.6674],[38.9992,0.6217],[38.932,0.6164],[38.9103,0.5953],[38.8508,0.582],[38.7858,0.5095],[38.6723,0.5031],[38.6431,0.5092],[38.6395,0.5237],[38.6645,0.638],[38.738,0.6989],[38.7664,0.7038],[38.7643,0.7399],[38.7085,0.7836],[38.7156,0.8084],[38.6344,0.776],[38.5937,0.7166],[38.5916,0.6854],[38.541,0.6684],[38.4865,0.6604],[38.3763,0.7011],[38.2998,0.5718],[38.3308,0.5732],[38.3456,0.5204],[38.3192,0.4584],[38.3389,0.3925],[38.4021,0.3225],[38.4073,0.2143],[38.4258,0.1678],[38.4718,0.1417],[38.5283,0.0632],[38.558,-0.015]]]]',12,3,'dhis',1),(28,'Igembe Central','PKeFksHlJkB','1240','',13,3,'dhis',1),(29,'Imenti Central','OnNcTsJgfvL','407','[[[[37.893,-0.0215],[37.9257,-0.0563],[37.8496,-0.1134],[37.8106,-0.0497],[37.7467,-0.0383],[37.6723,-0.0629],[37.6206,-0.0263],[37.5598,-0.0306],[37.5454,-0.0132],[37.5583,0.0218],[37.4795,0.0673],[37.4976,0.0996],[37.4952,0.2071],[37.518,0.2369],[37.5558,0.1388],[37.5468,0.1],[37.5805,0.0476],[37.594,0.0516],[37.6585,0.0022],[37.6882,0.0159],[37.7076,0.0049],[37.7856,0.0167],[37.893,-0.0215]]]]',13,3,'dhis',1),(30,'Imenti North','BDxUGx86itV','408','[[[[37.2375,-0.1045],[37.1162,-0.0192],[37.0918,0.0276],[37.2255,0.0795],[37.2397,0.1139],[37.2805,0.1311],[37.3108,0.1784],[37.3393,0.1837],[37.3731,0.2797],[37.3888,0.2957],[37.3818,0.2806],[37.4305,0.3003],[37.5353,0.266],[37.5551,0.33],[37.7147,0.1134],[37.7674,0.0984],[37.7689,0.0789],[37.8132,0.1106],[37.8172,0.078],[37.8624,0.0292],[37.8991,0.0112],[37.893,-0.0215],[37.7856,0.0167],[37.7076,0.0049],[37.6882,0.0159],[37.6585,0.0022],[37.594,0.0516],[37.5805,0.0476],[37.5468,0.1],[37.5558,0.1388],[37.518,0.2369],[37.4952,0.2071],[37.4976,0.0996],[37.4795,0.0673],[37.4165,0.0613],[37.3987,0.0117],[37.3636,-0.0106],[37.3158,-0.0023],[37.2928,-0.0163],[37.2375,-0.1045]]]]',13,3,'dhis',1),(31,'Imenti South','AFIlzKNxXST','409','[[[[37.6723,-0.0629],[37.7467,-0.0383],[37.8106,-0.0497],[37.8496,-0.1134],[37.7959,-0.1663],[37.754,-0.1121],[37.7343,-0.1087],[37.6722,-0.1267],[37.668,-0.1491],[37.6346,-0.1488],[37.6528,-0.2133],[37.5781,-0.1828],[37.5553,-0.1281],[37.5598,-0.0306],[37.6206,-0.0263],[37.6723,-0.0629]]]]',13,3,'dhis',1),(32,'Isiolo','I2LYLqKU6AW','','',12,3,'dhis',1),(33,'Kangundo','vMPhBuymSKt','424','[[[[37.3437,-1.1223],[37.3754,-1.1602],[37.3453,-1.1882],[37.371,-1.256],[37.3432,-1.2594],[37.3504,-1.2778],[37.3168,-1.3107],[37.2928,-1.3097],[37.2638,-1.3426],[37.243,-1.3268],[37.2502,-1.3037],[37.2324,-1.3168],[37.2193,-1.3053],[37.221,-1.3582],[37.1699,-1.3549],[37.1409,-1.2985],[37.0825,-1.2924],[37.1034,-1.2807],[37.1009,-1.2643],[37.1523,-1.2276],[37.1834,-1.1714],[37.1744,-1.1187],[37.211,-1.0844],[37.2942,-1.0774],[37.3437,-1.1223]]]]',17,3,'dhis',1),(34,'Kibwezi East ','ZhhyithPNoI','','',18,3,'dhis',1),(35,'Kitui Rural','vbauk0RRq9N\r\n','1071\r\n',NULL,16,3,NULL,1),(37,'Laisamis','eZpy65ooW0m\r\n','403\r\n',NULL,11,3,NULL,1),(38,'Maara','wQ8XjZ7zVwL','411','[[[[37.5781,-0.1828],[37.6528,-0.2133],[37.6346,-0.1488],[37.668,-0.1491],[37.6722,-0.1267],[37.7343,-0.1087],[37.754,-0.1121],[37.7959,-0.1663],[37.7951,-0.2],[37.8139,-0.2227],[37.8049,-0.222],[37.7891,-0.2344],[37.8179,-0.2558],[37.7925,-0.2817],[37.8171,-0.3169],[37.754,-0.2972],[37.7183,-0.3196],[37.6606,-0.3054],[37.6279,-0.3319],[37.6049,-0.3254],[37.6122,-0.2934],[37.5877,-0.2655],[37.5965,-0.2267],[37.5781,-0.1828]]]]',14,3,'dhis',1),(39,'Machakos','KXc4ez8OAFz','421','',17,3,'dhis',1),(40,'Makueni','AIGIQpolMRn\r\n','425\r\n',NULL,18,3,NULL,1),(42,'Mbeere North ','eYBXetGx8xF','434','[[[[37.4806,-0.8999],[37.4715,-0.878],[37.4398,-0.8645],[37.3302,-0.8469],[37.3032,-0.8047],[37.2728,-0.7917],[37.2661,-0.7831],[37.2779,-0.7594],[37.3125,-0.7533],[37.3477,-0.7755],[37.4709,-0.7277],[37.494,-0.7336],[37.476,-0.7132],[37.4823,-0.5941],[37.54,-0.5582],[37.5634,-0.5225],[37.6428,-0.5303],[37.6809,-0.5172],[37.6879,-0.4976],[37.71,-0.4912],[37.6762,-0.4707],[37.69,-0.4428],[37.7851,-0.4488],[37.8903,-0.348],[37.8867,-0.3957],[37.9354,-0.4311],[37.8833,-0.5376],[37.8897,-0.5973],[37.922,-0.6324],[37.8933,-0.6574],[37.9148,-0.7284],[37.9087,-0.753],[37.8781,-0.8122],[37.843,-0.8131],[37.8055,-0.8047],[37.7886,-0.8218],[37.7587,-0.8219],[37.7444,-0.7855],[37.7114,-0.7814],[37.6802,-0.7982],[37.664,-0.8481],[37.6333,-0.8401],[37.5885,-0.8797],[37.5571,-0.8806],[37.5307,-0.9183],[37.4806,-0.8999]]]]',15,3,'dhis',1),(43,'Mbooni','jxjGWCdfsib\r\n',NULL,NULL,18,3,NULL,1),(44,'chuka/igambangombe','JmE1qRVQD4F','410','[[[[37.8049,-0.222],[37.8139,-0.2227],[37.8629,-0.3032],[37.8887,-0.3144],[37.8903,-0.348],[37.7851,-0.4488],[37.69,-0.4428],[37.6318,-0.3979],[37.5363,-0.3592],[37.3125,-0.1649],[37.3072,-0.1578],[37.2375,-0.1045],[37.2928,-0.0163],[37.3158,-0.0023],[37.3636,-0.0106],[37.3987,0.0117],[37.4165,0.0613],[37.4795,0.0673],[37.5583,0.0218],[37.5454,-0.0132],[37.5598,-0.0306],[37.5553,-0.1281],[37.5781,-0.1828],[37.5965,-0.2267],[37.5877,-0.2655],[37.6122,-0.2934],[37.6049,-0.3254],[37.6279,-0.3319],[37.6606,-0.3054],[37.7183,-0.3196],[37.754,-0.2972],[37.8171,-0.3169],[37.7925,-0.2817],[37.8179,-0.2558],[37.7891,-0.2344],[37.8049,-0.222]]]]',14,3,'dhis',1),(45,'Moyale','sZjPgbWI5ra\r\n',NULL,NULL,11,3,NULL,1),(47,'Mwala','fYYivceocJ2','422','[[[[37.6186,-1.5725],[37.5979,-1.5578],[37.5777,-1.57],[37.5528,-1.5443],[37.4843,-1.5238],[37.4294,-1.5372],[37.3853,-1.5234],[37.3664,-1.492],[37.3671,-1.4436],[37.3509,-1.4339],[37.4033,-1.407],[37.3987,-1.3759],[37.4107,-1.3769],[37.4211,-1.3419],[37.4055,-1.315],[37.3891,-1.3371],[37.3811,-1.3278],[37.3283,-1.3532],[37.3168,-1.3107],[37.3504,-1.2778],[37.3432,-1.2594],[37.371,-1.256],[37.3453,-1.1882],[37.3754,-1.1602],[37.4077,-1.1724],[37.4514,-1.23],[37.6028,-1.3438],[37.6989,-1.5069],[37.7561,-1.5732],[37.7365,-1.5769],[37.7244,-1.6089],[37.6877,-1.5879],[37.6613,-1.6404],[37.6186,-1.5725]]]]',17,3,'dhis',1),(48,'Mwingi Central ','uE7HKhqPOtf\r\n','419\r\n',NULL,16,3,NULL,1),(50,'Tharaka North','ZNXf7qiVh3t','414','[[[[38.1822,0.0204],[38.2139,0.0132],[38.2407,-0.0166],[38.2785,-0.0169],[38.3035,-0.05],[38.2828,-0.0794],[38.2456,-0.0813],[38.2094,-0.1085],[38.1806,-0.1519],[38.1586,-0.2423],[38.1149,-0.2794],[37.997,-0.2838],[37.9696,-0.3485],[37.9731,-0.3912],[37.9354,-0.4311],[37.8867,-0.3957],[37.8903,-0.348],[37.8887,-0.3144],[37.8629,-0.3032],[37.8139,-0.2227],[37.7951,-0.2],[37.7959,-0.1663],[37.8496,-0.1134],[37.9257,-0.0563],[37.893,-0.0215],[37.8991,0.0112],[37.8624,0.0292],[37.9026,0.0767],[37.8717,0.142],[37.8776,0.2001],[37.9067,0.1789],[37.9719,0.0713],[37.9966,0.0688],[38.041,0.0304],[38.0766,0.0332],[38.1074,0.0593],[38.1822,0.0204]]]]',14,3,'dhis',1),(51,'Tigania East','U3lGZ71W9Te','413','',13,3,'dhis',1),(52,'Yatta','CeukNtGhW7J','423','[[[[37.6989,-1.5069],[37.6028,-1.3438],[37.4514,-1.23],[37.4077,-1.1724],[37.3754,-1.1602],[37.3437,-1.1223],[37.419,-1.0398],[37.3497,-0.9874],[37.315,-0.9184],[37.324,-0.8917],[37.3995,-0.972],[37.4382,-0.9761],[37.4419,-0.9386],[37.4806,-0.8999],[37.5307,-0.9183],[37.5571,-0.8806],[37.5885,-0.8797],[37.6333,-0.8401],[37.664,-0.8481],[37.6802,-0.7982],[37.7114,-0.7814],[37.7444,-0.7855],[37.7587,-0.8219],[37.7886,-0.8218],[37.8055,-0.8047],[37.843,-0.8131],[37.8235,-0.8993],[37.8485,-0.9711],[37.8664,-0.9818],[37.8076,-1.116],[37.7741,-1.2168],[37.7749,-1.2576],[37.8289,-1.3551],[37.8729,-1.3722],[37.8813,-1.4085],[37.7767,-1.4912],[37.6989,-1.5069]]]]',17,3,'dhis',1),(56,'Fafi','RScEHA3V38d','503','',8,6,'dhis',1),(57,'Garissa','lQkHbTC1iRg','501','[[[[39.9002,-0.5212],[39.8545,-0.5714],[39.8515,-0.6399],[39.8214,-0.6652],[39.8087,-0.6399],[39.7866,-0.6444],[39.7716,-0.6151],[39.7086,-0.591],[39.7265,-0.5639],[39.7028,-0.5377],[39.6709,-0.5472],[39.6415,-0.5021],[39.6024,-0.3555],[39.5864,-0.3425],[39.6037,-0.3255],[39.435,-0.1719],[39.3966,-0.1661],[39.3112,-0.1148],[39.278,-0.117],[39.2758,-0.1431],[39.261,-0.1476],[39.2369,-0.1425],[39.2362,-0.115],[39.1655,-0.1107],[39.1771,-0.1268],[39.1601,-0.1392],[39.0644,-0.0566],[38.925,-0.1011],[38.8997,-0.0669],[38.6272,-0.046],[38.558,-0.015],[38.5283,0.0632],[38.4718,0.1417],[38.4258,0.1678],[38.4073,0.2143],[38.4021,0.3225],[38.3389,0.3925],[38.3192,0.4584],[38.3456,0.5204],[38.3308,0.5732],[38.2998,0.5718],[38.3763,0.7011],[38.4865,0.6604],[38.541,0.6684],[38.5916,0.6854],[38.5937,0.7166],[38.6344,0.776],[38.7156,0.8084],[38.7085,0.7836],[38.7643,0.7399],[38.7664,0.7038],[38.738,0.6989],[38.6645,0.638],[38.6395,0.5237],[38.6431,0.5092],[38.6723,0.5031],[38.7858,0.5095],[38.8508,0.582],[38.9103,0.5953],[38.932,0.6164],[38.9992,0.6217],[39.0375,0.6674],[39.1449,0.6915],[39.2825,0.8856],[39.402,0.9634],[39.4458,0.9677],[39.5436,0.741],[39.5706,0.7623],[39.7092,0.5626],[39.6931,0.5304],[39.7596,0.4773],[39.8768,0.4472],[39.8955,0.43],[39.8636,0.3861],[39.8893,0.3185],[39.8618,0.2743],[39.7586,0.2181],[39.7289,0.1807],[39.6839,0.1631],[39.6668,0.1338],[39.6066,0.1227],[39.5208,0.0341],[39.5158,0.0079],[39.6355,-0.0146],[39.7985,-0.2177],[39.8803,-0.3887],[39.9002,-0.5212]]]]',8,6,'dhis',1),(58,'Ijara','l5E6PiIUs1J','504','[[[[41.5715,-1.647],[40.9913,-1.6875],[40.5125,-1.9032],[40.4983,-1.8852],[40.4788,-1.8921],[40.1972,-2.0362],[40.1784,-1.9981],[40.1721,-1.8896],[40.1414,-1.7821],[40.153,-1.7266],[40.138,-1.599],[40.0856,-1.5094],[40.0636,-1.5001],[40.0491,-1.424],[40.0599,-1.4196],[40.0306,-1.3194],[40.0365,-1.2601],[39.9833,-1.1317],[39.9253,-1.0256],[39.9053,-1.0132],[39.9002,-0.9672],[39.9165,-0.9584],[39.8214,-0.6652],[39.8515,-0.6399],[39.8545,-0.5714],[39.9002,-0.5212],[40.0041,-0.5055],[40.0411,-0.5135],[40.1834,-0.4762],[40.2142,-0.4749],[40.2477,-0.5028],[40.3489,-0.6095],[40.4326,-0.7671],[40.5017,-0.86],[40.5862,-0.904],[40.633,-0.8932],[40.6624,-0.9062],[40.6603,-0.9751],[40.6841,-1.0219],[40.7109,-1.2307],[40.7336,-1.2843],[40.8216,-1.3114],[40.9397,-1.383],[40.9412,-1.4256],[40.996,-1.5114],[41.0225,-1.4998],[41.006,-1.4842],[41.017,-1.4143],[40.9419,-1.2973],[40.9375,-1.2179],[40.9572,-1.2092],[41.0312,-1.2249],[40.9784,-1.1288],[40.9836,-1.0308],[40.9449,-0.9834],[40.8808,-0.8469],[40.9148,-0.7683],[40.9347,-0.761],[41.0004,-0.7843],[41.0043,-0.8235],[41.1152,-0.9781],[41.5774,-1.5849],[41.5715,-1.647]]]]',8,6,'dhis',1),(59,'Lagdera','J69iWev2zwu','502','[[[[40.9993,-0.3976],[40.9987,-0.2907],[40.9642,-0.2931],[40.848,-0.2443],[40.4085,-0.01],[40.3681,0.0305],[40.3255,0.0286],[40.3148,0.0399],[40.3351,0.1822],[40.3535,0.2059],[40.4758,0.1908],[40.5936,0.2352],[40.6493,0.3103],[40.6915,0.3405],[40.7924,0.3772],[40.9022,0.448],[40.9145,0.4727],[40.9036,0.4816],[40.9887,0.5145],[40.9993,-0.3976]]]]',8,6,'dhis',1),(60,'mandera south','qyhVIMG2rUw','509','[[[[40.9377,3.2455],[40.9289,3.1137],[41.0624,3.0319],[41.0501,2.9545],[40.99,2.8933],[40.9382,2.897],[40.8996,2.8739],[40.8715,2.8377],[40.8682,2.7869],[40.6821,2.7962],[40.6189,2.7582],[40.5362,2.7568],[40.4697,2.6963],[40.3985,2.6804],[40.3768,2.7864],[40.3502,2.8142],[40.1604,2.9102],[39.9499,3.1588],[40.0185,3.2781],[40.0399,3.3677],[40.0302,3.5093],[39.9915,3.6578],[40.1099,3.7565],[40.1176,3.7317],[40.1418,3.7411],[40.2064,3.7052],[40.2493,3.7571],[40.2525,3.7173],[40.2914,3.7571],[40.3157,3.7097],[40.3322,3.7443],[40.3531,3.7443],[40.3527,3.707],[40.4329,3.8579],[40.6607,3.8485],[40.799,3.8899],[40.8704,3.882],[40.9367,3.926],[41.0385,3.9347],[41.098,3.9808],[41.1838,3.9206],[41.2229,3.9388],[41.2762,3.9334],[41.2416,3.909],[41.2386,3.8606],[41.0955,3.6705],[40.9837,3.58],[40.9893,3.5509],[40.9495,3.4502],[40.9612,3.42],[40.9101,3.3834],[40.8858,3.3203],[40.926,3.3031],[40.9377,3.2455]]]]',10,6,'dhis',1),(61,'Mandera East','fGr9rRvaovO','510','[[[[41.1674,3.0033],[41.0624,3.0319],[40.9289,3.1137],[40.9377,3.2455],[40.926,3.3031],[40.8858,3.3203],[40.9101,3.3834],[40.9612,3.42],[40.9495,3.4502],[40.9893,3.5509],[40.9837,3.58],[41.0955,3.6705],[41.2386,3.8606],[41.2416,3.909],[41.2762,3.9334],[41.5014,3.9365],[41.5372,3.9662],[41.5534,3.9525],[41.6165,3.9664],[41.6557,3.9468],[41.7037,3.9719],[41.7683,3.9621],[41.7845,3.939],[41.8236,3.9274],[41.8875,3.9584],[41.3281,3.1586],[41.1674,3.0033]]]]',10,6,'dhis',1),(62,'Mandera West','H5RvDZkoDJL','511','[[[[39.9499,3.1588],[39.7229,3.2654],[39.7095,3.5871],[39.7994,3.6732],[39.8856,3.8596],[40.1829,4.0149],[40.7152,4.2354],[40.7749,4.282],[40.8824,4.2129],[40.9065,4.1525],[41.0014,4.1027],[41.0919,4.0133],[41.098,3.9808],[41.0385,3.9347],[40.9367,3.926],[40.8704,3.882],[40.799,3.8899],[40.6607,3.8485],[40.4329,3.8579],[40.3527,3.707],[40.3531,3.7443],[40.3322,3.7443],[40.3157,3.7097],[40.2914,3.7571],[40.2525,3.7173],[40.2493,3.7571],[40.2064,3.7052],[40.1418,3.7411],[40.1176,3.7317],[40.1099,3.7565],[39.9915,3.6578],[40.0302,3.5093],[40.0399,3.3677],[40.0185,3.2781],[39.9499,3.1588]]]]',10,6,'dhis',1),(63,'Wajir East','uov0yFMw9Qm','507','[[[[41.0624,3.0319],[41.1674,3.0033],[40.9866,2.8193],[40.9786,2.1804],[40.9938,1.8239],[40.9908,1.3157],[40.9162,1.3394],[40.7201,1.3428],[40.4456,1.3785],[40.4509,1.4131],[40.4192,1.5175],[40.3619,1.5608],[40.3224,1.5527],[40.2909,1.6048],[40.237,1.6367],[40.1999,1.6326],[40.1859,1.6599],[40.1454,1.6726],[40.0602,1.6756],[40.0285,1.6539],[39.9753,1.6553],[39.9561,1.7238],[39.9773,1.7539],[39.942,1.8427],[39.8384,1.9705],[39.8297,2.056],[39.7689,2.1928],[39.755,2.3292],[39.7474,2.492],[39.7477,2.5097],[40.0304,2.5187],[40.0375,2.552],[40.0151,2.5827],[40.1096,2.7361],[40.0879,2.8403],[40.1136,2.8848],[40.1604,2.9102],[40.3502,2.8142],[40.3768,2.7864],[40.3985,2.6804],[40.4697,2.6963],[40.5362,2.7568],[40.6189,2.7582],[40.6821,2.7962],[40.8682,2.7869],[40.8715,2.8377],[40.8996,2.8739],[40.9382,2.897],[40.99,2.8933],[41.0501,2.9545],[41.0624,3.0319]]]]',9,6,'dhis',1),(64,'Wajir North','qsjAa8FE8OS','506','[[[[39.7474,2.492],[39.755,2.3292],[39.66,2.2487],[39.5155,2.1901],[39.4624,2.1993],[39.3592,2.2622],[39.0928,2.2117],[39.0163,2.3286],[39.0158,2.385],[38.9226,2.4244],[38.9053,2.4523],[38.9101,2.4893],[38.927,2.4967],[38.9089,2.552],[39.0091,2.5645],[39.0703,2.686],[39.086,2.8464],[39.1068,2.878],[39.1441,2.8983],[39.1635,2.9357],[39.2693,2.9731],[39.3542,3.0451],[39.311,3.0964],[39.3095,3.184],[39.2734,3.3446],[39.3058,3.3236],[39.303,3.3859],[39.3348,3.3889],[39.4224,3.3764],[39.4567,3.3856],[39.4711,3.3285],[39.5084,3.3221],[39.5378,3.4034],[39.7095,3.5871],[39.7229,3.2654],[39.9499,3.1588],[40.1604,2.9102],[40.1136,2.8848],[40.0879,2.8403],[40.1096,2.7361],[40.0151,2.5827],[40.0375,2.552],[40.0304,2.5187],[39.7477,2.5097],[39.7474,2.492]]]]',9,6,'dhis',1),(65,'Wajir South','U7KFQn3Up3o','505','[[[[40.2909,1.6048],[40.3224,1.5527],[40.3619,1.5608],[40.4192,1.5175],[40.4509,1.4131],[40.4456,1.3785],[40.7201,1.3428],[40.9162,1.3394],[40.9908,1.3157],[40.9887,0.5145],[40.9036,0.4816],[40.9145,0.4727],[40.9022,0.448],[40.7924,0.3772],[40.6915,0.3405],[40.6493,0.3103],[40.5936,0.2352],[40.4758,0.1908],[40.3535,0.2059],[40.3351,0.1822],[40.2823,0.1891],[40.2075,0.225],[40.1555,0.2737],[40.1652,0.3214],[40.058,0.3948],[39.977,0.4125],[39.9187,0.4537],[39.8955,0.43],[39.8768,0.4472],[39.7596,0.4773],[39.6931,0.5304],[39.7092,0.5626],[39.5706,0.7623],[39.5436,0.741],[39.4458,0.9677],[39.4587,0.9681],[39.4329,0.985],[39.4273,1.0084],[39.4458,0.9994],[39.475,0.991],[39.5074,1.0107],[39.8053,1.26],[39.9027,1.184],[39.9343,1.1407],[40.0155,1.0908],[40.056,1.0862],[40.0792,1.1013],[40.2719,1.0672],[40.2502,1.1192],[40.2223,1.3233],[40.1981,1.369],[40.2086,1.4072],[40.1885,1.4804],[40.2044,1.4941],[40.2181,1.5597],[40.2909,1.6048]]]]',9,6,'dhis',1),(66,'Wajir West','X98G0eIWdmP','508','[[[[39.0928,2.2117],[39.3592,2.2622],[39.4624,2.1993],[39.5155,2.1901],[39.66,2.2487],[39.755,2.3292],[39.7689,2.1928],[39.8297,2.056],[39.8384,1.9705],[39.942,1.8427],[39.9773,1.7539],[39.9561,1.7238],[39.9753,1.6553],[40.0285,1.6539],[40.0602,1.6756],[40.1454,1.6726],[40.1859,1.6599],[40.1999,1.6326],[40.237,1.6367],[40.2909,1.6048],[40.2181,1.5597],[40.2044,1.4941],[40.1885,1.4804],[40.2086,1.4072],[40.1981,1.369],[40.2223,1.3233],[40.2502,1.1192],[40.2719,1.0672],[40.0792,1.1013],[40.056,1.0862],[40.0155,1.0908],[39.9343,1.1407],[39.9027,1.184],[39.8053,1.26],[39.5074,1.0107],[39.475,0.991],[39.4458,0.9994],[39.2701,1.4416],[39.4266,1.4964],[39.3779,1.5263],[39.291,1.6207],[39.2059,1.6654],[39.1711,1.7131],[39.1251,1.8329],[39.0674,1.8828],[39.0073,1.9666],[38.9651,2.0761],[38.9994,2.0996],[38.9485,2.1653],[38.9513,2.3326],[38.9226,2.4244],[39.0158,2.385],[39.0163,2.3286],[39.0928,2.2117]]]]',9,6,'dhis',1),(67,'Bondo','JNvqpOnKfGR','602','[[[[34.3828,-0.0629],[34.2967,-0.1284],[34.2699,-0.2099],[34.2432,-0.2363],[34.2039,-0.24],[34.1979,-0.2127],[34.1824,-0.2114],[34.1911,-0.1879],[34.1425,-0.2082],[34.0873,-0.1448],[34.1157,-0.1191],[34.1303,-0.1289],[34.1512,-0.117],[34.1123,-0.1115],[34.1432,-0.0875],[34.1288,-0.0701],[34.1385,-0.0534],[34.108,-0.0756],[34.0746,-0.0698],[34.0939,-0.0884],[34.0836,-0.0821],[34.0655,-0.1154],[34.0613,-0.0713],[34.0309,-0.0821],[34.0273,-0.0688],[34.0328,-0.0784],[34.0635,-0.0309],[34.0435,-0.0339],[34.0368,-0.0591],[34.0225,-0.04],[34.0046,-0.0452],[34.0105,-0.0275],[34.0449,0.0072],[34.1093,0.0413],[34.1245,0.0165],[34.1529,0.0104],[34.1577,-0.0093],[34.2142,-0.0133],[34.2544,-0.0493],[34.3541,-0.0289],[34.3828,-0.0629]]],[[[33.9868,-0.1278],[34.0388,-0.1277],[34.0241,-0.1419],[33.9867,-0.1361],[33.9868,-0.1278]]]]',42,7,'dhis',1),(68,'Borabu','ABuzigW8Lzw','621','',47,7,'dhis',1),(69,'bomachoge chache','YqYSkwmOtiR\r\n','617\r\n',NULL,46,7,NULL,1),(70,'south mugirango','YqYSkwmOtiR','617','[[[[34.8535,-0.8154],[34.9189,-0.9179],[34.7159,-0.9677],[34.6888,-0.9266],[34.6755,-0.8371],[34.6958,-0.8158],[34.6747,-0.7509],[34.6827,-0.7209],[34.7446,-0.7085],[34.7814,-0.7596],[34.8535,-0.8154]]]]',46,7,'dhis',1),(71,'homa bay town','Ur2xRBDtazT\r\n',NULL,NULL,44,7,NULL,1),(73,'bonchari','zCCIu1Vi3Wh\r\n','615\r\n',NULL,46,7,NULL,1),(74,'kisumu central','PRpKwAloU5b','604','[[[[34.5812,-0.1445],[34.5889,-0.1128],[34.6494,-0.0965],[34.6291,-0.0741],[34.6748,-0.0543],[34.6811,-0.0126],[34.6874,-0.0232],[34.7239,-0.0028],[34.7469,-0.0182],[34.7522,-0.0315],[34.8274,0.0262],[34.8074,-0.0215],[34.9296,-0.0344],[34.9914,-0.0196],[35.0087,-0.0267],[35.0077,-0.0523],[35.0062,-0.072],[34.9423,-0.0713],[34.9417,-0.0915],[34.9837,-0.0843],[34.9646,-0.1074],[34.9718,-0.1424],[34.9423,-0.1436],[34.9102,-0.1692],[34.8724,-0.2507],[34.8771,-0.2847],[34.8512,-0.2989],[34.8458,-0.2705],[34.8221,-0.2681],[34.7801,-0.1758],[34.7436,-0.1635],[34.7313,-0.1421],[34.7492,-0.0863],[34.7262,-0.1045],[34.6919,-0.0915],[34.6474,-0.1141],[34.6243,-0.1512],[34.5812,-0.1445]]]]',43,7,'dhis',1),(75,'Kisumu West','YzEDO9Mq4TR','','',43,7,'dhis',1),(76,'Kuria East','THm2tCJa2ZQ','613','[[[[34.5809,-1.3081],[34.6377,-1.1755],[34.6871,-1.2222],[34.7243,-1.3902],[34.6915,-1.3574],[34.5809,-1.3081]]]]',45,7,'dhis',1),(77,'Kuria West','jtBjNpL9FXS','612','[[[[34.6263,-1.1539],[34.6377,-1.1755],[34.5809,-1.3081],[34.5642,-1.2867],[34.5652,-1.3003],[34.4968,-1.2613],[34.5005,-1.249],[34.3733,-1.1909],[34.3802,-1.1815],[34.4029,-1.1344],[34.4774,-1.1337],[34.5034,-1.1093],[34.5569,-1.1],[34.6004,-1.1028],[34.6064,-1.1485],[34.6263,-1.1539]]]]',45,7,'dhis',1),(78,'Manga','f3AcdRzgTwz','620','[[[[34.9424,-0.6701],[34.913,-0.6945],[34.8557,-0.6741],[34.8569,-0.706],[34.8322,-0.7109],[34.794,-0.6912],[34.7941,-0.6731],[34.7617,-0.6484],[34.8033,-0.623],[34.7937,-0.6137],[34.8058,-0.6053],[34.8277,-0.6178],[34.8517,-0.5996],[34.8856,-0.616],[34.9424,-0.6701]]]]',47,7,'dhis',1),(79,'nyaribari masaba','A6Sj8RumZ0m','616','',46,7,'dhis',1),(81,'Nyamira','cxjRPbvhjzr','619','[[[[35.0346,-0.5133],[35.0351,-0.6368],[35.0035,-0.6454],[35.0194,-0.6725],[34.9424,-0.6701],[34.8856,-0.616],[34.8569,-0.5061],[35.0201,-0.4133],[35.0452,-0.452],[35.0345,-0.5002],[35.0346,-0.5133]]]]',47,7,'dhis',1),(82,'Nyando','iRK9uABUTVZ','606','[[[[35.2185,-0.1833],[35.1961,-0.1625],[35.1263,-0.1563],[35.1022,-0.2007],[35.0638,-0.2149],[35.0482,-0.2997],[35.0082,-0.3335],[35.0098,-0.3936],[34.9864,-0.416],[34.9135,-0.4061],[34.9142,-0.3899],[34.8893,-0.4043],[34.8233,-0.3889],[34.8103,-0.3549],[34.763,-0.3154],[34.7557,-0.2925],[34.788,-0.2844],[34.8225,-0.3269],[34.8512,-0.2989],[34.8771,-0.2847],[34.8724,-0.2507],[34.9102,-0.1692],[34.9423,-0.1436],[34.9718,-0.1424],[34.9646,-0.1074],[34.9837,-0.0843],[34.9417,-0.0915],[34.9423,-0.0713],[35.0062,-0.072],[35.0077,-0.0523],[35.0585,-0.0524],[35.0642,-0.0651],[35.0917,-0.0384],[35.1012,-0.0016],[35.15,-0.0357],[35.1782,-0.026],[35.2191,-0.037],[35.2265,-0.1052],[35.2961,-0.1739],[35.3247,-0.1752],[35.3425,-0.2381],[35.3194,-0.2478],[35.2667,-0.2356],[35.2185,-0.1833]]]]',43,7,'dhis',1),(83,'Kabondo Kasipul','JNvqpOnKfGR','602','[[[[34.3828,-0.0629],[34.2967,-0.1284],[34.2699,-0.2099],[34.2432,-0.2363],[34.2039,-0.24],[34.1979,-0.2127],[34.1824,-0.2114],[34.1911,-0.1879],[34.1425,-0.2082],[34.0873,-0.1448],[34.1157,-0.1191],[34.1303,-0.1289],[34.1512,-0.117],[34.1123,-0.1115],[34.1432,-0.0875],[34.1288,-0.0701],[34.1385,-0.0534],[34.108,-0.0756],[34.0746,-0.0698],[34.0939,-0.0884],[34.0836,-0.0821],[34.0655,-0.1154],[34.0613,-0.0713],[34.0309,-0.0821],[34.0273,-0.0688],[34.0328,-0.0784],[34.0635,-0.0309],[34.0435,-0.0339],[34.0368,-0.0591],[34.0225,-0.04],[34.0046,-0.0452],[34.0105,-0.0275],[34.0449,0.0072],[34.1093,0.0413],[34.1245,0.0165],[34.1529,0.0104],[34.1577,-0.0093],[34.2142,-0.0133],[34.2544,-0.0493],[34.3541,-0.0289],[34.3828,-0.0629]]],[[[33.9868,-0.1278],[34.0388,-0.1277],[34.0241,-0.1419],[33.9867,-0.1361],[33.9868,-0.1278]]]]',44,7,'dhis',1),(84,'Rarieda','XcRpb1xsM64','603','[[[[34.2432,-0.2363],[34.2699,-0.2099],[34.2967,-0.1284],[34.3828,-0.0629],[34.4154,-0.0756],[34.4391,-0.175],[34.4123,-0.1763],[34.4096,-0.1955],[34.4005,-0.1843],[34.3434,-0.1963],[34.3392,-0.2187],[34.3816,-0.232],[34.3995,-0.2875],[34.3112,-0.3743],[34.3055,-0.4026],[34.2824,-0.396],[34.3021,-0.368],[34.2552,-0.3282],[34.2656,-0.3059],[34.2452,-0.3021],[34.2684,-0.2644],[34.2432,-0.2363]]]]',42,7,'dhis',1),(85,'Rongo','fT37q3rXQ35','611','[[[[34.6398,-0.9715],[34.5907,-1.0215],[34.5972,-1.056],[34.5939,-1.075],[34.4496,-0.9947],[34.4019,-1.0104],[34.3552,-0.9828],[34.3334,-0.9487],[34.3397,-0.8822],[34.3862,-0.9049],[34.5118,-0.9164],[34.4631,-0.8678],[34.483,-0.7903],[34.5312,-0.7441],[34.5332,-0.71],[34.5589,-0.6688],[34.5852,-0.6538],[34.6343,-0.6656],[34.6388,-0.7092],[34.6253,-0.74],[34.6161,-0.9017],[34.6398,-0.9715]]]]',45,7,'dhis',1),(87,'Suba','HoRW5aISmid','608','[[[[34.3955,-0.4575],[34.3559,-0.5032],[34.2386,-0.5573],[34.248,-0.5904],[34.237,-0.5954],[34.2504,-0.6013],[34.231,-0.6371],[34.2484,-0.6381],[34.1909,-0.7022],[34.2179,-0.7277],[34.1955,-0.7404],[34.1978,-0.7551],[34.0822,-0.8057],[34.1064,-0.8084],[34.1497,-0.8558],[34.1859,-0.8551],[34.1347,-0.9304],[34.136,-0.9718],[34.1215,-0.9819],[34.1355,-1.0115],[34.078,-0.9795],[34.0789,-1.0016],[34.0388,-1.0028],[34.0507,-1.0332],[34.097,-1.0089],[34.104,-1.0282],[34.0899,-1.033],[34.0776,-1.0262],[34.0409,-1.0492],[34.0165,-1.0039],[33.9311,-1.0042],[33.9457,-0.9931],[33.9286,-0.537],[33.9867,-0.1361],[34.0241,-0.1419],[34.0388,-0.1277],[33.9868,-0.1278],[33.9513,-0.0267],[34.0105,-0.0275],[34.0046,-0.0452],[34.0225,-0.04],[34.0368,-0.0591],[34.0435,-0.0339],[34.0635,-0.0309],[34.0328,-0.0784],[34.0273,-0.0688],[34.0309,-0.0821],[34.0613,-0.0713],[34.0655,-0.1154],[34.0836,-0.0821],[34.0939,-0.0884],[34.0746,-0.0698],[34.108,-0.0756],[34.1385,-0.0534],[34.1288,-0.0701],[34.1432,-0.0875],[34.1123,-0.1115],[34.1512,-0.117],[34.1303,-0.1289],[34.1157,-0.1191],[34.0873,-0.1448],[34.1425,-0.2082],[34.1911,-0.1879],[34.1824,-0.2114],[34.1979,-0.2127],[34.2039,-0.24],[34.2432,-0.2363],[34.2684,-0.2644],[34.2452,-0.3021],[34.2656,-0.3059],[34.2552,-0.3282],[34.3021,-0.368],[34.2824,-0.396],[34.3055,-0.4026],[34.3112,-0.3743],[34.3995,-0.2875],[34.3816,-0.232],[34.3392,-0.2187],[34.3434,-0.1963],[34.4005,-0.1843],[34.4096,-0.1955],[34.4123,-0.1763],[34.4391,-0.175],[34.4573,-0.1652],[34.5058,-0.196],[34.5559,-0.1569],[34.5555,-0.1408],[34.5812,-0.1445],[34.6243,-0.1512],[34.6474,-0.1141],[34.6919,-0.0915],[34.7262,-0.1045],[34.7492,-0.0863],[34.7313,-0.1421],[34.7436,-0.1635],[34.7801,-0.1758],[34.8221,-0.2681],[34.8458,-0.2705],[34.8512,-0.2989],[34.8225,-0.3269],[34.788,-0.2844],[34.7557,-0.2925],[34.763,-0.3154],[34.7525,-0.2937],[34.7632,-0.3368],[34.7559,-0.3529],[34.7306,-0.3566],[34.5956,-0.3485],[34.5505,-0.3281],[34.4596,-0.3543],[34.4507,-0.4151],[34.5062,-0.4695],[34.4841,-0.5111],[34.4203,-0.5383],[34.4351,-0.4974],[34.4183,-0.4982],[34.3955,-0.4575]]]]',44,7,'dhis',1),(88,'Baringo Central','k7Rj54u6dMx','713','[[[[35.7894,0.2275],[35.7222,0.2142],[35.7094,0.2604],[35.7205,0.3562],[35.6614,0.3901],[35.6304,0.506],[35.6025,0.5349],[35.6106,0.5742],[35.6781,0.5601],[35.7719,0.5795],[35.7837,0.6007],[35.8618,0.6006],[35.8972,0.5705],[36.0187,0.665],[36.1176,0.6685],[36.1527,0.6868],[36.1796,0.7276],[36.1987,0.7014],[36.2745,0.7204],[36.2832,0.6517],[36.2722,0.634],[36.289,0.5728],[36.2268,0.4267],[36.2465,0.4132],[36.2553,0.3699],[36.2351,0.306],[36.2702,0.265],[36.2075,0.2557],[36.178,0.3164],[35.9843,0.3093],[35.989,0.4163],[35.9249,0.4005],[35.9185,0.3023],[35.8969,0.282],[35.8784,0.2844],[35.8774,0.2493],[35.843,0.1872],[35.7894,0.2275]]]]',31,8,'dhis',1),(89,'Baringo North','bqtTmWcikTN','714','[[[[36.0187,0.665],[35.8972,0.5705],[35.8618,0.6006],[35.7837,0.6007],[35.7719,0.5795],[35.6781,0.5601],[35.6106,0.5742],[35.5963,0.6229],[35.6063,0.6758],[35.6357,0.7032],[35.6213,0.7415],[35.642,0.827],[35.6214,0.8715],[35.6341,0.9884],[35.687,0.9513],[35.7693,0.9978],[35.8978,0.935],[35.9018,0.8992],[35.9403,0.8338],[35.974,0.8404],[35.9623,0.801],[36.0074,0.7963],[36.0254,0.7696],[36.0187,0.665]]]]',31,8,'dhis',1),(90,'Bomet Central','m9gdonbVXjZ','743','[[[[35.2416,-1.0428],[35.0822,-0.9107],[35.0169,-0.895],[35.0117,-0.8857],[35.0244,-0.8775],[35.0199,-0.8535],[35.0452,-0.8568],[35.0603,-0.8394],[35.0776,-0.8602],[35.085,-0.8461],[35.14,-0.881],[35.1364,-0.8432],[35.1682,-0.8421],[35.1727,-0.7924],[35.2021,-0.7934],[35.2316,-0.8191],[35.2626,-0.8047],[35.2973,-0.8306],[35.3345,-0.8141],[35.344,-0.7904],[35.276,-0.7242],[35.2428,-0.7479],[35.2413,-0.6948],[35.262,-0.6801],[35.2919,-0.6551],[35.3875,-0.6594],[35.3978,-0.6479],[35.4206,-0.7293],[35.482,-0.778],[35.5395,-0.7981],[35.434,-0.895],[35.4085,-0.9571],[35.3602,-0.9812],[35.3467,-0.9738],[35.2416,-1.0428]]]]',37,8,'dhis',1),(91,'Buret','wt8cPHWfkfu','741','[[[[35.5058,-0.4564],[35.5843,-0.5934],[35.3978,-0.6479],[35.3875,-0.6594],[35.2919,-0.6551],[35.262,-0.6801],[35.2241,-0.6025],[35.2041,-0.6148],[35.1952,-0.6047],[35.15,-0.588],[35.1199,-0.6084],[35.0849,-0.5941],[35.0662,-0.6063],[35.0521,-0.5759],[35.0518,-0.4993],[35.1216,-0.4602],[35.1573,-0.4654],[35.1999,-0.4841],[35.2196,-0.4745],[35.2079,-0.4647],[35.2319,-0.4228],[35.3074,-0.4263],[35.3321,-0.4071],[35.4106,-0.4049],[35.4523,-0.3737],[35.5058,-0.4564]]]]',36,8,'dhis',1),(92,'tiaty','Mk4bMOSMRTB','715','[[[[36.2832,0.6517],[36.2745,0.7204],[36.1987,0.7014],[36.1796,0.7276],[36.1527,0.6868],[36.1176,0.6685],[36.0187,0.665],[36.0254,0.7696],[36.0074,0.7963],[35.9623,0.801],[35.974,0.8404],[35.9403,0.8338],[35.9018,0.8992],[35.8978,0.935],[35.7693,0.9978],[35.687,0.9513],[35.6341,0.9884],[35.6356,1.0281],[35.665,1.0477],[35.7028,1.1593],[35.6888,1.3251],[35.6891,1.3907],[35.7406,1.5023],[35.7291,1.5157],[35.7843,1.5848],[35.7906,1.6352],[35.773,1.678],[35.8097,1.651],[36.0999,1.1663],[36.176,1.1698],[36.3197,0.9856],[36.3414,0.9886],[36.3827,0.9554],[36.3911,0.9148],[36.4757,0.8634],[36.3917,0.7212],[36.3381,0.6644],[36.2832,0.6517]]]]',31,8,'dhis',1),(95,'Kajiado Central','SZapM1R0Kti','1194','',35,8,'dhis',1),(96,'keiyo north',NULL,NULL,NULL,29,8,NULL,1),(97,'ainamoi',NULL,NULL,NULL,36,8,NULL,1),(98,'Kipkelion East',NULL,NULL,NULL,36,8,NULL,1),(99,'Koibatek','Yl9UDBnDvvW','716','[[[[35.7894,0.2275],[35.843,0.1872],[35.8774,0.2493],[35.8784,0.2844],[35.8969,0.282],[35.9185,0.3023],[35.9249,0.4005],[35.989,0.4163],[35.9843,0.3093],[36.178,0.3164],[36.2075,0.2557],[36.1991,0.234],[36.1844,0.2272],[36.1981,0.2034],[36.1487,0.1901],[36.1364,0.0779],[36.1109,0.059],[36.1123,-0.0010],[36.0972,-0.0115],[36.0612,0.0005],[36.0096,0.0346],[36.002,0.0646],[35.9709,0.0613],[35.9596,0.0952],[35.9462,0.096],[35.9372,0.0707],[35.9826,0.0182],[35.9697,-0.016],[35.9235,-0.0814],[35.8782,-0.0414],[35.8264,-0.1144],[35.814,-0.0994],[35.7982,-0.1097],[35.7872,-0.1846],[35.7222,-0.2019],[35.7262,-0.1538],[35.687,-0.095],[35.6884,-0.0738],[35.6627,-0.075],[35.6744,-0.0514],[35.6471,-0.051],[35.6413,-0.0356],[35.5472,-0.0082],[35.5247,0.0151],[35.5297,0.0436],[35.5459,0.0461],[35.5449,0.0849],[35.5796,0.0656],[35.5801,0.1153],[35.5939,0.1697],[35.6086,0.17],[35.6968,0.1797],[35.7222,0.2142],[35.7894,0.2275]]]]',31,8,'dhis',1),(100,'Kwanza','ABy8CNqf2e7\r\n','712\r\n',NULL,27,8,NULL,1),(101,'Laikipia East','pF6qPMIlHte','728','[[[[37.2402,0.2893],[37.2704,0.2837],[37.3136,0.3028],[37.3731,0.2797],[37.3393,0.1837],[37.3108,0.1784],[37.2805,0.1311],[37.2397,0.1139],[37.2255,0.0795],[37.0918,0.0276],[37.1162,-0.0192],[37.077,0.0185],[37.0243,-0.0503],[36.9787,-0.0723],[36.9855,-0.1347],[37.0257,-0.1652],[36.987,-0.2932],[36.8698,-0.2471],[36.8583,-0.2547],[36.8406,-0.1899],[36.8687,-0.1665],[36.8543,-0.1348],[36.8307,-0.1275],[36.828,-0.0958],[36.7616,-0.1047],[36.6534,-0.1485],[36.6333,-0.1065],[36.5714,-0.1035],[36.5511,-0.068],[36.5819,-0.0223],[36.6453,-0.0116],[36.6199,0.0119],[36.6673,0.0696],[36.715,0.0061],[36.7622,0.0742],[36.7528,0.0909],[36.7943,0.1042],[36.8944,0.1026],[36.9074,0.0158],[36.9686,-0.0078],[36.993,0.0225],[36.9685,0.0675],[37.0414,0.0789],[37.0039,0.2142],[36.9227,0.2986],[36.9202,0.3836],[36.8955,0.4392],[36.9645,0.4764],[37.0143,0.468],[37.054,0.3701],[37.2402,0.2893]]]]',32,8,'dhis',1),(102,'Laikipia North','RJyUfi5BQUm','727','[[[[37.3888,0.2957],[37.3731,0.2797],[37.3136,0.3028],[37.2704,0.2837],[37.2402,0.2893],[37.054,0.3701],[37.0143,0.468],[36.9645,0.4764],[36.8955,0.4392],[36.9202,0.3836],[36.9227,0.2986],[37.0039,0.2142],[37.0414,0.0789],[36.9685,0.0675],[36.993,0.0225],[36.9686,-0.0078],[36.9074,0.0158],[36.8944,0.1026],[36.7943,0.1042],[36.8073,0.1084],[36.8025,0.1383],[36.7208,0.145],[36.6951,0.1909],[36.6946,0.2473],[36.7075,0.2797],[36.7803,0.3265],[36.7795,0.4429],[36.8234,0.5121],[36.846,0.5072],[36.8617,0.5307],[36.8591,0.5768],[37.367,0.5154],[37.3509,0.4193],[37.3925,0.3569],[37.3888,0.2957]]]]',32,8,'dhis',1),(103,'Laikipia West','pXbWrnFPpKb','729','[[[[36.3868,0.0351],[36.2815,0.0115],[36.2591,-0.0199],[36.2504,0.0548],[36.2829,0.0963],[36.28,0.1236],[36.1991,0.234],[36.2075,0.2557],[36.2702,0.265],[36.2351,0.306],[36.2553,0.3699],[36.2465,0.4132],[36.2268,0.4267],[36.289,0.5728],[36.2722,0.634],[36.2832,0.6517],[36.3381,0.6644],[36.3917,0.7212],[36.4757,0.8634],[36.492,0.8501],[36.4916,0.8164],[36.7035,0.8168],[36.7915,0.8727],[36.8135,0.8634],[36.8735,0.7371],[36.9225,0.7396],[36.9054,0.6367],[36.8591,0.5768],[36.8617,0.5307],[36.846,0.5072],[36.8234,0.5121],[36.7795,0.4429],[36.7803,0.3265],[36.7075,0.2797],[36.6946,0.2473],[36.6951,0.1909],[36.7208,0.145],[36.8025,0.1383],[36.8073,0.1084],[36.7943,0.1042],[36.7528,0.0909],[36.7622,0.0742],[36.715,0.0061],[36.6673,0.0696],[36.6199,0.0119],[36.5959,0.0175],[36.5769,0.0707],[36.5218,0.0512],[36.4837,0.1133],[36.4008,0.0578],[36.4248,0.0455],[36.3868,0.0351]]]]',32,8,'dhis',1),(104,'Loitokitok','eyADpAXM834','738','[[[[37.9458,-2.7836],[37.9254,-2.8747],[37.9044,-2.8935],[37.8787,-3.0856],[37.8607,-3.0889],[37.8564,-3.1853],[37.6977,-3.1881],[37.6767,-3.0708],[37.6161,-3.0268],[37.6299,-3.0233],[37.4917,-2.9316],[37.4818,-2.9433],[37.4659,-2.9353],[37.4716,-2.9203],[37.4578,-2.9111],[37.4124,-2.8881],[37.4003,-2.8998],[37.3132,-2.8525],[37.3406,-2.8474],[36.9062,-2.6093],[36.9158,-2.5723],[37,-2.4894],[37.1034,-2.2505],[37.1682,-2.1987],[37.2046,-2.2172],[37.2811,-2.2186],[37.3794,-2.3451],[37.4569,-2.4113],[37.5159,-2.4136],[37.5778,-2.3591],[37.5741,-2.3277],[37.6031,-2.3177],[37.8457,-2.603],[37.9038,-2.7061],[37.9317,-2.7185],[37.93,-2.761],[37.9458,-2.7836]]]]',35,8,'dhis',1),(105,'Marakwet East','EZraJgLdRLX','720','',29,8,'dhis',1),(106,'Molo','RJ4LGJiSHFg\r\n','733\r\n',NULL,33,8,NULL,1),(107,'Naivasha','yZJJPoSGhY6\r\n','732\r\n',NULL,33,8,NULL,1),(109,'Nakuru North','nwh9bXKykiS\r\n','731\r\n',NULL,33,8,NULL,1),(110,'emgwen',NULL,NULL,NULL,30,8,NULL,1),(111,'nandi east',NULL,NULL,NULL,30,8,NULL,1),(112,'mosop',NULL,NULL,NULL,30,8,NULL,1),(113,'aldai',NULL,NULL,NULL,30,8,NULL,1),(114,'Narok North','fNROL0qm8De','734','[[[[36.0654,-1.4808],[36.0127,-1.4212],[36.0121,-1.4019],[35.9278,-1.4177],[35.9132,-1.3359],[35.9457,-1.3125],[35.9376,-1.2935],[35.9018,-1.2329],[35.8758,-1.2219],[35.8601,-1.144],[35.8301,-1.1471],[35.8026,-1.1287],[35.7429,-1.0363],[35.7341,-0.8825],[35.7446,-0.8124],[35.7311,-0.7583],[35.6647,-0.7541],[35.6656,-0.725],[35.7171,-0.6729],[35.7608,-0.6575],[35.7742,-0.6192],[35.823,-0.5774],[35.806,-0.5603],[35.8444,-0.5143],[35.8296,-0.4904],[35.9072,-0.5522],[35.9406,-0.5587],[35.9786,-0.6307],[35.9509,-0.6659],[35.9105,-0.6378],[35.8722,-0.6477],[35.9252,-0.7135],[35.942,-0.7203],[36.0044,-0.6728],[36.0227,-0.6852],[36.0668,-0.6616],[36.0939,-0.6448],[36.0935,-0.6761],[36.1853,-0.7794],[36.1813,-0.8204],[36.1584,-0.8433],[36.1808,-0.9224],[36.2004,-0.9404],[36.2578,-0.922],[36.331,-1.0649],[36.3423,-1.1888],[36.0654,-1.4808]]]]',34,8,'dhis',1),(115,'Narok South','bnYzgzYe2Z7','735','[[[[35.6299,-0.7242],[35.5968,-0.7551],[35.6647,-0.7541],[35.7311,-0.7583],[35.7446,-0.8124],[35.7341,-0.8825],[35.7429,-1.0363],[35.8026,-1.1287],[35.8301,-1.1471],[35.8601,-1.144],[35.8758,-1.2219],[35.9018,-1.2329],[35.9376,-1.2935],[35.9457,-1.3125],[35.9132,-1.3359],[35.9278,-1.4177],[36.0121,-1.4019],[36.0127,-1.4212],[36.0654,-1.4808],[36.0462,-1.5044],[36.0792,-1.5942],[36.0455,-1.6624],[36.0588,-1.7162],[36.0415,-1.729],[36.0444,-1.7516],[36.0113,-1.8155],[36.0382,-1.8435],[36.0459,-1.8818],[36.0223,-1.912],[36.0378,-1.9337],[36.021,-2.0962],[36.0013,-2.0967],[35.3168,-1.7116],[35.3177,-1.7288],[35.0227,-1.5468],[35.0285,-1.4728],[35.0582,-1.4394],[35.0144,-1.3863],[34.9894,-1.3808],[34.988,-1.3439],[35.0362,-1.3107],[35.0334,-1.236],[35.0973,-1.1491],[35.1574,-1.1371],[35.1768,-1.0869],[35.2131,-1.0993],[35.2416,-1.0428],[35.3467,-0.9738],[35.3602,-0.9812],[35.4085,-0.9571],[35.434,-0.895],[35.5395,-0.7981],[35.482,-0.778],[35.4206,-0.7293],[35.3978,-0.6479],[35.5843,-0.5934],[35.6012,-0.6719],[35.6421,-0.7057],[35.6299,-0.7242]]]]',34,8,'dhis',1),(116,'Pokot Central','SCbMzaOeTuR','706','[[[[35.6164,1.2913],[35.5361,1.2972],[35.3258,1.1256],[35.1939,1.1874],[35.2375,1.2777],[35.2964,1.2989],[35.306,1.3159],[35.2475,1.3725],[35.2897,1.4749],[35.3602,1.5023],[35.3685,1.5234],[35.3855,1.6032],[35.3775,1.6895],[35.3914,1.7187],[35.3671,1.7358],[35.34,1.8112],[35.3809,1.9252],[35.4681,1.8501],[35.4716,1.8112],[35.4958,1.7763],[35.6439,1.7515],[35.7339,1.7121],[35.773,1.678],[35.7906,1.6352],[35.7843,1.5848],[35.7291,1.5157],[35.7406,1.5023],[35.6891,1.3907],[35.6888,1.3251],[35.6164,1.2913]]]]',25,8,'dhis',1),(117,'Pokot North','YXpHG1Ez8V2','705','[[[[34.9549,2.4698],[34.9663,2.4786],[35.0475,2.4528],[35.0329,2.5485],[35.0729,2.4758],[35.0493,2.3362],[35.084,2.2938],[35.2566,2.519],[35.2887,2.4452],[35.3009,2.406],[35.2686,2.3504],[35.3101,2.2661],[35.3323,2.1646],[35.269,2.1415],[35.2602,2.1497],[35.2216,2.0555],[35.1327,2.006],[35.1112,1.952],[35.2166,1.8284],[35.2052,1.8102],[35.1573,1.7962],[35.139,1.7324],[35.1169,1.7204],[35.132,1.6327],[35.0688,1.5337],[35.0476,1.5274],[35.0001,1.5502],[34.9521,1.5909],[34.9913,1.6646],[35.0002,1.7588],[35.0001,1.9626],[34.9845,1.9853],[34.9143,2.4031],[34.9549,2.4698]]]]',25,8,'dhis',1),(118,'Samburu Central','EmQRGVtvWy3','707','[[[[36.9576,0.7489],[36.9381,0.759],[36.9225,0.7396],[36.8735,0.7371],[36.8135,0.8634],[36.7915,0.8727],[36.7035,0.8168],[36.4916,0.8164],[36.492,0.8501],[36.4757,0.8634],[36.3911,0.9148],[36.3827,0.9554],[36.4275,0.9482],[36.4629,0.9924],[36.444,1.0535],[36.4396,1.1731],[36.3921,1.1748],[36.3954,1.2182],[36.4176,1.2389],[36.3892,1.2629],[36.4032,1.2738],[36.4422,1.2506],[36.4533,1.2576],[36.4352,1.3127],[36.4206,1.3027],[36.3981,1.3167],[36.4666,1.3877],[36.5197,1.4323],[36.5266,1.4612],[36.5388,1.4219],[36.641,1.3955],[36.6803,1.4046],[36.7295,1.4465],[36.8139,1.4366],[36.8519,1.4703],[36.8674,1.344],[36.9672,1.19],[37.0595,1.1222],[37.0223,1.0275],[36.9969,0.8495],[36.9576,0.7489]]]]',26,8,'dhis',1),(119,'Samburu East ','ldZ10N9unC9','708','[[[[36.9576,0.7489],[36.9969,0.8495],[37.0223,1.0275],[37.0595,1.1222],[36.9672,1.19],[36.8674,1.344],[36.9852,1.4906],[37.1383,1.5234],[37.1883,1.5567],[37.2632,1.5649],[37.373,1.6339],[37.4001,1.6644],[37.3624,1.7292],[37.3951,1.7104],[37.5969,1.346],[37.6747,1.3748],[37.8646,1.4084],[37.8974,1.4465],[37.9718,1.3832],[37.9696,1.2599],[37.9497,1.2443],[37.9498,1.1912],[38.0062,1.1166],[37.9631,1.0923],[37.8375,1.0793],[37.7029,1.0361],[37.6446,0.9746],[37.5754,0.9556],[37.554,0.7797],[37.4869,0.807],[37.4351,0.8652],[37.3227,0.8815],[37.2581,0.8304],[37.2512,0.7906],[37.2706,0.7546],[37.2572,0.7682],[37.2225,0.743],[37.1806,0.7438],[37.0988,0.7916],[37.0702,0.7713],[36.9576,0.7489]]]]',26,8,'dhis',1),(120,'Samburu North ','E2DGjZRlwbY','709','[[[[37.373,1.6339],[37.2632,1.5649],[37.1883,1.5567],[37.1383,1.5234],[36.9852,1.4906],[36.8674,1.344],[36.8519,1.4703],[36.8139,1.4366],[36.7295,1.4465],[36.6803,1.4046],[36.641,1.3955],[36.5388,1.4219],[36.5266,1.4612],[36.5197,1.4323],[36.4666,1.3877],[36.4518,1.4114],[36.3975,1.4376],[36.3598,1.4388],[36.3221,1.4672],[36.2885,1.4712],[36.3046,1.5415],[36.3614,1.5755],[36.362,1.5965],[36.3764,1.5929],[36.3874,1.5328],[36.4438,1.6257],[36.4669,1.6299],[36.529,1.7672],[36.5141,1.7721],[36.5313,1.8139],[36.511,1.8663],[36.5381,1.9088],[36.532,1.9679],[36.5662,2.0562],[36.5671,2.1082],[36.6096,2.1669],[36.7038,2.2121],[36.7247,2.3106],[36.6112,2.3691],[36.6032,2.3927],[36.6255,2.4219],[36.6452,2.4051],[36.6926,2.4655],[36.7153,2.4434],[36.7358,2.4922],[36.7759,2.5109],[36.8558,2.2835],[36.9269,2.1589],[36.9461,2.0374],[37.0174,2.0003],[37.1523,1.9782],[37.1566,1.9241],[37.214,1.9035],[37.2255,1.8761],[37.2878,1.8299],[37.3033,1.7773],[37.3624,1.7292],[37.4001,1.6644],[37.373,1.6339]]]]',26,8,'dhis',1),(121,'Sotik','KyuSYunELJI','742','',37,8,'dhis',1),(122,'Tinderet','NPYRMdqrK6L','726','[[[[35.4026,0.0812],[35.4355,0.0181],[35.4123,0.0032],[35.4055,-0.0246],[35.4243,-0.0794],[35.3717,-0.1112],[35.305,-0.0853],[35.2265,-0.1052],[35.2191,-0.037],[35.1782,-0.026],[35.1957,-0.0093],[35.1985,0.0418],[35.2734,0.0753],[35.3009,0.0529],[35.3565,0.0516],[35.4026,0.0812]]]]',30,8,'dhis',1),(123,'Transmara East','PGTkGnIAZuy','736','',34,8,'dhis',1),(126,'Turkana Central','zd8rhYqGowE','701','[[[[35.3786,3.5403],[35.4516,3.5282],[35.4586,3.5688],[35.5201,3.5985],[35.5963,3.6065],[35.6429,3.5914],[35.6526,3.6261],[35.7548,3.6312],[35.7867,3.6568],[35.8022,3.7],[35.8434,3.7177],[35.8441,3.6222],[35.9112,3.5527],[35.9028,3.5189],[35.9228,3.4952],[35.9382,3.5132],[35.9302,3.5757],[35.9447,3.5554],[35.9463,3.3559],[35.997,3.3272],[36.0283,3.2638],[36.0507,3.2557],[36.1003,3.2079],[36.142,3.2],[36.1446,3.0942],[36.1289,3.0197],[36.1462,2.9633],[36.2328,2.9598],[36.2692,2.9408],[36.296,2.9035],[36.384,2.8467],[36.3957,2.8169],[36.3651,2.8133],[36.3317,2.7237],[36.3451,2.708],[36.3297,2.6472],[36.3383,2.5869],[36.2352,2.541],[36.1489,2.5466],[36.0706,2.5804],[36.0726,2.6703],[36.0471,2.6852],[36.0608,2.7126],[36.022,2.7491],[36.025,2.7795],[35.9927,2.8306],[35.9659,2.8419],[35.8651,2.7203],[35.8735,2.8272],[35.8494,2.8185],[35.8367,2.8309],[35.8023,2.9322],[35.7717,2.9491],[35.7539,2.9918],[35.7936,3.0894],[35.7894,3.1468],[35.8515,3.172],[35.8324,3.224],[35.7655,3.2578],[35.7392,3.2889],[35.7115,3.2831],[35.5491,3.3557],[35.5826,3.2777],[35.6127,3.2561],[35.6103,3.2103],[35.622,3.2104],[35.5716,3.1509],[35.5759,3.1353],[35.6266,3.0715],[35.6317,3.0277],[35.6644,3.0226],[35.5427,2.828],[35.4816,2.8467],[35.4701,2.7822],[35.4886,2.6993],[35.4828,2.637],[35.3758,2.7187],[35.3471,2.6967],[35.1867,2.6586],[35.1487,2.6956],[35.1396,2.6476],[35.0896,2.686],[35.102,2.7458],[35.0682,2.7138],[34.8658,2.7231],[34.8001,2.655],[34.7754,2.6981],[34.7834,2.7554],[34.7622,2.8212],[34.7018,2.878],[34.6924,2.8631],[34.6528,2.8679],[34.6393,2.907],[34.599,2.925],[34.5723,3.0917],[34.5458,3.1368],[34.4948,3.1416],[34.4558,3.1823],[34.4299,3.343],[34.4006,3.3709],[34.4016,3.4154],[34.4193,3.4337],[34.3889,3.4921],[34.4249,3.4921],[34.5186,3.4768],[34.5615,3.4852],[34.58,3.5048],[34.6444,3.4979],[34.7222,3.5336],[34.8278,3.5379],[34.8749,3.6024],[34.8846,3.5893],[34.8686,3.5603],[34.8711,3.4972],[35.0127,3.4886],[35.0127,3.3844],[35.0688,3.3502],[35.1484,3.3436],[35.1968,3.3704],[35.167,3.3956],[35.1456,3.5048],[35.1657,3.5861],[35.2121,3.6545],[35.3482,3.6197],[35.3786,3.5403]]]]',24,8,'dhis',1),(127,'Turkana North','mWpq607yRXh','702','[[[[36.1132,4.4558],[36.1099,3.6045],[36.1046,3.3674],[36.0507,3.2557],[36.0283,3.2638],[35.9970,3.3272],[35.9463,3.3559],[35.9447,3.5554],[35.9302,3.5757],[35.9382,3.5132],[35.9228,3.4952],[35.9028,3.5189],[35.9112,3.5527],[35.8441,3.6222],[35.8434,3.7177],[35.8022,3.7000],[35.7867,3.6568],[35.7548,3.6312],[35.6526,3.6261],[35.6429,3.5914],[35.5963,3.6065],[35.5201,3.5985],[35.4586,3.5688],[35.4516,3.5282],[35.3786,3.5403],[35.3482,3.6197],[35.2121,3.6545],[35.1657,3.5861],[35.1456,3.5048],[35.1670,3.3956],[35.1968,3.3704],[35.1484,3.3436],[35.0688,3.3502],[35.0127,3.3844],[35.0127,3.4886],[34.8711,3.4972],[34.8686,3.5603],[34.8846,3.5893],[34.8749,3.6024],[34.8278,3.5379],[34.7222,3.5336],[34.6444,3.4979],[34.5800,3.5048],[34.5615,3.4852],[34.5186,3.4768],[34.4249,3.4921],[34.4514,3.5175],[34.4633,3.6699],[34.4049,3.6930],[34.3651,3.7356],[34.3309,3.7334],[34.3080,3.7117],[34.2456,3.7842],[34.1708,3.7681],[34.1886,3.7955],[34.1531,3.8074],[34.1801,3.8319],[34.2260,3.8313],[34.2156,3.8812],[34.0884,3.8616],[34.0914,3.8856],[34.1200,3.9011],[34.1347,3.9617],[34.0600,4.0099],[34.0589,4.0280],[34.0876,4.0370],[34.0916,4.0617],[34.0495,4.1215],[34.0657,4.1444],[34.0473,4.1795],[34.0019,4.2213],[34.3785,4.6113],[34.4802,4.7268],[35.1572,4.9889],[35.2000,4.9540],[35.3495,5.0073],[35.3095,4.9061],[35.4773,4.9123],[35.4209,4.7692],[35.5075,4.6187],[35.9437,4.6338],[35.9632,4.6320],[35.9553,4.6051],[35.9817,4.5866],[35.9612,4.5663],[36.0557,4.4892],[36.0555,4.4695],[36.1132,4.4558]]]]',24,8,'dhis',1),(128,'Turkana South','iTw0sFjlqZ2','703','[[[[35.4828,2.637],[35.4886,2.6993],[35.4701,2.7822],[35.4816,2.8467],[35.5427,2.828],[35.6644,3.0226],[35.6317,3.0277],[35.6266,3.0715],[35.5759,3.1353],[35.5716,3.1509],[35.622,3.2104],[35.6103,3.2103],[35.6127,3.2561],[35.5826,3.2777],[35.5491,3.3557],[35.7115,3.2831],[35.7392,3.2889],[35.7655,3.2578],[35.8324,3.224],[35.8515,3.172],[35.7894,3.1468],[35.7936,3.0894],[35.7539,2.9918],[35.7717,2.9491],[35.8023,2.9322],[35.8367,2.8309],[35.8494,2.8185],[35.8735,2.8272],[35.8651,2.7203],[35.9659,2.8419],[35.9927,2.8306],[36.025,2.7795],[36.022,2.7491],[36.0608,2.7126],[36.0471,2.6852],[36.0726,2.6703],[36.0706,2.5804],[36.1489,2.5466],[36.2352,2.541],[36.3383,2.5869],[36.3297,2.6472],[36.3451,2.708],[36.3317,2.7237],[36.3651,2.8133],[36.3957,2.8169],[36.4373,2.7304],[36.4575,2.6386],[36.5468,2.5304],[36.541,2.4621],[36.5572,2.4109],[36.5966,2.4178],[36.6032,2.3927],[36.6112,2.3691],[36.7247,2.3106],[36.7038,2.2121],[36.6096,2.1669],[36.5671,2.1082],[36.5662,2.0562],[36.532,1.9679],[36.5381,1.9088],[36.511,1.8663],[36.5313,1.8139],[36.5141,1.7721],[36.529,1.7672],[36.4669,1.6299],[36.4438,1.6257],[36.3874,1.5328],[36.3764,1.5929],[36.362,1.5965],[36.3614,1.5755],[36.3046,1.5415],[36.2885,1.4712],[36.3221,1.4672],[36.3598,1.4388],[36.3975,1.4376],[36.4518,1.4114],[36.4666,1.3877],[36.3981,1.3167],[36.4206,1.3027],[36.4352,1.3127],[36.4533,1.2576],[36.4422,1.2506],[36.4032,1.2738],[36.3892,1.2629],[36.4176,1.2389],[36.3954,1.2182],[36.3921,1.1748],[36.4396,1.1731],[36.444,1.0535],[36.4629,0.9924],[36.4275,0.9482],[36.3827,0.9554],[36.3414,0.9886],[36.3197,0.9856],[36.176,1.1698],[36.0999,1.1663],[35.8097,1.651],[35.773,1.678],[35.7339,1.7121],[35.6439,1.7515],[35.4958,1.7763],[35.4716,1.8112],[35.4681,1.8501],[35.3809,1.9252],[35.3698,1.9371],[35.3375,1.9241],[35.3073,1.881],[35.3003,1.83],[35.255,1.8571],[35.2166,1.8284],[35.1112,1.952],[35.1327,2.006],[35.2216,2.0555],[35.2602,2.1497],[35.269,2.1415],[35.3323,2.1646],[35.3101,2.2661],[35.2686,2.3504],[35.3009,2.406],[35.2887,2.4452],[35.2566,2.519],[35.084,2.2938],[35.0493,2.3362],[35.0729,2.4758],[35.0329,2.5485],[35.0475,2.4528],[34.9663,2.4786],[34.9549,2.4698],[34.933,2.5161],[34.913,2.5169],[34.8938,2.5931],[34.8682,2.5708],[34.8001,2.655],[34.8658,2.7231],[35.0682,2.7138],[35.102,2.7458],[35.0896,2.686],[35.1396,2.6476],[35.1487,2.6956],[35.1867,2.6586],[35.3471,2.6967],[35.3758,2.7187],[35.4828,2.637]]]]',24,8,'dhis',1),(130,'West Pokot','ylWg6VvADJE','704','[[[[35.2375,1.2777],[35.1939,1.1874],[35.1453,1.202],[35.0902,1.1908],[35.0795,1.1734],[35.0375,1.1982],[35.0065,1.2582],[34.9029,1.2552],[34.9065,1.288],[34.8305,1.2703],[34.8291,1.3099],[34.7867,1.3664],[34.8064,1.3839],[34.7938,1.4138],[34.8442,1.4573],[34.8641,1.5285],[34.9521,1.5909],[35.0001,1.5502],[35.0476,1.5274],[35.0688,1.5337],[35.132,1.6327],[35.1169,1.7204],[35.139,1.7324],[35.1573,1.7962],[35.2052,1.8102],[35.2166,1.8284],[35.255,1.8571],[35.3003,1.83],[35.3073,1.881],[35.3375,1.9241],[35.3698,1.9371],[35.3809,1.9252],[35.34,1.8112],[35.3671,1.7358],[35.3914,1.7187],[35.3775,1.6895],[35.3855,1.6032],[35.3685,1.5234],[35.3602,1.5023],[35.2897,1.4749],[35.2475,1.3725],[35.306,1.3159],[35.2964,1.2989],[35.2375,1.2777]]]]',25,8,'dhis',1),(131,'Bungoma East',NULL,NULL,NULL,40,9,NULL,1),(132,'Bungoma North',NULL,NULL,NULL,40,9,NULL,1),(133,'Bungoma South',NULL,NULL,NULL,40,9,NULL,1),(134,'Bungoma West',NULL,NULL,NULL,40,9,NULL,1),(135,'Bunyala','zI6vnsXresW','819','[[[[34.0946,0.133],[34.0712,0.1201],[34.0449,0.0072],[34.0105,-0.0275],[33.9513,-0.0267],[33.9096,0.102],[33.9558,0.1695],[34.0582,0.163],[34.0946,0.133]]],[[[34.3695,0.6084],[34.3669,0.5628],[34.4092,0.5061],[34.3859,0.4933],[34.389,0.469],[34.3067,0.4482],[34.2921,0.4904],[34.3448,0.5478],[34.3417,0.5772],[34.3128,0.597],[34.3204,0.6154],[34.3695,0.6084]]]]',41,9,'dhis',1),(136,'matayos',NULL,NULL,NULL,41,9,NULL,1),(137,'Butere','K7mZpm8COh7','810','[[[[34.6777,0.1341],[34.5986,0.1244],[34.5545,0.095],[34.5418,0.1377],[34.5071,0.1186],[34.4969,0.1261],[34.493,0.1014],[34.4717,0.1033],[34.4551,0.1277],[34.4794,0.1363],[34.4773,0.155],[34.4264,0.1493],[34.4371,0.1672],[34.4243,0.1832],[34.4447,0.2078],[34.4802,0.2212],[34.4537,0.2719],[34.4763,0.312],[34.5111,0.2776],[34.6096,0.281],[34.603,0.1878],[34.6236,0.1882],[34.619,0.2049],[34.6351,0.1999],[34.6508,0.1698],[34.6738,0.1641],[34.6777,0.1341]]]]',38,9,'dhis',1),(138,'Emuhaya','Lpy789vqRC6','807','[[[[34.6717,0.08],[34.6611,0.057],[34.6427,0.0208],[34.612,0.0027],[34.5912,0.0064],[34.5826,-0.0319],[34.5639,-0.0419],[34.5622,-0.0183],[34.5333,-0.0138],[34.5583,0.0496],[34.5545,0.095],[34.5986,0.1244],[34.6777,0.1341],[34.6782,0.1277],[34.6717,0.08]]]]',39,9,'dhis',1),(139,'Hamisi','BXaq5PxSfz2','808','[[[[34.6611,0.057],[34.7179,0.0212],[34.7425,0.0655],[34.8083,0.0953],[34.8254,0.144],[34.8144,0.165],[34.8114,0.1845],[34.898,0.2093],[34.9122,0.1991],[34.9453,0.2192],[34.9068,0.1543],[34.8578,0.1214],[34.8589,0.0863],[34.8344,0.0326],[34.815,0.0356],[34.7642,0.0019],[34.7395,0.0065],[34.7469,-0.0182],[34.7239,-0.0028],[34.6874,-0.0232],[34.6811,-0.0126],[34.612,0.0027],[34.6427,0.0208],[34.6611,0.057]]]]',39,9,'dhis',1),(144,'Lugari','ZOdhgR19Akq','805','[[[[34.8975,0.6032],[34.8889,0.6036],[34.8207,0.582],[34.791,0.5267],[34.7643,0.5234],[34.754,0.5041],[34.74,0.4801],[34.6861,0.4874],[34.7662,0.5698],[34.8107,0.5897],[34.8017,0.6027],[34.8321,0.63],[34.8408,0.6683],[34.8648,0.6887],[34.9113,0.6939],[34.929,0.7436],[34.9486,0.7559],[35.0242,0.7466],[35.0608,0.7659],[35.0619,0.7994],[35.0275,0.8288],[35.0127,0.8672],[35.0172,0.8921],[35.0482,0.9043],[35.099,0.8818],[35.1123,0.8894],[35.1234,0.8307],[35.1478,0.828],[35.1564,0.6611],[35.0867,0.6307],[35.0415,0.6393],[35.0274,0.6163],[35.0017,0.6377],[34.923,0.5912],[34.8975,0.6032]]]]',38,9,'dhis',1),(145,'Mt Elgon','ZCYATXdLsL1','815','[[[[34.7968,0.8567],[34.7866,0.8484],[34.7774,0.8568],[34.7283,0.8367],[34.6779,0.8031],[34.6435,0.82],[34.6431,0.7976],[34.6378,0.8024],[34.5757,0.7793],[34.5689,0.7997],[34.5265,0.795],[34.5098,0.7685],[34.4446,0.8108],[34.4139,0.8114],[34.4056,0.8287],[34.4461,0.8635],[34.4504,0.9003],[34.4791,0.9376],[34.5025,1.0706],[34.5265,1.107],[34.5745,1.1023],[34.5847,1.1519],[34.6287,1.0996],[34.664,1.0865],[34.6521,1.0595],[34.6775,1.0268],[34.7423,0.9403],[34.8001,0.9135],[34.7883,0.8962],[34.7968,0.8567]]]]',40,9,'dhis',1),(146,'Mumias East','FBteTV1eqB6','809','[[[[34.5864,0.4273],[34.5777,0.3909],[34.6026,0.3856],[34.619,0.3452],[34.6408,0.3527],[34.6507,0.3378],[34.6096,0.281],[34.5111,0.2776],[34.4763,0.312],[34.4537,0.2719],[34.4802,0.2212],[34.4447,0.2078],[34.4309,0.2159],[34.3835,0.1809],[34.3925,0.2851],[34.4143,0.2991],[34.4146,0.3604],[34.4578,0.4116],[34.4521,0.4698],[34.485,0.483],[34.4969,0.4599],[34.5284,0.4466],[34.551,0.4707],[34.5787,0.4557],[34.5864,0.4273]]]]',38,9,'dhis',1),(147,'Samia','NHRktMsAkO1','818','[[[[34.1611,0.3013],[34.1146,0.2408],[34.1031,0.1867],[34.1123,0.1441],[34.1013,0.1253],[34.0946,0.133],[34.0582,0.163],[33.9558,0.1695],[34.042,0.2783],[34.0562,0.3238],[34.081,0.3315],[34.1023,0.3634],[34.1277,0.3612],[34.1771,0.3155],[34.1611,0.3013]]]]',41,9,'dhis',1),(148,'Teso North','GpEIlwz3FvT','817','',41,9,'dhis',1),(149,'Vihiga','OOF3UX4yOt7','601647','[36.86299,-1.28891]',39,9,'dhis',1),(150,'Nyatike','D2lsuEzZAJP','627','',45,7,'dhis',1),(151,'NDHIWA','i2Y2fyNoFyZ','624','',44,7,'dhis',1),(155,'Matungu','ssbO49f0iLN','1212','',38,9,'dhis',1),(157,'Ugenya','InECuIlzJGx','622','',42,7,'dhis',1),(158,'Uriri','fCInDXluNhx','628','',45,7,'dhis',1),(159,'Athi River','BxfsSc6Svrc','1087','',17,3,'dhis',1),(160,'Awendo','ka9Uv3Ckcbd','1262','',45,7,'dhis',1),(162,'Balambala','FGBNPr91pXH','1028','',8,6,'dhis',1),(163,'Banisa','hCvlJNjyZna','1041','',10,6,'dhis',1),(164,'sigowet/soin','YnIAWg1T4AY','1199','',36,8,'dhis',1),(165,'Bumula','jkQZEow83MX','1225','',40,9,'dhis',1),(167,'Bungoma Central',NULL,NULL,NULL,40,9,NULL,1),(168,'Bura','yWPcTwGwQ2B','1015','',5,2,'dhis',1),(169,'Butula','RIBiZFJxB1K','1232','',41,9,'dhis',1),(170,'Buuri','xN5aPo4ZOIt','429','',13,3,'dhis',1),(171,'Changamwe',NULL,NULL,NULL,2,2,NULL,1),(173,'Chepalungu','PUhMyfDD2xp','1205','',37,8,'dhis',1),(174,'Dadaab','EW4Jw4dVWBt','1026','',8,6,'dhis',1),(175,'dagoretti north','CcTr4bcVGAG','','',1,5,'dhis',1),(177,'Eldas','x6Z1sBeiyqQ','1033','',9,6,'dhis',1),(178,'Embakasi Central','XvpLXU47BKs','','',1,5,'dhis',1),(181,'Galole','A4SNYCxrrnv','309','[[[[40.1721,-1.8896],[40.0572,-1.9048],[40.0271,-1.7987],[39.7994,-1.7893],[39.7683,-1.7947],[39.7697,-1.8177],[39.3241,-1.8075],[39.2105,-1.929],[39.1017,-1.982],[38.9962,-1.919],[38.945,-1.7056],[38.9834,-1.6739],[38.9754,-1.5419],[38.9517,-1.0793],[38.8933,-0.9337],[38.8119,-0.76],[38.4143,-0.0804],[38.406,-0.0601],[38.4425,-0.0776],[38.558,-0.015],[38.6272,-0.046],[38.8997,-0.0669],[38.925,-0.1011],[39.0644,-0.0566],[39.1601,-0.1392],[39.1771,-0.1268],[39.1655,-0.1107],[39.2362,-0.115],[39.2369,-0.1425],[39.261,-0.1476],[39.2758,-0.1431],[39.278,-0.117],[39.3112,-0.1148],[39.3966,-0.1661],[39.435,-0.1719],[39.6037,-0.3255],[39.5864,-0.3425],[39.6024,-0.3555],[39.6415,-0.5021],[39.6709,-0.5472],[39.7028,-0.5377],[39.7265,-0.5639],[39.7086,-0.591],[39.7716,-0.6151],[39.7866,-0.6444],[39.8087,-0.6399],[39.8214,-0.6652],[39.9165,-0.9584],[39.9002,-0.9672],[39.9053,-1.0132],[39.9253,-1.0256],[39.9833,-1.1317],[40.0365,-1.2601],[40.0306,-1.3194],[40.0599,-1.4196],[40.0491,-1.424],[40.0636,-1.5001],[40.0856,-1.5094],[40.138,-1.599],[40.153,-1.7266],[40.1414,-1.7821],[40.1721,-1.8896]]]]',5,2,'dhis',1),(182,'Ganze','x7qUMtZZvo9','306','',4,2,'dhis',1),(183,'Gatanga','Z7ALMtFNfeZ','229','',22,1,'dhis',1),(184,'Gatundu North','HEsM6W2ImQR','1140','',23,1,'dhis',1),(185,'Gem','PKeFksHlJkB','1240','',42,7,'dhis',1),(186,'Gilgil','hBU8B1KI12P','1187','',33,8,'dhis',1),(187,'Githunguri',NULL,NULL,NULL,23,1,NULL,1),(189,'Igembe South','PKeFksHlJkB','1240','',13,3,'dhis',1),(192,'Kabete','lb5LzWiUX8Y\r\n',NULL,NULL,23,1,NULL,1),(194,'Kajiado North','BLz1HkvvMkA','737','[[[[37.3661,-2.0208],[37.6069,-2.1593],[37.7009,-2.1705],[37.7154,-2.1902],[37.6783,-2.2352],[37.6659,-2.2943],[37.6031,-2.3177],[37.5741,-2.3277],[37.5778,-2.3591],[37.5159,-2.4136],[37.4569,-2.4113],[37.3794,-2.3451],[37.2811,-2.2186],[37.2046,-2.2172],[37.1682,-2.1987],[37.1034,-2.2505],[37,-2.4894],[36.9158,-2.5723],[36.9062,-2.6093],[36.1065,-2.1551],[36.101,-2.1857],[35.9956,-2.1289],[36.0013,-2.0967],[36.021,-2.0962],[36.0378,-1.9337],[36.0223,-1.912],[36.0459,-1.8818],[36.0382,-1.8435],[36.0113,-1.8155],[36.0444,-1.7516],[36.0415,-1.729],[36.0588,-1.7162],[36.0455,-1.6624],[36.0792,-1.5942],[36.0462,-1.5044],[36.0654,-1.4808],[36.3423,-1.1888],[36.331,-1.0649],[36.4814,-1.132],[36.5311,-1.1635],[36.5263,-1.1815],[36.4854,-1.284],[36.6536,-1.318],[36.7107,-1.3792],[36.7635,-1.3977],[36.8257,-1.3936],[36.888,-1.428],[36.8808,-1.4979],[36.9301,-1.4663],[36.9712,-1.4862],[36.9598,-1.5558],[37.1179,-1.7512],[37.1438,-1.752],[37.1569,-1.7918],[37.1443,-1.8469],[37.1736,-1.925],[37.23,-1.9422],[37.2946,-2.0092],[37.3661,-2.0208]]]]',35,8,'dhis',1),(196,'Kandara','gwYTo0wITYX','224','',22,1,'dhis',1),(198,'Kasarani','FoqzDgIByL6\r\n','1282\r\n',NULL,1,5,NULL,1),(199,'Kathiani','iCey76HYgLP','437','',17,3,'dhis',1),(202,'Keiyo South','SOEG546PqbA','1163','',29,8,'dhis',1),(203,'bomachoge borabu','ntRK47D5dYL\r\n','632\r\n',NULL,46,7,NULL,1),(204,'Khwisero','UhQS2Mv0PCK','1214','',38,9,'dhis',1),(205,'Kieni East','YXt5ETQPRlB','217','',20,1,'dhis',1),(206,'Kieni West','odOtfcaMg4p','216','[[[[37.2375,-0.1045],[37.3072,-0.1578],[37.2048,-0.4251],[37.1734,-0.4478],[37.1597,-0.4945],[37.1682,-0.5142],[37.1446,-0.5299],[37.145,-0.5624],[37.131,-0.537],[37.1021,-0.5429],[37.0852,-0.5275],[37.1002,-0.5172],[37.1055,-0.4534],[37.0842,-0.4147],[37.1088,-0.3843],[37.0705,-0.3912],[37.0553,-0.3856],[37.057,-0.3697],[37.0223,-0.401],[36.9892,-0.3492],[36.963,-0.3729],[36.9311,-0.3579],[36.9262,-0.3759],[36.8901,-0.3799],[36.8858,-0.3976],[36.8046,-0.3859],[36.7369,-0.416],[36.7351,-0.4293],[36.6657,-0.3175],[36.6279,-0.2837],[36.6838,-0.1826],[36.6534,-0.1485],[36.7616,-0.1047],[36.828,-0.0958],[36.8307,-0.1275],[36.8543,-0.1348],[36.8687,-0.1665],[36.8406,-0.1899],[36.8583,-0.2547],[36.8698,-0.2471],[36.987,-0.2932],[37.0257,-0.1652],[36.9855,-0.1347],[36.9787,-0.0723],[37.0243,-0.0503],[37.077,0.0185],[37.1162,-0.0192],[37.2375,-0.1045]]]]',20,1,'dhis',1),(207,'Kigumo','tyfDsdZ1h3R','225','',22,1,'dhis',1),(210,'Kinangop','RAnL5kBKMIt','1105','',19,1,'dhis',1),(211,'Kipipiri','KlVgeHmvG6n','214','',19,1,'dhis',1),(212,'Kirinyaga East','yOaHQLOLd1H','220','',21,1,'dhis',1),(213,'Kirinyaga North','f6EOn3xI9YH','1122','',21,1,'dhis',1),(214,'Kirinyaga South','jHmpQUlnkQk','222','',21,1,'dhis',1),(215,'kirinyaga north/mwea west','A34NiI4rgnf','221','[[[[37.2362,-0.6825],[37.2337,-0.6702],[37.2117,-0.6896],[37.198,-0.6658],[37.1776,-0.6688],[37.1673,-0.6369],[37.1773,-0.6054],[37.1458,-0.5813],[37.145,-0.5624],[37.1446,-0.5299],[37.1682,-0.5142],[37.1597,-0.4945],[37.1734,-0.4478],[37.2048,-0.4251],[37.3072,-0.1578],[37.3125,-0.1649],[37.4239,-0.4234],[37.4284,-0.5135],[37.4716,-0.5587],[37.4823,-0.5941],[37.476,-0.7132],[37.494,-0.7336],[37.4709,-0.7277],[37.3477,-0.7755],[37.3125,-0.7533],[37.2779,-0.7594],[37.2661,-0.7831],[37.2627,-0.7815],[37.2565,-0.7571],[37.2685,-0.7537],[37.2362,-0.6825]]]]',21,1,'dhis',1),(217,'Kisauni','C1hO6wNOgrH\r\n','1003\r\n',NULL,2,2,NULL,1),(219,'Kitui Central',NULL,NULL,NULL,16,3,NULL,1),(220,'Konoin','PLFoYJO8MVS','1202','',37,8,'dhis',1),(221,'Kuresoi North','QBwORnYdu0e\r\n','1183\r\n',NULL,33,8,NULL,1),(222,'Lafey','nsfbHBS9tMT','1042','',10,6,'dhis',1),(224,'Lamu East','cwnqFyTJIgX','1018','',6,2,'dhis',1),(225,'Langata','aTGYlhEw2Xx\r\n','101\r\n',NULL,1,5,NULL,1),(226,'Lari','nCziQtZ49jj','226','',23,1,'dhis',1),(228,'Likoni','iy93Mmi73Or\r\n','1002\r\n',NULL,2,2,NULL,1),(229,'Likuyani','wMv0s3U2nnG','1217','',38,9,'dhis',1),(230,'Limuru','xhVi71INcFs\r\n','209\r\n',NULL,23,1,NULL,1),(231,'Loima','OZiGQn2R8kK','745','',24,8,'dhis',1),(234,'Magarini','KMWrMZrlO5u\r\n','1012\r\n',NULL,4,2,NULL,1),(235,'Makadara','wwROy3Qkwin\r\n','1281\r\n',NULL,1,5,NULL,1),(237,'Mandera North','jrm0uyLXnC1','512','',10,6,'dhis',1),(238,'Marakwet West','fNCuk4Lpsnh','1161','[[[[35.4911,0.8512],[35.4848,0.8798],[35.4593,0.8799],[35.4687,0.9016],[35.4136,0.9108],[35.4172,0.9437],[35.3768,0.9405],[35.3535,0.9473],[35.3347,0.9706],[35.3599,1.0237],[35.2408,1.0765],[35.1453,1.202],[35.1939,1.1874],[35.3258,1.1256],[35.5361,1.2972],[35.6164,1.2913],[35.6888,1.3251],[35.7028,1.1593],[35.665,1.0477],[35.6356,1.0281],[35.6341,0.9884],[35.6214,0.8715],[35.4911,0.8512]]]]',29,8,'dhis',1),(239,'kitutu chache north',NULL,NULL,NULL,46,7,NULL,1),(240,'Marigat','dSLnPmNlm8Q','747','',31,8,'dhis',1),(244,'Masinga','hpcb7MYi6nc','438','',17,3,'dhis',1),(247,'Mathira East','vznKK4IegIL','219','',20,1,'dhis',1),(248,'Mathira West','msIc1uFAY6B','1116','',20,1,'dhis',1),(250,'Matuga','wUNEDOnx9uB','303','[[[[39.1711,-4.3209],[39.2386,-4.225],[39.2708,-4.2345],[39.2973,-4.2223],[39.3114,-4.1458],[39.3836,-4.1396],[39.3828,-4.1617],[39.4221,-4.1503],[39.4603,-4.1119],[39.5165,-4.0982],[39.5202,-4.0682],[39.5852,-4.0722],[39.5754,-4.0868],[39.609,-4.0627],[39.6615,-4.1193],[39.6021,-4.2492],[39.5766,-4.2505],[39.5692,-4.2391],[39.5439,-4.2591],[39.4805,-4.2631],[39.4984,-4.2729],[39.4778,-4.324],[39.421,-4.3834],[39.3952,-4.3888],[39.3382,-4.3786],[39.3159,-4.3983],[39.226,-4.374],[39.1999,-4.3831],[39.1711,-4.3209]]]]',3,2,'dhis',1),(251,'Matungulu','GnixPSqaV6D','439','',17,3,'dhis',1),(252,'Mbeere South','AvnM6jKoocs\r\n',NULL,NULL,15,3,NULL,1),(254,'Merti','NrGORu301bx','1052','',12,3,'dhis',1),(257,'Mogotio','k5sxmlXAtIg','748','',31,8,'dhis',1),(258,'Muhoroni','NmbwkQ5r5cB','1248','',43,7,'dhis',1),(260,'Mukurweini','zT8Zj5vNYCy','203','',20,1,'dhis',1),(264,'Mvita','C1xuoa1NAMm\r\n','301\r\n',NULL,2,2,NULL,1),(265,'Mwatate','IBDoGsLdhvt','1020','',7,2,'dhis',1),(267,'Mwingi West','svwbDnzhgik\r\n','1078\r\n',NULL,16,3,NULL,1),(268,'Nambale','e1J7R103h8I','1235','',41,9,'dhis',1),(270,'Njoro','gSJXzH1DM75\r\n','751\r\n',NULL,33,8,NULL,1),(271,'North Horr','j6fqt5TYqPZ\r\n','1047\r\n',NULL,11,6,NULL,1),(272,'Masaba North','Qn5Fff2lidz','630','[[[[34.9513,-0.7865],[35.0117,-0.8857],[35.0169,-0.895],[34.9189,-0.9179],[34.8535,-0.8154],[34.9155,-0.7626],[34.8342,-0.7126],[34.8322,-0.7109],[34.8569,-0.706],[34.8557,-0.6741],[34.913,-0.6945],[34.9821,-0.749],[34.981,-0.7676],[34.9513,-0.7865]]]]',47,7,'dhis',1),(273,'Pokot South','u2zJahNiSP5','1150','',25,8,'dhis',1),(275,'bobasi','cooDDG3Lh3A\r\n','631\r\n',NULL,46,7,NULL,1),(276,'Nyamira North','cxjRPbvhjzr','619','[[[[35.0346,-0.5133],[35.0351,-0.6368],[35.0035,-0.6454],[35.0194,-0.6725],[34.9424,-0.6701],[34.8856,-0.616],[34.8569,-0.5061],[35.0201,-0.4133],[35.0452,-0.452],[35.0345,-0.5002],[35.0346,-0.5133]]]]',47,7,'dhis',1),(277,'olkalou','Lm9RMwhIu3G','213','',19,1,'dhis',1),(278,'oljoroorok',NULL,NULL,NULL,19,1,NULL,1),(280,'Nyeri Central','GXnD5lHeanK','218','',20,1,'dhis',1),(282,'Rabai','hJf4rt7cvI6\r\n','1013\r\n',NULL,4,2,NULL,1),(283,'Rongai','OK0hW8DFHq3\r\n','1181\r\n',NULL,33,8,NULL,1),(284,'Ruiru','TPRNJqSm4lK\r\n','211\r\n',NULL,23,1,NULL,1),(285,'Sabatia','urtJSF5jcBC','1219','',39,9,'dhis',1),(289,'Starehe','nKHlZyN0lt9\r\n','102\r\n',NULL,1,5,NULL,1),(290,'Subukia','zQEuNRaPYgE\r\n','1188\r\n',NULL,33,8,NULL,1),(291,'Tarbaj','fmNokBURXjM','1035','',9,6,'dhis',1),(292,'Teso South','EhchjCHkhJ9','821','',41,9,'dhis',1),(293,'Tetu','YT3tecc4atw','1113','',20,1,'dhis',1),(294,'Tharaka South','Yz1V5Cx8CO2','432','',14,3,'dhis',1),(296,'Tigania West','Q4xAPhWUnYC','431','',13,3,'dhis',1),(298,'Turkana East','dr8gOvVAdiE','746','',24,8,'dhis',1),(299,'Turkana West','HK5SUCMQmsw','744','',24,8,'dhis',1),(300,'Ugunja','m9nsQ1MXlVU','1241','',42,7,'dhis',1),(301,'Voi','yoGLpCTgjed','1022','',7,2,'dhis',1),(302,'Westlands',NULL,NULL,NULL,1,5,NULL,1),(303,'Wundanyi','AM36DdkZ36Y','312','',7,2,'dhis',1),(304,'Mbita','mCGytMcMf6y','625','',44,7,'dhis',1),(305,'Kasipul','NhsAMiaS0TD','609','[[[[34.9135,-0.4061],[34.9864,-0.416],[35.0098,-0.3936],[35.0201,-0.4133],[34.8569,-0.5061],[34.7592,-0.5547],[34.7085,-0.5633],[34.6864,-0.5993],[34.656,-0.607],[34.6266,-0.5282],[34.6368,-0.4914],[34.5899,-0.4617],[34.5062,-0.4695],[34.4507,-0.4151],[34.4596,-0.3543],[34.5505,-0.3281],[34.5956,-0.3485],[34.7306,-0.3566],[34.7559,-0.3529],[34.7632,-0.3368],[34.7525,-0.2937],[34.763,-0.3154],[34.8103,-0.3549],[34.8233,-0.3889],[34.8893,-0.4043],[34.9142,-0.3899],[34.9135,-0.4061]]]]',44,7,'dhis',1),(306,'Mumias West','uRl5fBkhpcE\r\n',NULL,NULL,38,9,NULL,1),(307,'Cheptais','NZphHeczehh','1230','',40,1,'dhis',1),(308,'Navakholo','G6PJ5kFVAuO','','',38,8,'dhis',1),(309,'Embakasi East ','gD4xxgDGJ4Y','','',1,5,'dhis',1),(310,'Embakasi West ','aCwUX5V42Zz','','',1,5,'dhis',1),(311,'Embakasi South','aDp1odOWYC1\r\n',NULL,NULL,1,5,NULL,1),(312,'Nakuru East','FBJ9Y11esHS\r\n',NULL,NULL,33,8,NULL,1),(313,'Nakuru West ','KTayLusaU5I','','',33,8,'dhis',1),(314,'Suna East','nHEr5EciFh0','','',45,7,'dhis',1),(315,'Suna West','VtuwXD7O1O9','','',45,7,'dhis',1),(317,'Trans Mara West','Nb6e34jNGAq','1192','[[[[34.7243,-1.3902],[34.6871,-1.2222],[34.6377,-1.1755],[34.6263,-1.1539],[34.6163,-1.078],[34.5972,-1.056],[34.5907,-1.0215],[34.6398,-0.9715],[34.7159,-0.9677],[34.9189,-0.9179],[35.0169,-0.895],[35.0822,-0.9107],[35.2416,-1.0428],[35.2131,-1.0993],[35.1768,-1.0869],[35.1574,-1.1371],[35.0973,-1.1491],[35.0334,-1.236],[35.0362,-1.3107],[34.988,-1.3439],[34.9894,-1.3808],[35.0144,-1.3863],[35.0582,-1.4394],[35.0285,-1.4728],[35.0227,-1.5468],[34.7243,-1.3902]]]]',34,8,'dhis',1),(318,'Soy','lmr1q6dTaso','717','[[[[35.0415,0.6393],[35.0867,0.6307],[35.1564,0.6611],[35.1478,0.828],[35.1234,0.8307],[35.1123,0.8894],[35.1116,0.8906],[35.127,0.9226],[35.2186,0.9223],[35.2356,0.935],[35.2726,0.935],[35.305,0.8925],[35.3535,0.9473],[35.3768,0.9405],[35.3756,0.9135],[35.3367,0.8679],[35.3577,0.8522],[35.3451,0.8328],[35.3534,0.812],[35.3156,0.8086],[35.2949,0.7777],[35.3027,0.6708],[35.327,0.6707],[35.3335,0.6444],[35.3161,0.5822],[35.2807,0.5676],[35.2632,0.5376],[35.2382,0.5645],[35.2269,0.5448],[35.2049,0.5658],[35.166,0.5422],[35.1424,0.5355],[35.1067,0.5518],[35.0977,0.5386],[35.0482,0.5611],[34.8552,0.5482],[34.8975,0.6032],[34.923,0.5912],[35.0017,0.6377],[35.0274,0.6163],[35.0415,0.6393]]]]',28,8,'dhis',1),(319,'Seme','LRNmnMw1fBs','605','[[[[34.4391,-0.175],[34.4154,-0.0756],[34.5333,-0.0138],[34.5622,-0.0183],[34.5639,-0.0419],[34.5826,-0.0319],[34.5912,0.0064],[34.612,0.0027],[34.6811,-0.0126],[34.6748,-0.0543],[34.6291,-0.0741],[34.6494,-0.0965],[34.5889,-0.1128],[34.5812,-0.1445],[34.5555,-0.1408],[34.5559,-0.1569],[34.5058,-0.196],[34.4573,-0.1652],[34.4391,-0.175]]]]',43,7,'dhis',1),(320,'Turbo','KuprsuBe1l0','','',28,8,'dhis',1),(321,'Shinyalu','sjlSPeRgl7d','804','[[[[34.9453,0.2192],[34.9122,0.1991],[34.898,0.2093],[34.8114,0.1845],[34.7702,0.1809],[34.7121,0.2202],[34.7109,0.245],[34.772,0.2603],[34.7943,0.308],[34.7849,0.326],[34.795,0.337],[34.9085,0.3996],[34.9292,0.3958],[34.9491,0.3575],[34.937,0.3597],[34.9413,0.3245],[34.9651,0.2734],[34.9778,0.2425],[34.9554,0.2415],[34.9453,0.2192]]]]',38,9,'dhis',1),(322,'Saku','WILszL634oZ\r\n','401\r\n',NULL,11,3,NULL,1),(323,'Saboti ','y2M16lesMsF','','',27,8,'dhis',1),(324,'Runyenjes ','kMSLkN4nsRl','','',15,3,'dhis',1),(325,'Ruaraka','Cc8uEFkzfVf\r\n',NULL,NULL,1,5,NULL,1),(326,'Roysambu ','j7GpbairCOi','','',1,5,'dhis',1),(327,'Rangwe','iK2Jk2AxhlD','','',44,7,'dhis',1),(328,'karachuonyo','fmsyW02tPng','626','',44,7,'dhis',1),(329,'Nyakach','kBQIjtWUBqj','623','',43,7,'dhis',1),(330,'Narok East','gZM3NbHaugk','','',34,8,'dhis',1),(331,'Narok west','ouA247cg58A','','',34,8,'dhis',1),(332,'mathioya','u7Gkh63FYe4','223','',22,1,'dhis',1),(333,'Moiben','q8R0FA1hxnP','718','[[[[35.5137,0.1892],[35.5698,0.1985],[35.587,0.1717],[35.6086,0.17],[35.5939,0.1697],[35.5801,0.1153],[35.5329,0.1143],[35.5307,0.1027],[35.5224,0.1268],[35.4931,0.1087],[35.4653,0.1236],[35.479,0.1591],[35.4667,0.1994],[35.4213,0.2191],[35.4366,0.2265],[35.4165,0.2577],[35.4423,0.2826],[35.4033,0.3338],[35.4162,0.3512],[35.3911,0.3958],[35.3951,0.4263],[35.3605,0.4507],[35.3579,0.4728],[35.2545,0.5224],[35.2382,0.5645],[35.2632,0.5376],[35.2807,0.5676],[35.3161,0.5822],[35.3335,0.6444],[35.327,0.6707],[35.3027,0.6708],[35.2949,0.7777],[35.3156,0.8086],[35.3534,0.812],[35.3451,0.8328],[35.3577,0.8522],[35.3367,0.8679],[35.3756,0.9135],[35.3768,0.9405],[35.4172,0.9437],[35.4136,0.9108],[35.4687,0.9016],[35.4593,0.8799],[35.4848,0.8798],[35.4911,0.8512],[35.4804,0.8241],[35.498,0.82],[35.5051,0.7705],[35.4904,0.7523],[35.5037,0.7057],[35.4096,0.7038],[35.4808,0.5903],[35.4587,0.3946],[35.4786,0.3871],[35.4731,0.3656],[35.5128,0.325],[35.4951,0.2368],[35.5397,0.2273],[35.5137,0.1892]]]]',28,8,'dhis',1),(334,'Lungalunga','TdcYaufNV4p','','',3,2,'dhis',1),(335,'Kajiado East','g6gTzQ5nfYq','752','',35,8,'dhis',1),(336,'Kajiado West','wYsCfCAUWNB','','',35,8,'dhis',1),(337,'Igembe North','PKeFksHlJkB','1240','',13,3,'dhis',1),(338,'Kiambu town ','SBz4c48i24Y','208','[[[[36.7691,-0.9771],[36.895,-1.0636],[36.8657,-1.1166],[36.8971,-1.1238],[36.8813,-1.1587],[36.8955,-1.1651],[36.893,-1.1946],[36.8598,-1.1929],[36.8436,-1.2186],[36.8266,-1.2156],[36.7875,-1.1965],[36.7721,-1.2285],[36.7519,-1.2243],[36.709,-1.1896],[36.7344,-1.1395],[36.7198,-1.1245],[36.7268,-1.0974],[36.6711,-1.0754],[36.7048,-1.047],[36.7989,-1.0462],[36.8063,-1.0363],[36.7691,-0.9771]]]]',23,1,'dhis',1),(339,'Kibra','LO5he3DtiFG\r\n',NULL,NULL,1,5,NULL,1),(340,'Kamukunji','qoLIT7y5f5c\r\n','103\r\n',NULL,1,5,NULL,1),(341,'Kitui East','d0Gu8FrRM0Y\r\n','436\r\n',NULL,16,3,NULL,1),(342,'Kitui West','cmWAJB5kCDW\r\n','435\r\n',NULL,16,3,NULL,1),(343,'Kitutu Chache South','gPR82w2xgJZ','','',46,7,'dhis',1),(344,'Kibwezi West','toa2Hl7iVQI\r\n',NULL,NULL,18,3,NULL,1),(345,'Bomet East','OZNRpww2TUK','','',37,8,'dhis',1),(346,'cherangany','f18kGo9yXWo\r\n','711\r\n',NULL,27,8,NULL,1),(347,'dagoretti south','sqNWYDHZZ6W\r\n',NULL,NULL,1,5,NULL,1),(348,'Kuresoi South','QwGkDS0DNls\r\n',NULL,NULL,33,8,NULL,1),(349,'Kilifi South','xWAZBULwGxp\r\n',NULL,NULL,4,2,NULL,1),(350,'Kilome','pKJ4NZGPzTA\r\n',NULL,NULL,18,3,NULL,1),(351,'Kikuyu','jOVcLeZQSsS\r\n','228\r\n',NULL,23,1,NULL,1),(352,'Luanda','lkYdgjRSOoE','','',39,9,'dhis',1),(353,'Ainabkoi','mYlMs4xTj82','','',28,8,'dhis',1),(354,'Chesumei','xLWuQq3DjOR','','[35.17295,0.32162]',30,8,'dhis',1),(355,'Embakasi North ','SSz1iOv28Jk','','',1,5,'dhis',1),(356,'Endebess ','PsjxYLsJSIp','','',27,8,'dhis',1),(357,'Kitui South ','d3hSQ3EtnPk','418','[[[[38.9246,-2.0699],[38.7837,-2.3514],[38.6859,-2.4128],[38.6314,-2.4205],[39.0843,-3.0395],[39.0593,-3.0344],[39.0205,-3.0137],[38.8161,-3.0585],[38.6812,-3.036],[38.6167,-2.9978],[38.5172,-2.9779],[38.4398,-2.869],[38.4203,-2.8104],[38.426,-2.7775],[38.276,-2.4296],[38.224,-2.3998],[38.2099,-2.3582],[38.1255,-2.3263],[38.0804,-2.2626],[38.0507,-2.1742],[38.0186,-2.1524],[37.9676,-2.173],[37.9605,-2.1463],[37.9579,-2.0555],[37.9133,-1.95],[37.9198,-1.9106],[37.9044,-1.8842],[38.08,-1.8858],[38.024,-1.8297],[37.9986,-1.7499],[38.0099,-1.7369],[37.9612,-1.6855],[37.9795,-1.636],[38.1515,-1.608],[38.163,-1.6327],[38.1877,-1.6194],[38.2027,-1.568],[38.2196,-1.585],[38.2507,-1.553],[38.3311,-1.5463],[38.3753,-1.5067],[38.3832,-1.4797],[38.4388,-1.4815],[38.4679,-1.4299],[38.6137,-1.4785],[38.7837,-1.4687],[38.9754,-1.5419],[38.9834,-1.6739],[38.945,-1.7056],[38.9962,-1.919],[38.9246,-2.0699]]]]',16,3,'dhis',1),(358,'Mwingi North ','KXM9VnhuLfP','420','[[[[38.4143,-0.0804],[38.8119,-0.76],[38.8933,-0.9337],[38.7898,-0.8628],[38.7581,-0.8005],[38.6636,-0.7539],[38.6271,-0.7177],[38.4278,-0.6928],[38.3246,-0.7157],[38.3213,-0.7991],[38.3433,-0.8158],[38.3126,-0.8101],[38.2915,-0.8346],[38.1903,-0.7126],[38.084,-0.7215],[38.0631,-0.7474],[37.9608,-0.7653],[37.9328,-0.7436],[37.9087,-0.753],[37.9148,-0.7284],[37.8933,-0.6574],[37.922,-0.6324],[37.8897,-0.5973],[37.8833,-0.5376],[37.9354,-0.4311],[37.9731,-0.3912],[37.9696,-0.3485],[37.997,-0.2838],[38.1149,-0.2794],[38.1586,-0.2423],[38.1806,-0.1519],[38.2094,-0.1085],[38.2456,-0.0813],[38.2828,-0.0794],[38.3035,-0.05],[38.3249,-0.0763],[38.3415,-0.0697],[38.3774,-0.0927],[38.4143,-0.0804]]]]',16,3,'dhis',1),(359,'Nyaribari Chache ','fFh3beH29fD','','',46,7,'dhis',1),(360,'Nyali ','sr8WEz03EnP','','',2,2,'dhis',1),(361,'Hulugho','uyeif4CPqHt','991','',8,6,'dhis',1),(362,'Ikolomani','BE6HMtlHyl1','802','[[[[34.7109,0.245],[34.7121,0.2202],[34.7702,0.1809],[34.8114,0.1845],[34.8144,0.165],[34.6782,0.1277],[34.6777,0.1341],[34.6738,0.1641],[34.6508,0.1698],[34.6351,0.1999],[34.6381,0.2419],[34.6959,0.264],[34.7109,0.245]]]]',38,9,'dhis',1),(363,'Jomvu','vSISrsNNHwq\r\n',NULL,NULL,2,2,NULL,1),(364,'Juja','aiqi2bz0IMI\r\n','230\r\n',NULL,23,1,NULL,1),(366,'Kapseret','u9yagZzK49q','719','[[[[35.5801,0.1153],[35.5796,0.0656],[35.5449,0.0849],[35.5459,0.0461],[35.5297,0.0436],[35.5247,0.0151],[35.4355,0.0181],[35.4026,0.0812],[35.3835,0.115],[35.335,0.1427],[35.3395,0.1924],[35.3648,0.1875],[35.3564,0.2115],[35.2961,0.2262],[35.1398,0.472],[35.166,0.5422],[35.2049,0.5658],[35.2269,0.5448],[35.2382,0.5645],[35.2545,0.5224],[35.3579,0.4728],[35.3605,0.4507],[35.3951,0.4263],[35.3911,0.3958],[35.4162,0.3512],[35.4033,0.3338],[35.4423,0.2826],[35.4165,0.2577],[35.4366,0.2265],[35.4213,0.2191],[35.4667,0.1994],[35.479,0.1591],[35.4653,0.1236],[35.4931,0.1087],[35.5224,0.1268],[35.5307,0.1027],[35.5329,0.1143],[35.5801,0.1153]]]]',28,8,'dhis',1),(367,'Alego Usonga','Cu46otDi1RO','601','[[[[34.4447,0.2078],[34.4243,0.1832],[34.4371,0.1672],[34.4264,0.1493],[34.4773,0.155],[34.4794,0.1363],[34.4551,0.1277],[34.4717,0.1033],[34.493,0.1014],[34.4969,0.1261],[34.5071,0.1186],[34.5418,0.1377],[34.5545,0.095],[34.5583,0.0496],[34.5333,-0.0138],[34.4154,-0.0756],[34.3828,-0.0629],[34.3541,-0.0289],[34.2544,-0.0493],[34.2142,-0.0133],[34.1577,-0.0093],[34.1529,0.0104],[34.1245,0.0165],[34.1093,0.0413],[34.0449,0.0072],[34.0712,0.1201],[34.0946,0.133],[34.1013,0.1253],[34.1123,0.1441],[34.1031,0.1867],[34.1146,0.2408],[34.1611,0.3013],[34.2021,0.264],[34.2022,0.2886],[34.2323,0.2934],[34.2467,0.315],[34.3683,0.31],[34.3925,0.2851],[34.3835,0.1809],[34.4309,0.2159],[34.4447,0.2078]]]]',42,7,'dhis',1),(368,'Kesses','dKHnvt7gleN','','',28,8,'dhis',1),(369,'Kiambaa','oMaQgNIs85x\r\n',NULL,NULL,23,1,NULL,1),(370,'Kibish','AXNntZ7T30a','','',24,8,'dhis',1),(371,'Kiharu','VDlzh6w4LKv','206','[[[[37.0593,-0.6113],[37.1186,-0.6449],[37.1673,-0.6369],[37.1776,-0.6688],[37.198,-0.6658],[37.2117,-0.6896],[37.2337,-0.6702],[37.2362,-0.6825],[37.2685,-0.7537],[37.2565,-0.7571],[37.2627,-0.7815],[37.1957,-0.7664],[37.1856,-0.7491],[37.0958,-0.7678],[37.0817,-0.7861],[36.9553,-0.7698],[36.8152,-0.713],[36.8057,-0.7369],[36.7083,-0.6662],[36.7051,-0.6447],[36.7053,-0.6254],[36.7058,-0.5898],[36.731,-0.5671],[36.7982,-0.571],[36.885,-0.6117],[36.9875,-0.5767],[37.0593,-0.6113]]]]',22,1,'dhis',1),(372,'Kimilili','AphsS3lJwKU','1223','',40,9,'dhis',1),(373,'Kiminini ','pzZHpL2ueIn','710','[[[[34.9953,0.8859],[34.8093,0.8094],[34.7968,0.8567],[34.7883,0.8962],[34.8001,0.9135],[34.7423,0.9403],[34.6775,1.0268],[34.7265,1.0188],[34.7256,1.0358],[34.7826,1.0168],[34.7883,1.0322],[34.8377,1.0171],[34.8811,1.0297],[34.895,1.0123],[34.9176,1.0344],[34.9233,1.0151],[34.9541,1.0472],[34.9674,1.0418],[34.9793,1.0153],[34.9504,0.9693],[34.983,0.9888],[35.0215,0.9699],[35.0195,0.9864],[35.0665,1.0168],[35.1116,0.8906],[35.1123,0.8894],[35.099,0.8818],[35.0482,0.9043],[35.0172,0.8921],[34.9953,0.8859]]]]',27,8,'dhis',1),(374,'Lurambi','Y3NjAhiBaZT','801','[[[[34.7849,0.326],[34.7943,0.308],[34.772,0.2603],[34.7109,0.245],[34.6959,0.264],[34.6381,0.2419],[34.6351,0.1999],[34.619,0.2049],[34.6236,0.1882],[34.603,0.1878],[34.6096,0.281],[34.6507,0.3378],[34.6408,0.3527],[34.619,0.3452],[34.6026,0.3856],[34.5777,0.3909],[34.5864,0.4273],[34.5889,0.4456],[34.6323,0.4626],[34.6532,0.4589],[34.6861,0.4874],[34.74,0.4801],[34.754,0.5041],[34.7846,0.4975],[34.7974,0.4676],[34.8352,0.4711],[34.8539,0.4523],[34.8565,0.4216],[34.7874,0.4285],[34.8006,0.3919],[34.7545,0.3899],[34.795,0.337],[34.7849,0.326]]]]',38,9,'dhis',1),(375,'Malava','ES1CWa4AJmJ','803','[[[[34.8889,0.6036],[34.8975,0.6032],[34.8552,0.5482],[34.9065,0.5062],[34.9539,0.4209],[34.9491,0.3575],[34.9292,0.3958],[34.9085,0.3996],[34.795,0.337],[34.7545,0.3899],[34.8006,0.3919],[34.7874,0.4285],[34.8565,0.4216],[34.8539,0.4523],[34.8352,0.4711],[34.7974,0.4676],[34.7846,0.4975],[34.754,0.5041],[34.7643,0.5234],[34.791,0.5267],[34.8207,0.582],[34.8889,0.6036]]]]',38,9,'dhis',1),(376,'Manyatta ','CeukNtGhW7J','423','[[[[37.6989,-1.5069],[37.6028,-1.3438],[37.4514,-1.23],[37.4077,-1.1724],[37.3754,-1.1602],[37.3437,-1.1223],[37.419,-1.0398],[37.3497,-0.9874],[37.315,-0.9184],[37.324,-0.8917],[37.3995,-0.972],[37.4382,-0.9761],[37.4419,-0.9386],[37.4806,-0.8999],[37.5307,-0.9183],[37.5571,-0.8806],[37.5885,-0.8797],[37.6333,-0.8401],[37.664,-0.8481],[37.6802,-0.7982],[37.7114,-0.7814],[37.7444,-0.7855],[37.7587,-0.8219],[37.7886,-0.8218],[37.8055,-0.8047],[37.843,-0.8131],[37.8235,-0.8993],[37.8485,-0.9711],[37.8664,-0.9818],[37.8076,-1.116],[37.7741,-1.2168],[37.7749,-1.2576],[37.8289,-1.3551],[37.8729,-1.3722],[37.8813,-1.4085],[37.7767,-1.4912],[37.6989,-1.5069]]]]',15,3,'dhis',1),(377,'Mathare',NULL,NULL,NULL,1,5,NULL,1),(378,'Kipkelion West',NULL,NULL,NULL,36,8,NULL,1);
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viralregimenline`
--

DROP TABLE IF EXISTS `viralregimenline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viralregimenline` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `flag` int(100) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viralregimenline`
--

LOCK TABLES `viralregimenline` WRITE;
/*!40000 ALTER TABLE `viralregimenline` DISABLE KEYS */;
INSERT INTO `viralregimenline` VALUES (1,'1st',1),(2,'2nd',1),(3,'Other',1),(4,'No Data',1);
/*!40000 ALTER TABLE `viralregimenline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receivedstatus`
--

DROP TABLE IF EXISTS `receivedstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `receivedstatus` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`,`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receivedstatus`
--

LOCK TABLES `receivedstatus` WRITE;
/*!40000 ALTER TABLE `receivedstatus` DISABLE KEYS */;
INSERT INTO `receivedstatus` VALUES (1,'Accepted'),(2,'Rejected'),(3,'Repeat');
/*!40000 ALTER TABLE `receivedstatus` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `rejectedreasons`
--

DROP TABLE IF EXISTS `rejectedreasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rejectedreasons` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rejectedreasons`
--

LOCK TABLES `rejectedreasons` WRITE;
/*!40000 ALTER TABLE `rejectedreasons` DISABLE KEYS */;
INSERT INTO `rejectedreasons` VALUES (1,'Serum rings'),(2,'Clotted samples'),(3,'Improperly Packaged DBS Samples'),(4,'Insufficient Blood / Incompletely filled circles'),(5,'Improper Drying'),(6,'Other'),(7,'Over Age ( Adult  Sample)'),(8,'Collected on expired filter paper'),(9,'Sample collected on Humidity Indicator'),(11,'Over Age ( Child > 18 Months )'),(12,'DBS not sent with the request form'),(13,'Patient id error / labeling'),(14,'Over Saturation'),(15,'Scratched DBS Spots'),(16,'Double Entry'),(17,'Insufficient sample volume');
/*!40000 ALTER TABLE `rejectedreasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viralprophylaxis`
--

DROP TABLE IF EXISTS `viralprophylaxis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viralprophylaxis` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `displaylabel` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `description` varchar(100) NOT NULL,
  `line` TINYINT UNSIGNED NOT NULL,
  `ptype` TINYINT UNSIGNED NOT NULL DEFAULT '2',
  `category` TINYINT UNSIGNED NOT NULL DEFAULT '3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viralprophylaxis`
--

LOCK TABLES `viralprophylaxis` WRITE;
/*!40000 ALTER TABLE `viralprophylaxis` DISABLE KEYS */;
INSERT INTO `viralprophylaxis` VALUES (1,'4 &nbsp;AZT+3TC+NVP','AZT+3TC+NVP','',0,0,4),(2,'5 &nbsp;AZT+3TC+EFV','AZT+3TC+EFV','',0,0,5),(3,'2 &nbsp;TDF+3TC+NVP','TDF+3TC+NVP','',0,0,2),(4,'1 &nbsp;TDF+3TC+EFV','TDF+3TC+EFV','',0,0,1),(5,'10 &nbsp;AZT+3TC+LPVr','AZT+3TC+LPVr','',0,0,10),(6,'17 &nbsp;AZT+3TC+ABC','AZT+3TC+ABC','',0,0,17),(7,'18 &nbsp;TDF+3TC+LPVr','TDF+3TC+LPVr','',0,0,18),(8,'14 &nbsp;AZT+3TC+ATVr','AZT+3TC+ATVr','',0,0,14),(9,'11 &nbsp;TDF+3TC+ATVr','TDF+3TC+ATVr','',0,0,11),(10,'13 &nbsp;ABC+3TC+ATVr','ABC+3TC+ATVr','',0,0,13),(11,'6 &nbsp;ABC+3TC+NVP','ABC+3TC+NVP','',0,0,6),(12,'7 &nbsp;ABC+3TC+EFV','ABC+3TC+EFV','',0,0,7),(13,'9 &nbsp;ABC+3TC+LPVr','ABC+3TC+LPVr','',0,0,9),(14,'16 &nbsp;Other','Other','',0,0,16),(15,'19 &nbsp;None','None','',0,0,19),(16,'20 &nbsp;No Data','No Data','',0,0,20),(17,'3 &nbsp;TDF+3TC+DTG','TDT+3TC+DTG','',0,0,3),(18,'8 &nbsp;ABC+3TC+DTG','ABC+3TC+DTG','',0,0,8),(19,'15 &nbsp;AZT+3TC+DRV/r','AZT+3TC+DRV/r','',0,0,15);
/*!40000 ALTER TABLE `viralprophylaxis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viralsampletype`
--

DROP TABLE IF EXISTS `viralsampletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viralsampletype` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `typecode` int(100) DEFAULT NULL,
  `flag` TINYINT UNSIGNED DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viralsampletype`
--

LOCK TABLES `viralsampletype` WRITE;
/*!40000 ALTER TABLE `viralsampletype` DISABLE KEYS */;
INSERT INTO `viralsampletype` VALUES (1,'Frozen Plasma',2,1),(2,'Venous Blood  (EDTA )',2,1),(4,'DBS Venous',1,1),(3,'DBS Capillary ( infants)',1,1);
/*!40000 ALTER TABLE `viralsampletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countys`
--

DROP TABLE IF EXISTS `countys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countys` (
  `id` int(32) NOT NULL,
  `name` varchar(150) NOT NULL,
  `letter` varchar(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`,`letter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countys`
--

LOCK TABLES `countys` WRITE;
/*!40000 ALTER TABLE `countys` DISABLE KEYS */;
INSERT INTO `countys` VALUES (1,'Nairobi','N'),(2,'Mombasa','M'),(3,'Kwale','K'),(4,'Kilifi','K'),(5,'Tana River','T'),(6,'Lamu','L'),(7,'Taita Taveta','T'),(8,'Garissa','G'),(9,'Wajir','W'),(10,'Mandera','M'),(11,'Marsabit','M'),(12,'Isiolo','I'),(13,'Meru','M'),(14,'Tharaka Nithi','T'),(15,'Embu','E'),(16,'Kitui','K'),(17,'Machakos','M'),(18,'Makueni','M'),(19,'Nyandarua','N'),(20,'Nyeri','N'),(21,'Kirinyaga','K'),(22,'Muranga','M'),(23,'Kiambu','K'),(24,'Turkana','T'),(25,'West Pokot','W'),(26,'Samburu','S'),(27,'Trans Nzoia','T'),(28,'Uasin Gishu','U'),(29,'Marakwet/Elgeyo','M'),(30,'Nandi','N'),(31,'Baringo','B'),(32,'Laikipia','L'),(33,'Nakuru','N'),(34,'Narok','N'),(35,'Kajiado','K'),(36,'Kericho','K'),(37,'Bomet','B'),(38,'Kakamega','K'),(39,'Vihiga','V'),(40,'Bungoma','B'),(41,'Busia','B'),(42,'Siaya','S'),(43,'Kisumu','K'),(44,'Homa Bay','H'),(45,'Migori','M'),(46,'Kisii','K'),(47,'Nyamira','N');
/*!40000 ALTER TABLE `countys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amrslocations`
--

DROP TABLE IF EXISTS `amrslocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `amrslocations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `identifier` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amrslocations`
--

LOCK TABLES `amrslocations` WRITE;
/*!40000 ALTER TABLE `amrslocations` DISABLE KEYS */;
INSERT INTO `amrslocations` VALUES (1,1,'MTRH Module 1'),(2,2,'Mosoriot'),(3,3,'Turbo'),(4,4,'Burnt Forest'),(5,5,'Amukura'),(6,6,'Naitiri'),(7,7,'Chulaimbo'),(8,8,'Webuye'),(9,9,'Mt. Elgon'),(10,11,'Kitale'),(11,12,'Teso'),(12,13,'MTRH Module 2'),(13,14,'MTRH Module 3'),(14,15,'MTRH Module 4'),(15,16,'Unknown'),(16,17,'Iten'),(17,18,'Kabarnet'),(18,19,'Busia'),(19,20,'Port Victoria'),(20,21,'Non-AMPATH Site'),(21,22,'None'),(22,23,'Khuyangu'),(23,24,'Chulaimbo Module 1'),(24,25,'Chulaimbo Module 2'),(25,26,'Busia Module 1'),(26,27,'Busia Module 2'),(27,28,'Ziwa'),(28,31,'Uasin Gishu District Hospital'),(29,54,'Plateau Mission Hospital'),(30,55,'Bumala A'),(31,56,'Eldoret Prison'),(32,57,'Kitale Prison'),(33,58,'Ngeria Prison'),(34,59,'MAUTUMA'),(35,60,'Chepsaita'),(36,61,'KAPTAGAT'),(37,62,'KESSES'),(38,63,'LUKOLIS'),(39,64,'BOKOLI'),(40,65,'ANGURAI'),(41,66,'Cheptais'),(42,67,'CHESKAKI'),(43,68,'MARIGAT'),(44,69,'Huruma SDH'),(45,70,'Pioneer Sub-District Hospital'),(46,71,'Mois Bridge'),(47,72,'Moi University'),(48,73,'Soy'),(49,74,'Mihuu '),(50,75,'Sinoko'),(51,76,'Milo'),(52,77,'Moiben'),(53,78,'Mukhobola'),(54,79,'Nambale'),(55,81,'Busia Prison'),(56,82,'Saboti'),(57,83,'Bumala B'),(58,84,'MOI TEACHING AND REFERRAL HOSPITAL'),(59,85,'Makutano'),(60,86,'Kaptama (Friends) dispensary'),(61,87,'Sio Port'),(62,88,'Tulwet'),(63,89,'Kopsiro'),(64,90,'Changara'),(65,91,'Malaba'),(66,92,'Amase'),(67,93,'Obekai'),(68,94,'Tambach'),(69,95,'Tenges'),(70,96,'Kibisi'),(71,97,'Sango'),(72,98,'AIC Diguna Royal Toto Childrens Home,Ngechek'),(73,99,'Lupida'),(74,100,'Osieko'),(75,101,'Room 7'),(76,102,'Elgeyo Border'),(77,103,'Riat'),(78,104,'Sunga'),(79,105,'Siriba'),(80,106,'Kamolo'),(81,107,'Kapteren Health Center'),(82,108,'Madende Health Center'),(83,109,'Rai-plywood'),(84,110,'Mogoget'),(85,111,'Biribiriet'),(86,112,'Itigo'),(87,113,'Lelmokwo'),(88,114,'Kokwet'),(89,115,'Ngechek'),(90,116,'cheramei'),(91,117,'Murgusi'),(92,118,'Cheplasgei'),(93,119,'Sigot'),(94,120,'Sugoi A'),(95,121,'Sugoi B'),(96,122,'Chepkemel'),(97,124,'Akichelesit'),(98,125,'Aboloi'),(99,126,'Moding'),(100,127,'Sambut '),(101,128,'Ngenyilel'),(102,129,'Sosiani'),(103,130,'Matayos Health Centre'),(104,131,'Chebaiywa'),(105,198,'MTRH Adolescent Clinic');
/*!40000 ALTER TABLE `amrslocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `labs`
--

DROP TABLE IF EXISTS `labs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `labs` (
  `id` int(14) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `email` varchar(32) DEFAULT NULL,
  `labname` varchar(50) DEFAULT NULL,
  `labdesc` varchar(50) DEFAULT NULL,
  `lablocation` varchar(50) DEFAULT NULL,
  `base_url` varchar(70) DEFAULT NULL,
  `labtel1` varchar(32) DEFAULT NULL,
  `labtel2` varchar(32) DEFAULT NULL,
  `taqman` int(1) DEFAULT '1',
  `abbott` int(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `labs`
--

LOCK TABLES `labs` WRITE;
/*!40000 ALTER TABLE `labs` DISABLE KEYS */;
INSERT INTO `labs` (`id`, `name`, `email`, `labname`, `labdesc`, `lablocation`, `labtel1`, `labtel2`, `taqman`, `abbott`)
 VALUES (1,'KEMRI CVR HIV-P3 Lab, Nairobi','eid-nairobi@googlegroups.com','Nairobi Lab','KEMRI CVR HIV-P3 Lab','KEMRI HQ, Mbagathi Road, Nairobi','020 2722541 Ext: 2256/2290 ','0725793260 / 0725796842',1,1),(2,'KEMRI CDC HIV/R Lab,  Kisumu','eid-kisumu-kisian@googlegroups.c','Kisumu Lab','CDC HIV/R Lab','Kisumu-Busia Road, Kisumu','057 2053017/8 ',' 0722204614',1,1),(3,'KEMRI ALUPE HIV Laboratory','eid-alupe@googlegroups.com','Busia Lab','KEMRI Alupe Lab','Busia - Malaba Rd, Busia',' (055) 22410',' 0726156679',1,1),(4,'Walter Reed/KEMRI CRC Lab, Kericho','eid-kericho@googlegroups.com','Kericho Lab','Walter Reed CRC Lab','Hospital Road, Kericho',' 052 30388/21064','0716430261',1,1),(5,'Ampath Reference Lab,  Eldoret','eid-ampath@googlegroups.com','Eldoret Lab','Ampath Lab','Moi Referral Hospital, Eldoret',NULL,NULL,1,1),(6,'Coast Provincial General Hospital Molecular Lab','eid-cpgh@googlegroups.com','Coast Lab','CPGH Molecular Lab','Coast Provincial General Hospital',' 0722207868 Ext. Lab','0720594408 / 0733657392',1,0);
/*!40000 ALTER TABLE `labs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viralpmtcttype`
--

DROP TABLE IF EXISTS `viralpmtcttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viralpmtcttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viralpmtcttype`
--

LOCK TABLES `viralpmtcttype` WRITE;
/*!40000 ALTER TABLE `viralpmtcttype` DISABLE KEYS */;
INSERT INTO `viralpmtcttype` VALUES (1,'Pregnant'),(2,'Breast Feeding'),(3,'None of above');
/*!40000 ALTER TABLE `viralpmtcttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pcrtype`
--

DROP TABLE IF EXISTS `pcrtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pcrtype` (
  `id` TINYINT UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `alias` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pcrtype`
--

LOCK TABLES `pcrtype` WRITE;
/*!40000 ALTER TABLE `pcrtype` DISABLE KEYS */;
INSERT INTO `pcrtype` VALUES 
(1,'1 &nbsp;Initial PCR (6 week or first contact)','Initial PCR'),
(2,'2 &nbsp;2nd PCR (6 months)','Second PCR'),
(3,'3 &nbsp;3rd PCR (12 months)','Third PCR'),
(4,'4 &nbsp;Confirmatory PCR and Baseline VL','Confirmatory PCR'),
(5,'5 &nbsp;Discrepant PCR(tie breaker)','Discrepant PCR(tie breaker)');
/*!40000 ALTER TABLE `pcrtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `gender` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES (1,'M','Male'),(2,'F','Female'),(3,'No Data','No data');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;


DROP TABLE IF EXISTS `viraljustifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viraljustifications` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `displaylabel` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `flag` int(50) DEFAULT '1',
  `rank` int(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viraljustifications`
--

LOCK TABLES `viraljustifications` WRITE;
/*!40000 ALTER TABLE `viraljustifications` DISABLE KEYS */;
INSERT INTO `viraljustifications` VALUES (1,'1 &nbsp;Routine VL','Routine VL',1,1),(2,'2 &nbsp;Confirmation of Treatment Failure (Repeat VL)','Confirmation of Treatment Failure (Repeat VL)',1,2),(3,'3 &nbsp;Clinical Failure','Clinical Failure',1,3),(5,'4 &nbsp;Single Drug Substitution','Single Drug Substitution',1,4),(6,'8 &nbsp;Pregnant Mother','Pregnant Mother',0,8),(7,'6 &nbsp;Other','Other',1,6),(8,'7 &nbsp;No Data','No Data',1,7),(9,'9 &nbsp;Breast Feeding Mothers','Breast Feeding Mothers',0,9),(10,'5 &nbsp;Baseline','Baseline',1,5);
/*!40000 ALTER TABLE `viraljustifications` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `viraldilutionfactors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `viraldilutionfactors` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `dilutiontype` varchar(100) DEFAULT NULL,
  `dilutionfactor` int(10) DEFAULT NULL,
  `flag` TINYINT UNSIGNED DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viraldilutionfactors`
--

LOCK TABLES `viraldilutionfactors` WRITE;
/*!40000 ALTER TABLE `viraldilutionfactors` DISABLE KEYS */;
INSERT INTO `viraldilutionfactors` VALUES (1,'1:2',2,1),(2,'1:4',4,1),(3,'No Dilution',1,1),(4,'1:8',8,1);
/*!40000 ALTER TABLE `viraldilutionfactors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vlresultsguidelines`
--

DROP TABLE IF EXISTS `vlresultsguidelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vlresultsguidelines` (
  `id` TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `sampletype` TINYINT UNSIGNED NOT NULL COMMENT '1 - dbs 2-plasma/edta',
  `test` TINYINT UNSIGNED DEFAULT NULL,
  `triagecode` varchar(10) DEFAULT NULL,
  `triage` varchar(10) DEFAULT NULL,
  `indication` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vlresultsguidelines`
--

LOCK TABLES `vlresultsguidelines` WRITE;
/*!40000 ALTER TABLE `vlresultsguidelines` DISABLE KEYS */;
INSERT INTO `vlresultsguidelines` VALUES (1,2,1,'a','< 1000','Confirm adherence & Routine follow up.'),(2,2,1,'b','> 1000','Review adherence, provide adherence, Repeat Viral Load in 3 Months.'),(3,2,2,'a','< 1000','Confirm adherence & Routine follow up.'),(4,2,2,'b','> 1000','If Patient is on 1st Line Switch to 2nd Line, If Patient is on 2nd Line, Continue adherence & continue resistance testing.'),(6,2,3,'b','> 1000','Review adherence, provide adherence, Repeat Viral Load in 3 Months.'),(5,2,3,'a','< 1000','Confirm adherence & Routine follow up.'),(7,1,1,'a','< 5000','Confirm adherence & Routine follow up.'),(8,1,1,'b','> 5000','Review adherence, provide adherence, Repeat Viral Load in 3 Months.'),(9,1,2,'a','< 5000','Confirm adherence & Routine follow up.'),(10,1,2,'b','> 5000','If Patient is on 1st Line Switch to 2nd Line, If Patient is on 2nd Line, Continue adherence & continue resistance testing.'),(11,1,3,'a','< 5000','Confirm adherence & Routine follow up.'),(12,1,3,'b','> 5000','Review adherence, provide adherence, Repeat Viral Load in 3 Months.');
/*!40000 ALTER TABLE `vlresultsguidelines` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `synch_levels`;

CREATE TABLE `synch_levels` (
  `id` TINYINT UNSIGNED NOT NULL,
  `synch_level` varchar(50) NOT NULL,
  `synch_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `synch_levels` (`id`, `synch_level`, `synch_description`) VALUES
(0, 'Not Synched',  'New record that is still local'),
(1, 'Synched',  'This record has been sent to the national db.'),
(2, 'Updated Record', 'This record was changed after being synched and needs to be resynched.'),
(3, 'Deleted Record', 'This record was deleted at one level and needs to be deleted at the national level.'),
(5, 'External', 'These are records are from edarp.');



DROP TABLE IF EXISTS `drug_resistance_reasons`;

CREATE TABLE `drug_resistance_reasons` (
  `id` TINYINT UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `rank` TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `drug_resistance_reasons` (`id`, `name`, `description`, `rank`) VALUES
(1, 'Consistent Non-Suppression',  'Two consecutive tests with viralloads above 1000.', 1),
(2, 'Paed Non-Suppression',  'Patient aged 19 and under with a viralload above 1000.', 2),
(3, 'PMTCT Non-Suppression',  'PMTCT patient viralload above 1000.', 3);

DROP TABLE IF EXISTS `dr_primers`;

CREATE TABLE `dr_primers` (
  `id` TINYINT UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `lab_equipment_mapping`;

CREATE TABLE IF NOT EXISTS `lab_equipment_mapping` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` int(10) DEFAULT '0' COMMENT '1=roche 2-abbott 3-c8800 4-panther',
  `name` varchar(50) DEFAULT NULL,
  `serialno` varchar(10) DEFAULT NULL,
  `lab` int(10) DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `type` (`type`),
  KEY `serialno` (`serialno`),
  KEY `lab` (`lab`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

LOCK TABLES `lab_equipment_mapping` WRITE;
-- Dumping data for table alupedb.lab_equipment_mapping: ~39 rows (approximately)
/*!40000 ALTER TABLE `lab_equipment_mapping` DISABLE KEYS */;
INSERT INTO `lab_equipment_mapping` (`ID`, `type`, `name`, `serialno`, `lab`) VALUES(1, 2, 'Abbott M2000 #1', '11083', 4),(2, 2, ' Abbott M2000#2\r\n', '10317', 4),(3, 2, ' Abbott M2000#3\r\n', '11143', 4),(4, 1, 'CAP/CTM#1\r\n', '394118', 4),(5, 1, 'CAP/CTM#2\r\n', '395770', 4),(6, 2, 'Abbott M2000 #1', '11142/2950', 3),(7, 2, 'Abbott M2000#2\r\n', '10700/2750', 3),(8, 2, 'Abbott M2000#3\r\n', '11026/2750', 3),(9, 1, 'CAP/CTM#1\r\n', '393241/391', 3),(10, 1, 'CAP/CTM#2\r\n', '395668/393', 3),(11, 2, 'Abbott M2000 #1', '11087/2750', 9),(12, 1, 'CAP/CTM#1\r\n', '395771/393', 9),(13, 2, 'Abbott M2000 #1', '11025/2750', 2),(14, 2, 'Abbott M2000#2\r\n', '10435/2750', 2),(15, 2, 'Abbott M2000#3\r\n', '10843/2750', 2),(16, 1, 'CAP/CTM#1\r\n', '394119/392', 2),(17, 1, 'CAP/CTM#2\r\n', '395416/393', 2),(18, 1, 'CAP/CTM#3', '393447/392', 2),(19, 3, 'Roche C8800\r\n', '5048\r\n', 2),(20, 2, 'Abbott M2000 #1', '10918', 1),(21, 2, 'Abbott M2000#2\r\n', '10919', 1),(22, 2, 'Abbott M2000#3\r\n', '10689', 1),(23, 1, 'CAP/CTM#1\r\n', '39540/3932', 1),(24, 2, 'Abbott M2000 #1', '10842', 6),(25, 2, 'Abbott M2000#2\r\n', '10425\r\n', 6),(26, 1, 'CAP/CTM#1\r\n', '393433/392', 6),(27, 2, 'Abbott M2000 #1', '11084/2750', 7),(28, 2, 'Abbott M2000#2\r\n', '10840/2750', 7),(29, 1, 'CAP/CTM#1\r\n', '393343/395', 7),(30, 1, 'CAP/CTM#2\r\n', '394128\r\n', 7),(31, 1, 'CAP/CTM#3', '394928/392', 7),(32, 2, 'Abbott M2000 #1', 'n/a', 5),(33, 2, 'Abbott M2000#2\r\n', 'n/a', 5),(34, 1, 'CAP/CTM#1\r\n', 'n/a', 5),(35, 1, 'CAP/CTM#2\r\n', 'n/a', 5),(36, 4, 'Pantha Hologic', '2090001876', 3),(37, 4, 'Pantha Hologic', '2090001279', 1),(38, 4, 'Pantha Hologic', '2090001', 4),(39, 4, 'Pantha Hologic', '2090001855', 5);
/*!40000 ALTER TABLE `lab_equipment_mapping` ENABLE KEYS */;
UNLOCK TABLES;

INSERT INTO `dr_primers` (`id`, `name`, `full_name`) VALUES
(1, 'F1', 'Forward Primer 1'),
(2, 'F2', 'Forward Primer 2'),
(3, 'F3', 'Forward Primer 3'),
(4, 'R1', 'Reverse Primer 1'),
(5, 'R2', 'Reverse Primer 2'),
(6, 'R3', 'Reverse Primer 3');
