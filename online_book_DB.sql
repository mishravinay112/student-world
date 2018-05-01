/*
SQLyog - Free MySQL GUI v5.17
Host - 5.0.24-community-nt : Database - online_book
*********************************************************************
Server version : 5.0.24-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `online_book`;

USE `online_book`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `abhinesh` */

DROP TABLE IF EXISTS `abhinesh`;

CREATE TABLE `abhinesh` (
  `id` int(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `abhinesh` */

/*Table structure for table `admin_login` */

DROP TABLE IF EXISTS `admin_login`;

CREATE TABLE `admin_login` (
  `admin_id` varchar(100) NOT NULL,
  `admin_password` varchar(100) default NULL,
  PRIMARY KEY  (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin_login` */

insert into `admin_login` (`admin_id`,`admin_password`) values ('user','123456');
insert into `admin_login` (`admin_id`,`admin_password`) values ('rahul','123456');
insert into `admin_login` (`admin_id`,`admin_password`) values ('vikas','123456');
insert into `admin_login` (`admin_id`,`admin_password`) values ('vishvesh','123456');

/*Table structure for table `blockedreguser` */

DROP TABLE IF EXISTS `blockedreguser`;

CREATE TABLE `blockedreguser` (
  `name` varchar(50) default NULL,
  `email` varchar(90) default NULL,
  `mobile` varchar(90) default NULL,
  `password` varchar(90) default NULL,
  `address` varchar(90) default NULL,
  `gender` varchar(50) default NULL,
  `state` varchar(40) default NULL,
  `city` varchar(40) default NULL,
  `area` varchar(50) default NULL,
  `pincode` varchar(60) default NULL,
  `status` int(20) default NULL,
  `user_id` int(20) default NULL,
  `college` varchar(50) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `blockedreguser` */

/*Table structure for table `event_detail` */

DROP TABLE IF EXISTS `event_detail`;

CREATE TABLE `event_detail` (
  `email_id` varchar(50) NOT NULL default '',
  `event_description` varchar(300) default NULL,
  `file_path` varchar(200) default NULL,
  `event_name` varchar(50) default NULL,
  `event_id` int(11) NOT NULL auto_increment,
  `event_status` int(20) default '0',
  `eventdate` date default NULL,
  PRIMARY KEY  (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `event_detail` */

insert into `event_detail` (`email_id`,`event_description`,`file_path`,`event_name`,`event_id`,`event_status`,`eventdate`) values ('rahul@gmail.com','Campus function and play.','C:\\Users\\vicky143\\Desktop\\Aartek\\Online_Book\\Online_Bookstudent_world.doc','Campus',12,1,'2016-03-18');
insert into `event_detail` (`email_id`,`event_description`,`file_path`,`event_name`,`event_id`,`event_status`,`eventdate`) values ('rahul@gmail.com','Start a annual function and play in my college.so you can participate and enjoy the function and play.','C:\\Users\\vicky143\\Desktop\\Aartek\\Online_Book\\Online_Book0801CA143D12_MCA_MCA_VIKAS_HARLE.pdf','Annual Function 2016',13,1,'2016-03-30');
insert into `event_detail` (`email_id`,`event_description`,`file_path`,`event_name`,`event_id`,`event_status`,`eventdate`) values ('rahul@gmail.com','dnjan knd kwd kq xj j ','C:\\Users\\vicky143\\Desktop\\Aartek\\Online_Book\\Online_Bookstudent_world.doc','special java class',14,1,'2016-03-30');

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `name` varchar(50) default NULL,
  `e_mail` varchar(100) NOT NULL,
  `mobile_number` varchar(15) default NULL,
  `password` varchar(30) default NULL,
  `address` varchar(200) default NULL,
  `gender` varchar(10) default NULL,
  `state` varchar(30) default NULL,
  `city` varchar(50) default NULL,
  `area` varchar(50) default NULL,
  `pincode` varchar(15) default NULL,
  `status` int(5) default NULL,
  `user_id` int(10) unsigned NOT NULL auto_increment,
  `college` varchar(100) default NULL,
  PRIMARY KEY  (`e_mail`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('devesh','devesh.pandey17892@gmail.com','7894561230','123456','ujjain','Male','MP','Ujjan','Ujjain','456001',1,22,'svits');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('nitin','pachauri.nitin92@gmail.com','7894561230','123456','Indore','Male','MP','Indore','indore','452003',1,23,'mit');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('rahul','rahul@gmail.com','7047074155','123456','Gwalior','Male','MP','indore','Gwalior','452008',1,18,'sgsits indore');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('RajKumar Verma','rajkumar.gehlot85@gmail.com','9999999999','aaaaaaa','123','Male','MP','Indore','palasiya','452008',1,20,'mit');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('user','user@gmail.com','7894561230','123456','indore','Male','MP','Indore','indore','452008',0,24,'medi caps');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('Navin Jain','shivbaba202@gmail.com','9713950147','aaaaaaa','265','Male','MP','Indore','indore','452001',1,19,'mit');
insert into `registration` (`name`,`e_mail`,`mobile_number`,`password`,`address`,`gender`,`state`,`city`,`area`,`pincode`,`status`,`user_id`,`college`) values ('vikas','vikasharle143@gmail.com','8817171420','123456','Indore','Male','MP','Indore','Indore','452003',1,26,'sgsits indore');

/*Table structure for table `salesdetail` */

DROP TABLE IF EXISTS `salesdetail`;

CREATE TABLE `salesdetail` (
  `photo_path` varchar(300) default NULL,
  `course_name` varchar(300) default NULL,
  `course_Stream` varchar(300) default NULL,
  `course_subject` varchar(300) default NULL,
  `year` varchar(150) default NULL,
  `Writer_name` varchar(300) default NULL,
  `Edition` varchar(300) default NULL,
  `Book_name` varchar(300) default NULL,
  `price` varchar(300) default NULL,
  `Negotiable_status` varchar(300) default NULL,
  `book_description` varchar(900) default NULL,
  `email` varchar(100) default NULL,
  `pending_status` tinyint(10) default '0',
  `auto` int(10) NOT NULL auto_increment,
  KEY `auto` (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `salesdetail` */

insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/images.jpg','B.E','Computer Science',' Fluency In Information Technology ',NULL,'abc','abc','abc','100','yes','abc','rahul@gmail.com',1,66);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/Laxmi-Narayan-Kingdom.jpg','B.E','Information Technology','Theory of Computation',NULL,'BalaGuruSamy','2008','Complete Book','200','yes','good condition','shivbaba202@gmail.com',1,67);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/java1.jpg','MCA','Computer Application','Internet & JAVA Programming',NULL,'M. Harwani','5th','Practical jav project for beginners','300','yes','Nice book of java','rahul@gmail.com',1,69);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/java4.jpg','MCA','Computer Application','Internet & JAVA Programming',NULL,'Wiki books','Wiki books edition','Java Programming','250','yes','Awesome book.','rahul@gmail.com',1,70);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mba1.jpg','M.Com','Finance Management','Principles of Management',NULL,'Vijay Kanabar','6th','MBA Fundamental Management','400','yes','All Detail and nice deeply description.','rahul@gmail.com',1,71);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mba2.jpg','MBA','Human Resource (HR) Management','  Strategic HRM',NULL,'Esther Cameron & mike Green','2nd ','Making sense of change management','180','yes','Change management and other manage detail.','rahul@gmail.com',1,72);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mcom2.jpg','M.Com','Finance Management','Financial Accounting',NULL,'Richard','9th','Financial Management','600','yes','good description about Finance management.','rahul@gmail.com',1,73);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mba4.jpg','MBA','Finance Management','Principles of Management',NULL,'Richard L.Daft','7th','UnderStanding Management','700','yes','UnderStanding finance  management detail','rahul@gmail.com',1,74);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/bio3.jpg','B.Tech','Bio-Technology','Microbiology',NULL,'Horizon','6th','Biology','450','yes','Success Biology','rahul@gmail.com',1,75);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mcom3.jpg','Ph.D.','Banking & Finance','Acounting',NULL,'abc','abc','abc','200','yes','abc','devesh.pandey17892@gmail.com',1,78);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/mba3.jpg','M.Sc','Cs&IT','Principles of Compiler Design-I',NULL,'cde','cde','cde','100','yes','abc','rahul@gmail.com',1,81);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/bio3.jpg','M.Sc','Cs&IT','Principles of Compiler Design-I',NULL,'wer','wer','wer','230','yes','wer','rahul@gmail.com',1,86);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file12/be.jpg','M.Sc','Cs&IT','Principles of Compiler Design-I',NULL,'navin','4th','principles of compiler','500','yes','abc','rahul@gmail.com',1,89);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/file12/logo.jpg','M.Sc','Cs&IT','Principles of Compiler Design-I',NULL,'asdasd','asasd','ads','200','yes','asd','rahul@gmail.com',1,91);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file12/o.jpg','B.E','Information Technology','Programming and Data Structures',NULL,'Ankit','1','AAsan he java','50','yes','Padloo dhyan se','rahul@gmail.com',1,92);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/file1/javacontainer_s.jpg','B.Tech','Bio-Technology','Microbiology',NULL,'abc','5th','abc','200','yes','abc','rahul@gmail.com',1,93);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/EC.jpg','B.Tech','Bio-Technology','Microbiology',NULL,'abc','efg','efg','300','yes','efg','rahul@gmail.com',1,94);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/WIN_20160306_140457.JPG','B.Tech','Bio-Technology','Microbiology',NULL,'vikas','vikas','vikas','123','yes','vikas','rahul@gmail.com',1,95);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/logo.jpg','B.Tech','Bio-Technology','Microbiology',NULL,'vikas','vikas','vikas','456','yes','vikas','rahul@gmail.com',1,96);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/java3.jpg','MCA','Computer Application','Internet & JAVA Programming',NULL,'balaguru samay','5th','Java Programming','250','yes','Best for java programming.','rahul@gmail.com',1,97);
insert into `salesdetail` (`photo_path`,`course_name`,`course_Stream`,`course_subject`,`year`,`Writer_name`,`Edition`,`Book_name`,`price`,`Negotiable_status`,`book_description`,`email`,`pending_status`,`auto`) values ('http://192.168.0.136:8080/Online_Book/file1/WP_20150523_11_38_37_Pro.jpg','MCA','Computer Application','Operating System',NULL,'stalling','1.1','os','150','yes','best for os','rahul@gmail.com',1,98);

/*Table structure for table `user_login` */

DROP TABLE IF EXISTS `user_login`;

CREATE TABLE `user_login` (
  `name` varchar(40) default NULL,
  `password` varchar(30) default NULL,
  `confirm_password` varchar(30) default NULL,
  `email` varchar(50) NOT NULL,
  `mobile` int(10) default NULL,
  `state` varchar(30) default NULL,
  `city` varchar(30) default NULL,
  `colony` varchar(40) default NULL,
  `pincode` varchar(20) default NULL,
  `address` varchar(200) default NULL,
  `gender` varchar(10) default NULL,
  PRIMARY KEY  (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_login` */

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
