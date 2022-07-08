/*
SQLyog Community Edition- MySQL GUI v8.03 
MySQL - 5.6.12-log : Database - hospital_logs
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`hospital_logs` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `hospital_logs`;

/*Table structure for table `complaints` */

DROP TABLE IF EXISTS `complaints`;

CREATE TABLE `complaints` (
  `complaints_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_lid` int(11) DEFAULT NULL,
  `user_lid` int(11) DEFAULT NULL,
  `complaint` varchar(60) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  `reply` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`complaints_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `complaints` */

insert  into `complaints`(`complaints_id`,`hospital_lid`,`user_lid`,`complaint`,`date`,`reply`) values (1,4,2,'bad',NULL,'will be fine'),(2,4,6,'fake doctors',NULL,'ok'),(3,4,6,'high medical fees','2021-05-18','xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx'),(4,10,2,'sbabb','2021-06-02','pending');

/*Table structure for table `file_keys` */

DROP TABLE IF EXISTS `file_keys`;

CREATE TABLE `file_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `att1` varchar(50) DEFAULT NULL,
  `att2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `file_keys` */

insert  into `file_keys`(`id`,`file_id`,`att1`,`att2`) values (1,1,'uadhar_no','uname');

/*Table structure for table `hospital` */

DROP TABLE IF EXISTS `hospital`;

CREATE TABLE `hospital` (
  `hospital_id` int(11) NOT NULL AUTO_INCREMENT,
  `hname` varchar(60) DEFAULT NULL,
  `hplace` varchar(60) DEFAULT NULL,
  `hpost` varchar(60) DEFAULT NULL,
  `hpin` varchar(60) DEFAULT NULL,
  `hemail` varchar(60) DEFAULT NULL,
  `hphone` varchar(60) DEFAULT NULL,
  `hlicense_no` varchar(60) DEFAULT NULL,
  `hwebsite` varchar(60) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`hospital_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `hospital` */

insert  into `hospital`(`hospital_id`,`hname`,`hplace`,`hpost`,`hpin`,`hemail`,`hphone`,`hlicense_no`,`hwebsite`,`login_id`,`status`) values (1,'santhi','omasseri','omassery','876789','santhi@gmail.com','9876543234','san78','www.santhi.com',4,'approved'),(2,'mims','puthiyara','calicut','673098','mims@gmail.com','9876543245','mims67','www.mims.com',5,'approved'),(3,'zd','strh','etg','1','dsc@kj.com','dsv','jhfjh','jgff',9,'approved'),(4,'bmh','calicut','vfrc','676767','bmh@gmail.com','3456789900','ytd777','bmh.com',10,'approved'),(5,'m','cfd','fff','673008','riss.mamtha@gmail.com','9089898989','45677','www.m',13,'rejected');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`login_id`,`username`,`password`,`type`) values (1,'admin','admin','admin'),(2,'u','u','user'),(3,'v','v','viewer'),(4,'h','hh','hospital'),(5,'mims@gmail.com','mims','hospital'),(6,'anju@gmail.com','anju','user'),(7,'insu@gmail.com','insu','rejected'),(8,'shusua@gmail.com','bsnsh','rejected'),(9,'dsc@kj.com','utdfu','hospital'),(10,'bmh@gmail.com','bmhh','hospital'),(11,'hashimomy@gmail.com','omy','user'),(12,'sahadedvp@gmail.com','sahad','user'),(13,'riss.mamtha@gmail.com','mm','rejected');

/*Table structure for table `medical_record` */

DROP TABLE IF EXISTS `medical_record`;

CREATE TABLE `medical_record` (
  `medical_record_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_lid` int(11) DEFAULT NULL,
  `user_lid` int(11) DEFAULT NULL,
  `file` varchar(60) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`medical_record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `medical_record` */

insert  into `medical_record`(`medical_record_id`,`hospital_lid`,`user_lid`,`file`,`name`,`date`,`details`) values (1,4,11,'1.docx','POS','2021-06-08','FBPS,BBPS,BP,TSH');

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL AUTO_INCREMENT,
  `hospital_lid` int(11) DEFAULT NULL,
  `user_lid` int(11) DEFAULT NULL,
  `ratings` varchar(60) DEFAULT NULL,
  `date` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`rating_id`,`hospital_lid`,`user_lid`,`ratings`,`date`) values (1,4,2,'3',NULL),(2,5,6,'2.0','2021-05-18'),(3,10,2,'3.5','2021-06-02');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `uname` varchar(60) DEFAULT NULL,
  `udob` varchar(60) DEFAULT NULL,
  `ugender` varchar(60) DEFAULT NULL,
  `uplace` varchar(60) DEFAULT NULL,
  `uemail` varchar(60) DEFAULT NULL,
  `uphone` varchar(60) DEFAULT NULL,
  `uadhar_no` varchar(60) DEFAULT NULL,
  `uphoto` varchar(60) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`uname`,`udob`,`ugender`,`uplace`,`uemail`,`uphone`,`uadhar_no`,`uphoto`,`login_id`) values (1,'anu',NULL,'female','pala','anu@gmail.com','8789876545','123456789012','r3.jpg',2),(2,'aysha','2021-05-20','Female','vattoli','aysha@gmail.com','9638529632','963852369852','FB_IMG_1580611312980.jpg',6),(3,'hashim','2000-05-14','male','calicut','hashimomy@gmail.com','9870654321','342354654357','hashim.jpg',11),(4,'sahad','1998-09-01','male','kondotty','sahadedvp@gmail.com','9876876789','987654565434','mohanlal_0001_750.jpg',12);

/*Table structure for table `viewer` */

DROP TABLE IF EXISTS `viewer`;

CREATE TABLE `viewer` (
  `viewer_id` int(11) NOT NULL AUTO_INCREMENT,
  `vname` varchar(60) DEFAULT NULL,
  `vlocation` varchar(60) DEFAULT NULL,
  `vemail` varchar(60) DEFAULT NULL,
  `vphone` varchar(60) DEFAULT NULL,
  `vtype` varchar(60) DEFAULT NULL,
  `vregister_no` varchar(60) DEFAULT NULL,
  `login_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`viewer_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `viewer` */

insert  into `viewer`(`viewer_id`,`vname`,`vlocation`,`vemail`,`vphone`,`vtype`,`vregister_no`,`login_id`) values (1,'health insurance','vadakra','hh@gmail.com','9876543456','organisation','hh90',3),(2,'insurance team','Calicut','insu@gmail.com','9638523695','organization','insu678',7),(3,'hsshj','hssuuw','shusua@gmail.com','9589789878','hsjdj','hsjsjs',8);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
