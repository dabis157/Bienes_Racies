/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 10.1.38-MariaDB : Database - bienes_raices
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bienes_raices` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bienes_raices`;

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `ID_BLOG` int(11) NOT NULL,
  `ID_PUBLISHER` int(11) DEFAULT NULL,
  `DATE_PUBLISHED` date DEFAULT NULL,
  `BLOG` text,
  `DESCRIPCION` text,
  `Titulo` text,
  PRIMARY KEY (`ID_BLOG`),
  KEY `Publisher` (`ID_PUBLISHER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

/*Table structure for table `history_changes` */

DROP TABLE IF EXISTS `history_changes`;

CREATE TABLE `history_changes` (
  `ID_CHANGE` text NOT NULL,
  `CHANGE_TYPE` int(11) DEFAULT NULL,
  `CHANGE_MADE_BY` int(11) DEFAULT NULL,
  `TIME_CHANGE` time DEFAULT NULL,
  `DATE_CHANGE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `history_changes` */

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `ID_MESSAJE` int(11) NOT NULL,
  `ID_DESTENY` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `SUBJECT` int(11) DEFAULT NULL,
  `MESSAGE` text,
  PRIMARY KEY (`ID_MESSAJE`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `messages` */

/*Table structure for table `preloaded_data` */

DROP TABLE IF EXISTS `preloaded_data`;

CREATE TABLE `preloaded_data` (
  `PRELOAD_DATA` text NOT NULL,
  `IMG` text,
  `LEGEND` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `preloaded_data` */

/*Table structure for table `propiedad` */

DROP TABLE IF EXISTS `propiedad`;

CREATE TABLE `propiedad` (
  `ID_PROPIEDAD` int(11) NOT NULL,
  `TITULO` tinytext,
  `CANT_SOLICITADA` decimal(10,0) DEFAULT NULL,
  `CANT_BATHROOMS` int(11) DEFAULT NULL,
  `CANT_CARS` int(11) DEFAULT NULL,
  `CANT_BEDROOMS` int(11) DEFAULT NULL,
  `DESCRIPCION` text,
  `ID_PUBLISHER` int(11) DEFAULT NULL,
  `LOCATION` text,
  `POST_CODE` int(11) DEFAULT NULL,
  `ACTIVE_STATE` int(11) DEFAULT NULL,
  `DESCRIPCION_BREVE` tinytext,
  PRIMARY KEY (`ID_PROPIEDAD`),
  KEY `ID_PUBLISHER` (`ID_PUBLISHER`),
  CONSTRAINT `propiedad_ibfk_1` FOREIGN KEY (`ID_PUBLISHER`) REFERENCES `users` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `propiedad` */

insert  into `propiedad`(`ID_PROPIEDAD`,`TITULO`,`CANT_SOLICITADA`,`CANT_BATHROOMS`,`CANT_CARS`,`CANT_BEDROOMS`,`DESCRIPCION`,`ID_PUBLISHER`,`LOCATION`,`POST_CODE`,`ACTIVE_STATE`,`DESCRIPCION_BREVE`) values 
(4100,'Casa terminados de lujo',3000000,3,3,3,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',85621,1,NULL),
(4101,'Casa con alberca',290000,3,4,4,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',85621,1,NULL),
(4102,'Casa de Lujo en el Lago',30000000,2,3,4,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',85621,1,NULL),
(4103,'Casa fuera de la ciudad',2000000,2,4,5,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',85621,1,NULL),
(4105,'Casa con alberca',543455,3,4,4,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',1,1,NULL),
(4106,'CASA DE LUJO 2',44,4,3,4,'Proin consequat viverra sapien, malesuada tempor tortor feugiat vitae. In dictum felis et nunc aliquet molestie. Proin tristique commodo felis, sed auctor elit auctor pulvinar. Nunc porta, nibh quis convallis sollicitudin, arcu nisl semper mi, vitae sagittis lorem dolor non risus. Vivamus accumsan maximus est, eu mollis mi. Proin id nisl vel odio semper hendrerit. Nunc porta in justo finibus tempor. Suspendisse lobortis dolor quis elit suscipit molestie. Sed condimentum, erat at tempor finibus, urna nisi fermentum est, a dignissim nisi libero vel est. Donec et imperdiet augue. Curabitur malesuada sodales congue. Suspendisse potenti. Ut sit amet convallis nisi.\r\n\r\nAliquam lectus magna, luctus vel gravida nec, iaculis ut augue. Praesent ac enim lorem. Quisque ac dignissim sem, non condimentum orci. Morbi a iaculis neque, ac euismod felis. Fusce augue quam, fermentum sed turpis nec, hendrerit dapibus ante. Cras mattis laoreet nibh, quis tincidunt odio fermentum vel. Nulla facilisi.\r\n\r\nNosotros Anuncios Blog Contacto',410016,'ARIZONA',85621,1,NULL);

/*Table structure for table `purchase` */

DROP TABLE IF EXISTS `purchase`;

CREATE TABLE `purchase` (
  `ID_PERCHASES` int(11) DEFAULT NULL,
  `PAYPAL_PERCHASE` text,
  `FILE` blob,
  `DATE` date DEFAULT NULL,
  `TIME` time DEFAULT NULL,
  `COMENTS` text,
  `ID_PURCHESER` int(11) DEFAULT NULL,
  KEY `ID_PURCHESER` (`ID_PURCHESER`),
  CONSTRAINT `purchase_ibfk_1` FOREIGN KEY (`ID_PURCHESER`) REFERENCES `users` (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `purchase` */

/*Table structure for table `regions` */

DROP TABLE IF EXISTS `regions`;

CREATE TABLE `regions` (
  `ID_REGIONS` int(11) NOT NULL,
  `REGIONS` text,
  `STATES` text,
  PRIMARY KEY (`ID_REGIONS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `regions` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID_USER` int(11) NOT NULL,
  `EMAIL` text,
  `PASSWORD` text,
  `UNAME` text,
  `USURNAME` text,
  `AGE` int(11) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `REGION` int(11) DEFAULT NULL,
  `ESTADO DE NACIMIENTO` int(11) DEFAULT NULL,
  `TIPO DE USUARIO` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_USER`),
  KEY `REGION` (`REGION`,`ESTADO DE NACIMIENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`ID_USER`,`EMAIL`,`PASSWORD`,`UNAME`,`USURNAME`,`AGE`,`SEX`,`REGION`,`ESTADO DE NACIMIENTO`,`TIPO DE USUARIO`) values 
(410016,'SABRO@GMAIL.COM','XXX','XXD','YO\r\n',21,1,0,0,0);

/* Procedure structure for procedure `BRING_AD` */

/*!50003 DROP PROCEDURE IF EXISTS  `BRING_AD` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `BRING_AD`(
IN _ID INT
)
SELECT TITULO,CANT_SOLICITADA,CANT_BATHROOMS,CANT_CARS,CANT_BEDROOMS,DESCRIPCION,LOCATION,USERS.UNAME,USERS.USURNAME 
FROM PROPIEDAD INNER JOIN USERS ON 
PROPIEDAD.ID_PUBLISHER = USERS.ID_USER WHERE ID_PROPIEDAD=_ID */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
