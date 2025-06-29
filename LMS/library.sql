-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$720000$qoG5dU8DHXLtyT6vwhDlLu$Eneb7Z2MyQ3RIeMwCFsqdrTmAbx58dxQn5aerSPjYuY=','2024-05-26 18:31:40.132186',1,'admin','','','twokill0052@gmail.com',1,1,'2024-05-26 18:31:28.626005');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Стівен','Кові'),(2,'Сюзен','Девід'),(3,'Рей','Далио'),(4,'Барбара','Оакл'),(5,'Олдсон','Хакслі'),(6,'Джон','Кехо'),(7,'Роберт','Луїс'),(8,'Даніель','Канеман'),(9,'Стівен','Кінг'),(10,'Ден','Браун'),(11,'Фредрік','Бакман'),(12,'Джордж','Орвел'),(13,'Ґреґ','Макеон'),(14,'Генрі','Марш'),(15,'Джим','Лоер'),(16,'Донна','Тартт'),(17,'Джоел','Діккер'),(18,'Гезер','Морріс'),(19,'Стюарт','Тертон'),(20,'Джеймс','Клір'),(21,'Олівер','Беркмен'),(22,'Ігор','Ризов'),(23,'Джимі','Кемп'),(24,'Наполеон','Хілл'),(25,'Дейл','Карнегі'),(26,'Джеймс','Аллен'),(27,'Прайс','Прітчет '),(28,'Вернер','Браун'),(29,'Ілларіон','Павлюк'),(30,'Френк','Герберт'),(31,'Ген','Кім'),(32,'Роберт','Мартін'),(33,'Джо','Гіл'),(36,'Дмитро','Глуховський');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `publishing_id` int DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `genre_id` int DEFAULT NULL,
  `year` date NOT NULL,
  `copies` int DEFAULT '1',
  `available` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `publishing_id` (`publishing_id`),
  KEY `genre_id` (`genre_id`),
  CONSTRAINT `book_ibfk_1` FOREIGN KEY (`publishing_id`) REFERENCES `publishing` (`id`),
  CONSTRAINT `book_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,1,'7 Звичок надзвичайно ефективних людей',18,'1989-01-01',9,9),(2,5,'Лідер у мені',18,'2004-11-09',6,6),(3,1,'Головна увага головним речам',18,'1989-01-01',4,3),(4,1,'Емоційна гнучкість',2,'2020-05-15',4,4),(5,2,'Самосвідомість',2,'2018-09-01',7,5),(6,4,'Принципи',3,'2017-09-19',5,5),(7,7,'Навчитися вчитися. Як запустити свій мозок на повну',4,'2018-01-16',15,15),(8,7,'Холоднокровна доброта',4,'2016-10-18',9,9),(9,1,'Злі гени',4,'2018-09-11',13,13),(10,6,'О дивний новий світ',12,'1932-01-01',12,12),(11,2,'Контрапункт',12,'1938-01-01',9,9),(12,3,'Біси лудена',12,'1938-01-01',3,3),(13,6,'І після багатьох весен',12,'1932-01-01',4,3),(14,7,'Підсвідомість може все!',3,'1978-01-01',10,8),(15,4,'Гроші, успіх і Ви',3,'2015-05-05',13,13),(16,4,'Квантовий воїн: майбутнє розуму',3,'1984-01-01',1,1),(17,5,'Острів скарбів',15,'1883-01-01',5,4),(18,4,'Клуб смовбивць',15,'1888-01-01',7,7),(19,5,'Мислення швидке й повільне',17,'2011-10-25',2,1),(20,4,'Шум',17,'2016-04-25',5,3),(21,6,'Сяйво',8,'1977-01-28',4,3),(22,5,'Аутсайдер',8,'2018-05-22',12,11),(23,5,'Зелена миля',8,'1996-08-29',2,1),(24,4,'Воно',8,'1986-09-15',1,1),(25,5,'Салимове Лігво',8,'1991-09-24',6,5),(26,5,'Людина, що біжить',8,'1977-06-13',7,7),(27,2,'Ріта Гейворт і втеча з Шоушенка',8,'1982-08-29',8,7),(28,1,'Код да Вінчі',14,'2003-03-18',10,9),(29,1,'Янголи і демони',14,'2000-05-17',10,9),(30,5,'Інферно',14,'2013-05-14',10,10),(31,1,'Втрачений символ',14,'2009-09-15',8,8),(32,3,'Джерело',14,'2017-10-03',1,2),(33,2,'Точка обману',14,'2018-05-14',2,2),(34,6,'Ведмеже місто',10,'2012-04-12',8,8),(35,3,'Тривожні люди',10,'2014-06-03',1,2),(36,1,'Чоловік на ім\'я Уве',10,'2012-08-27',7,7),(37,6,'1984',12,'1949-06-08',14,14),(38,1,'Колгосп тварин',12,'1945-08-17',13,13),(39,6,'Бірманські будні',12,'1934-01-01',9,9),(40,2,'Дорога на Віґан-Пірс',12,'1937-06-03',10,10),(41,3,'Данина Каталонії',12,'1938-01-01',4,3),(42,7,'Без зусиль. Досягайте важливого легше',11,'2014-03-25',12,10),(43,1,'Есенціалізм',11,'2014-04-15',5,4),(44,1,'Історії про життя, смерть і нейрохірургію',16,'2016-04-19',9,8),(45,4,'Не завдати шкоди',16,'2014-10-07',13,11),(46,6,'Живи на повну! Управляй енергією, а не часом — стань успішним і щасливим',18,'2003-01-01',7,7),(47,7,'Таємна історія',8,'1992-09-01',2,2),(48,6,'Щиголь',8,'2013-10-22',7,6),(49,7,'Маленький друг',8,'2019-10-22',6,6),(50,1,'Правда про справу Гаррі Квеберта ',8,'2013-05-14',8,7),(51,1,'Загадка 622 номера',8,'2017-03-21',10,8),(52,1,'Книга Балтиморів',8,'2018-10-09',8,8),(53,2,'Три сестри',10,'2017-05-16',5,5),(54,1,'Дорога з освенциму',10,'2008-09-15',12,12),(55,3,'Татуювальник аушвіцу',10,'2003-09-01',6,4),(56,7,'Сім смертей Евелін Гардкасл',21,'1990-10-02',7,6),(57,3,'Диявол і темна вода',21,'1992-04-27',6,6),(58,1,'Атомні звички',18,'2018-03-13',13,13),(59,2,'Чотири тисячі тижнів. Тайм-менеджмент для смертних',18,'2021-10-05',6,5),(60,2,'Я завжди знаю що сказати',20,'2021-07-15',1,1),(61,4,'Спочатку скажіть \"ні\". секрети професійних перемовників',20,'2015-02-10',10,10),(62,3,'Думай і багатій',18,'1937-03-01',3,2),(63,4,'Ключ до успіху',18,'1938-01-01',2,2),(64,1,'Закон успіху',18,'1928-01-01',1,1),(65,1,'Перехитрити диявола',18,'1938-01-01',15,15),(66,7,'Позитивне психічне ставлення',18,'1938-01-01',7,7),(67,4,'Як здобувати друзів і впливати на людей',20,'1936-10-12',3,3),(68,3,'Як подолати неспокій і почати жити',20,'1948-10-05',9,9),(69,4,'Як насолоджуватися своїм життям і отримувати задоволення від роботи',20,'1936-10-12',12,12),(70,4,'Лінкольн, якого не знають',20,'1936-10-12',1,0),(71,6,'Ск думає людина',20,'1902-01-01',12,12),(72,4,'Шлях до процвітання',20,'1902-01-01',1,1),(73,6,'Ск ви думаєте',20,'1903-01-01',9,7),(74,6,'Розму - господар',20,'1903-01-01',2,1),(75,1,'Цікаві часи',18,'1935-01-01',2,1),(76,3,'Правда',18,'1936-01-01',4,3),(77,2,'Поштова лихоманка',18,'1938-01-01',7,7),(78,4,'Проект марс',20,'2020-05-05',2,2),(79,1,'Космічний кордон',20,'2022-02-22',2,2),(80,2,'Я бачу, вас цікавить пітьма',22,'2023-07-07',8,6),(81,1,'Дюна',19,'1965-06-01',3,3),(82,3,'Месія Дюни',19,'1969-10-01',1,1),(83,2,'Діти Дюни',19,'1976-01-01',3,2),(84,2,'Бог-Імператор Дюни',19,'1981-01-01',6,6),(85,2,'Єретики Дюни',19,'1984-01-01',14,14),(86,7,'Капітула Дюни',19,'1985-01-01',2,2),(87,5,'Проект фенікс',23,'2020-01-01',10,9),(88,3,'The devops handbook',23,'2016-10-06',2,2),(89,3,'Clean Code',23,'2008-08-11',3,3),(90,7,'Різдвокрай',8,'2007-01-01',4,4),(91,3,'Пожежник',8,'2019-05-14',14,13),(92,3,'Роги',8,'2011-09-01',7,7),(93,1,'У високій траві',8,'2012-11-14',13,13),(94,7,'Метро 2033',7,'2005-06-01',5,5),(95,5,'Метро 2034',7,'2009-06-01',3,3),(96,1,'Метро 2035',7,'2015-06-01',8,6);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookauthors`
--

DROP TABLE IF EXISTS `bookauthors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bookauthors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `bookauthors_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`id`),
  CONSTRAINT `bookauthors_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookauthors`
--

LOCK TABLES `bookauthors` WRITE;
/*!40000 ALTER TABLE `bookauthors` DISABLE KEYS */;
INSERT INTO `bookauthors` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,2),(5,5,2),(6,6,3),(7,7,4),(8,8,4),(9,9,4),(10,10,5),(11,11,5),(12,12,5),(13,13,5),(14,14,6),(15,15,6),(16,16,6),(17,17,7),(18,18,7),(19,19,8),(20,20,8),(21,21,9),(22,22,9),(23,23,9),(24,24,9),(25,25,9),(26,26,9),(27,27,9),(28,28,10),(29,29,10),(30,30,10),(31,31,10),(32,32,10),(33,33,10),(34,34,11),(35,35,11),(36,36,11),(37,37,12),(38,38,12),(39,39,12),(40,40,12),(41,41,12),(42,42,13),(43,43,13),(44,44,14),(45,45,14),(46,46,15),(47,47,15),(48,48,16),(49,49,16),(50,50,16),(51,51,17),(52,52,17),(53,53,18),(54,54,18),(55,55,18),(56,56,18),(57,57,18),(58,58,19),(59,59,19),(60,60,20),(61,61,20),(62,62,20),(63,63,24),(64,64,24),(65,65,24),(66,66,24),(67,67,24),(68,68,25),(69,69,25),(70,70,25),(71,71,25),(72,72,25),(73,73,26),(74,74,26),(75,75,26),(76,76,26),(77,77,26),(78,78,27),(79,79,28),(80,80,29),(81,81,30),(82,82,30),(83,83,30),(84,84,30),(85,85,30),(86,86,30),(87,87,31),(88,88,31),(89,89,32),(90,90,33),(91,91,33),(92,92,33),(93,93,33),(94,94,36),(95,95,36),(96,96,36);
/*!40000 ALTER TABLE `bookauthors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-05-26 18:41:37.158998','60','test',1,'[{\"added\": {}}]',7,1),(2,'2024-05-26 18:42:03.002771','60','test',3,'',7,1),(3,'2024-05-26 18:46:17.326183','61','test',1,'[{\"added\": {}}]',7,1),(4,'2024-05-26 18:46:34.185609','61','test',3,'',7,1),(5,'2024-05-26 18:47:10.037926','62','test',1,'[{\"added\": {}}]',7,1),(6,'2024-05-26 18:47:23.028772','62','test',3,'',7,1),(7,'2024-05-26 18:48:38.406497','63','test',1,'[{\"added\": {}}]',7,1),(8,'2024-05-26 18:52:35.859705','63','test',3,'',7,1),(9,'2024-05-26 18:52:46.210742','64','test',1,'[{\"added\": {}}]',7,1),(10,'2024-05-26 18:52:57.222895','64','test',3,'',7,1),(11,'2024-05-26 18:59:33.367741','65','test',1,'[{\"added\": {}}]',7,1),(12,'2024-05-26 19:02:07.975282','65','test',3,'',7,1),(13,'2024-05-26 19:02:18.610927','66','test',1,'[{\"added\": {}}]',7,1),(14,'2024-05-26 19:02:40.806859','66','test',3,'',7,1),(15,'2024-05-26 19:08:46.452657','67','test',1,'[{\"added\": {}}]',7,1),(16,'2024-05-26 19:09:57.053435','67','test',3,'',7,1),(17,'2024-05-26 19:10:09.480685','68','test',1,'[{\"added\": {}}]',7,1),(18,'2024-05-26 19:10:25.232161','68','test',3,'',7,1),(19,'2024-05-27 08:58:08.815148','59','Іваненко',2,'[]',7,1),(20,'2024-05-27 15:19:25.364380','70','Троцький',3,'',7,1),(21,'2024-05-27 15:28:46.206597','71','тест',3,'',7,1),(22,'2024-05-27 15:34:04.095801','72','Петренко',3,'',7,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'lib_app','book'),(9,'lib_app','bookauthors'),(7,'lib_app','readers'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-05-26 16:41:22.124168'),(2,'auth','0001_initial','2024-05-26 16:41:24.192719'),(3,'admin','0001_initial','2024-05-26 16:41:24.641898'),(4,'admin','0002_logentry_remove_auto_add','2024-05-26 16:41:24.655895'),(5,'admin','0003_logentry_add_action_flag_choices','2024-05-26 16:41:24.673978'),(6,'contenttypes','0002_remove_content_type_name','2024-05-26 16:41:24.863147'),(7,'auth','0002_alter_permission_name_max_length','2024-05-26 16:41:25.019675'),(8,'auth','0003_alter_user_email_max_length','2024-05-26 16:41:25.053929'),(9,'auth','0004_alter_user_username_opts','2024-05-26 16:41:25.069360'),(10,'auth','0005_alter_user_last_login_null','2024-05-26 16:41:25.198378'),(11,'auth','0006_require_contenttypes_0002','2024-05-26 16:41:25.204911'),(12,'auth','0007_alter_validators_add_error_messages','2024-05-26 16:41:25.217917'),(13,'auth','0008_alter_user_username_max_length','2024-05-26 16:41:25.394573'),(14,'auth','0009_alter_user_last_name_max_length','2024-05-26 16:41:25.553848'),(15,'auth','0010_alter_group_name_max_length','2024-05-26 16:41:25.594871'),(16,'auth','0011_update_proxy_permissions','2024-05-26 16:41:25.607987'),(17,'auth','0012_alter_user_first_name_max_length','2024-05-26 16:41:25.764859'),(18,'sessions','0001_initial','2024-05-26 16:41:25.873628');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('k1x8sh8mmbol48tervqwuig8q8va7j1s','.eJxVjM0OgjAQhN-lZ9OwBbbo0bvP0OxPV1ADCYWT8d2FhINmbvN9M2-XaF36tJY8p0HdxYE7_XZM8szjDvRB433yMo3LPLDfFX_Q4m-T5tf1cP8Oeir9to5mWFe6pQIi7oJ20kVqoVEQRMOACtAwmmapEUxaCXaGEI2jMrnPF-vtOIE:1sBIei:BQmPTya1TzH9vGuCrkBKPY9dNGm64xk0Lof1xek4-pY','2024-06-09 18:31:40.141555');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre`
--

LOCK TABLES `genre` WRITE;
/*!40000 ALTER TABLE `genre` DISABLE KEYS */;
INSERT INTO `genre` VALUES (3,'Бізнес'),(13,'Детектив'),(8,'Жахи'),(22,'Інформаційні технології'),(14,'Історична проза'),(7,'Когнітивна наука'),(11,'Медична біографія'),(20,'Наука'),(5,'Наукова фантастика'),(18,'Нон-фікшн'),(4,'Освіта'),(19,'Особистий розвиток'),(17,'Переговори'),(6,'Пригоди'),(23,'Програмування'),(2,'Психологія'),(1,'Саморозвиток'),(10,'Сучасна проза'),(9,'Трилер'),(21,'Українська проза'),(15,'Фентезі'),(16,'Філософія'),(12,'Художня література');
/*!40000 ALTER TABLE `genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loans`
--

DROP TABLE IF EXISTS `loans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loans` (
  `id` int NOT NULL AUTO_INCREMENT,
  `book_id` int DEFAULT NULL,
  `readers_id` int DEFAULT NULL,
  `LoanDate` date NOT NULL,
  `ReturnDate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_id` (`book_id`),
  KEY `readers_id` (`readers_id`),
  CONSTRAINT `loans_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `bookauthors` (`id`),
  CONSTRAINT `loans_ibfk_2` FOREIGN KEY (`readers_id`) REFERENCES `readers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loans`
--

LOCK TABLES `loans` WRITE;
/*!40000 ALTER TABLE `loans` DISABLE KEYS */;
INSERT INTO `loans` VALUES (1,48,16,'2024-05-16',NULL),(2,14,22,'2024-05-08',NULL),(3,96,41,'2024-05-09',NULL),(4,29,4,'2024-05-09',NULL),(5,95,37,'2024-05-02','2024-05-04'),(6,94,21,'2024-05-18','2024-06-04'),(7,18,23,'2024-05-06','2024-05-16'),(8,45,22,'2024-05-08',NULL),(9,96,43,'2024-05-12','2024-05-20'),(10,82,28,'2024-05-16','2024-05-18'),(11,35,34,'2024-05-16','2024-05-24'),(12,14,22,'2024-05-08','2024-05-24'),(13,7,1,'2024-05-19','2024-05-22'),(14,35,9,'2024-05-13','2024-05-21'),(15,80,10,'2024-05-07',NULL),(16,28,22,'2024-05-20',NULL),(17,55,4,'2024-05-12',NULL),(18,66,42,'2024-05-09','2024-05-27'),(19,25,51,'2024-05-10','2024-05-25'),(20,3,34,'2024-05-16','2024-05-28'),(21,5,59,'2024-05-18',NULL),(22,23,37,'2024-05-08',NULL),(23,13,27,'2024-05-19',NULL),(24,11,50,'2024-05-19','2024-06-10'),(25,91,1,'2024-05-04',NULL),(26,20,15,'2024-05-14',NULL),(27,54,46,'2024-05-04','2024-05-15'),(28,82,32,'2024-05-02',NULL),(29,7,57,'2024-05-11','2024-05-23'),(30,79,30,'2024-04-29','2024-05-07'),(31,69,26,'2024-04-29','2024-05-18'),(32,76,53,'2024-04-30',NULL),(33,65,11,'2024-05-18','2024-06-06'),(34,72,10,'2024-05-12',NULL),(35,50,47,'2024-05-07','2024-05-15'),(36,45,15,'2024-05-17',NULL),(37,32,13,'2024-04-30','2024-05-12'),(38,74,34,'2024-05-11',NULL),(39,1,25,'2024-04-30',NULL),(40,14,27,'2024-05-18',NULL),(41,83,46,'2024-05-04',NULL),(42,96,12,'2024-05-21',NULL),(43,28,32,'2024-05-16','2024-05-26'),(44,25,58,'2024-04-30',NULL),(45,51,21,'2024-05-03',NULL),(46,87,56,'2024-04-29',NULL),(47,19,57,'2024-05-03',NULL),(48,5,42,'2024-05-07',NULL),(49,73,39,'2024-04-29','2024-05-02'),(50,13,34,'2024-05-10','2024-05-02'),(51,73,18,'2024-05-04',NULL),(52,26,37,'2024-05-05','2024-05-10'),(53,56,4,'2024-05-10',NULL),(54,41,33,'2024-05-09',NULL),(55,70,12,'2024-05-17',NULL),(56,39,36,'2024-05-17','2024-05-18'),(57,25,51,'2024-05-09','2024-05-19'),(58,80,42,'2024-04-30',NULL),(59,18,44,'2024-05-01','2024-05-06'),(60,32,19,'2024-05-13','2024-05-22'),(61,11,42,'2024-05-02','2024-05-07'),(62,72,15,'2024-05-20',NULL),(63,4,21,'2024-05-13','2024-05-19'),(64,4,19,'2024-05-10','2024-05-11'),(65,53,13,'2024-05-08','2024-05-29'),(66,44,1,'2024-05-14',NULL),(67,27,24,'2024-05-03',NULL),(68,77,23,'2024-05-10','2024-05-13'),(69,35,19,'2024-05-09',NULL),(70,42,44,'2024-05-08',NULL),(71,84,5,'2024-05-17','2024-06-02'),(72,75,28,'2024-04-29',NULL),(73,73,40,'2024-04-30',NULL),(74,40,49,'2024-05-18','2024-05-21'),(75,79,32,'2024-05-04',NULL),(76,55,9,'2024-05-21',NULL),(77,42,15,'2024-05-20',NULL),(78,3,15,'2024-05-02',NULL),(79,8,54,'2024-05-05','2024-05-14'),(80,72,51,'2024-04-29','2024-05-10'),(81,51,36,'2024-05-08',NULL),(82,20,49,'2024-05-11',NULL),(83,17,16,'2024-05-16',NULL),(84,10,10,'2024-05-11','2024-05-27'),(85,15,10,'2024-05-07','2024-05-21'),(86,30,29,'2024-05-09','2024-05-16'),(87,87,6,'2024-05-15','2024-06-04'),(88,39,48,'2024-05-18','2024-05-30'),(89,79,32,'2024-05-04','2024-05-15'),(90,52,59,'2024-05-06','2024-05-26'),(91,62,16,'2024-05-08',NULL),(92,22,54,'2024-05-18',NULL),(93,43,44,'2024-05-07',NULL),(94,59,56,'2024-05-18',NULL),(95,50,59,'2024-05-08',NULL),(96,12,21,'2024-05-07','2024-05-27'),(97,78,56,'2024-05-04','2024-05-09'),(98,44,30,'2024-05-02','2024-05-09'),(99,21,37,'2024-05-09',NULL),(100,49,8,'2024-04-30','2024-05-13');
/*!40000 ALTER TABLE `loans` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Walde`@`%`*/ /*!50003 TRIGGER `after_loans_insert` AFTER INSERT ON `loans` FOR EACH ROW BEGIN
    -- Decrease the available count for the book being loaned
    UPDATE Book
    SET available = available - 1
    WHERE id = NEW.book_id AND available > 0;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`Walde`@`%`*/ /*!50003 TRIGGER `after_loans_update` AFTER UPDATE ON `loans` FOR EACH ROW BEGIN
    IF NEW.returndate IS NOT NULL AND OLD.returndate IS NULL THEN
        UPDATE Book
        SET available = available + 1
        WHERE id = NEW.book_id;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `publishing`
--

DROP TABLE IF EXISTS `publishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing`
--

LOCK TABLES `publishing` WRITE;
/*!40000 ALTER TABLE `publishing` DISABLE KEYS */;
INSERT INTO `publishing` VALUES (5,'Аверс'),(1,'Віват'),(4,'Генеза'),(6,'Кристал'),(2,'КСД'),(3,'Пегас'),(7,'Прометей');
/*!40000 ALTER TABLE `publishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `readers`
--

DROP TABLE IF EXISTS `readers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `readers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `Phone` (`Phone`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `readers`
--

LOCK TABLES `readers` WRITE;
/*!40000 ALTER TABLE `readers` DISABLE KEYS */;
INSERT INTO `readers` VALUES (1,'Іван','Петров','ivan.petrov@gmail.com','+380931234567'),(2,'Марія','Коваль','maria.koval@yahoo.com','+380632345678'),(3,'Олександр','Іванов','oleksandr.ivanov@hotmail.com','+380671234567'),(4,'Юлія','Сидір','yulia.sydor@outlook.com','+380502345678'),(5,'Петро','Бондаренко','petro.bondarenko@gmail.com','+380931111111'),(6,'Олена','Кузьменко','olena.kuzmenko@yahoo.com','+380633333333'),(7,'Андрій','Мельникович','andriy.melnikovuch@hotmail.com','+380674444444'),(8,'Оксана','Лисенко','oksana.lisenko@outlook.com','+380505555555'),(9,'Тарас','Василенко','taras.vasilenko@gmail.com','+380936666666'),(10,'Наталія','Павленко','nataliya.pavlenko@yahoo.com','+380637777777'),(11,'Ігор','Ковальчук','igor.kovalchuk@gmail.com','+380931234568'),(12,'Анна','Литвиненко','anna.litvinenko@yahoo.com','+380632345679'),(13,'Олег','Павленко','oleg.pavlenko@hotmail.com','+380671234568'),(14,'Тетяна','Захарчук','tetiana.zaharchuk@outlook.com','+380502345679'),(15,'Василь','Коваленко','vasyl.kovalenko@gmail.com','+380931111112'),(16,'Марина','Мороз','marina.moroz@yahoo.com','+380633333334'),(17,'Павло','Коваль','pavlo.koval@hotmail.com','+380674444445'),(18,'Олег','Петренко','oleg.petrenko@outlook.com','+380505555556'),(19,'Наталія','Бондар','nataliya.bondar@gmail.com','+380936666667'),(20,'Віктор','Лисенко','viktor.lisenko@yahoo.com','+380637777778'),(21,'Оксана','Шевченко','oksana.shevchenko@gmail.com','+380931234569'),(22,'Ірина','Кравчук','iryna.kravchuk@yahoo.com','+380632345680'),(23,'Сергій','Павлюк','sergiy.pavlyuk@hotmail.com','+380671234569'),(24,'Наталя','Мельник','natalya.melnyk@outlook.com','+380502345680'),(25,'Євген','Іваненко','yevhen.ivanenko@gmail.com','+380931111113'),(26,'Анастасія','Кузьменко','anastasiya.kuzmenko@yahoo.com','+380633333335'),(27,'Дмитро','Григоренко','dmytro.hryhorenko@hotmail.com','+380674444446'),(28,'Ірина','Бондаренко','iryna.bondarenko@outlook.com','+380505555557'),(29,'Олександр','Шевчук','oleksandr.shevchuk@gmail.com','+380936666668'),(30,'Людмила','Морозова','lyudmyla.morozova@yahoo.com','+380637777779'),(31,'Максим','Савченко','maxym.savchenko@gmail.com','+380931234570'),(32,'Оксана','Мельник','oksana.melnyk@yahoo.com','+380632345681'),(33,'Валентин','Кузьмін','valentin.kuzmin@hotmail.com','+380671234570'),(34,'Марія','Іванчук','maria.ivanchuk@outlook.com','+380502345681'),(35,'Андрій','Борисенко','andriy.borysenko@gmail.com','+380931111114'),(36,'Тетяна','Михайленко','tetiana.mykhailenko@yahoo.com','+380633333336'),(37,'Михайло','Ковальчук','mykhaylo.kovalchuk@hotmail.com','+380674444447'),(38,'Ольга','Петренко','olha.petrenko@outlook.com','+380505555558'),(39,'Павло','Лисенко','pavlo.lisenko@gmail.com','+380936666669'),(40,'Надія','Коваленко','nadiya.kovalenko@yahoo.com','+380637777780'),(41,'Олександр','Шевченко','oleksandr.shevchenko@gmail.com','+380931234571'),(42,'Марина','Ковальчук','marina.kovalchuk@yahoo.com','+380632345682'),(43,'Олег','Іванов','oleg.ivanov@hotmail.com','+380671234571'),(44,'Тетяна','Петренко','tetiana.petrenko@outlook.com','+380502345682'),(45,'Віктор','Кузьменко','viktor.kuzmenko@gmail.com','+380931111115'),(46,'Ірина','Мельник','iryna.melnyk@yahoo.com','+380633333337'),(47,'Михайло','Сидоренко','mykhaylo.sydorenko@hotmail.com','+380674444448'),(48,'Тетяна','Павлюк','tetiana.pavlyuk@outlook.com','+380505555559'),(49,'Володимир','Григоренко','volodymyr.hryhorenko@gmail.com','+380936666670'),(50,'Юлія','Бондаренко','yulia.bondarenko@yahoo.com','+380637777781'),(51,'Оксана','Ковальчук','oksana.kovalchuk@gmail.com','+380931234572'),(52,'Миколай','Коваленко','mykolay.kovalenko@yahoo.com','+380632345683'),(53,'Тетяна','Іванова','tetiana.ivanova@hotmail.com','+380671234572'),(54,'Сергій','Сидоренко','sergiy.sydorenko@outlook.com','+380502345683'),(55,'Ірина','Петренко','iryna.petrenko@gmail.com','+380931111116'),(56,'Павло','Шевченко','pavlo.shevchenko@yahoo.com','+380633333338'),(57,'Наталія','Павлюк','nataliya.pavlyuk@hotmail.com','+380674444449'),(58,'Іван','Мельник','ivan.melnyk@outlook.com','+380505555560'),(59,'Марія','Іваненко','maria.ivanenko@gmail.com','+380936666671'),(69,'Максим','Рильський','max@gmail.com','+380959054035'),(73,'Володимир','Винниченко','volodymyr@gmail.com','+380320948324');
/*!40000 ALTER TABLE `readers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-29 18:50:18
