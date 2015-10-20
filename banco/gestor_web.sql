# Host: 127.0.0.1  (Version: 5.5.16)
# Date: 2015-10-20 15:17:51
# Generator: MySQL-Front 5.3  (Build 4.156)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "acessos"
#

CREATE TABLE `acessos` (
  `id_acesso` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_acesso`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "acessos"
#

INSERT INTO `acessos` VALUES (1,'Institucional','1'),(2,'Imprensa','1'),(3,'Usuário','1');

#
# Structure for table "acessos_id"
#

CREATE TABLE `acessos_id` (
  `id_acessos_id` int(11) NOT NULL AUTO_INCREMENT,
  `id_acessos` int(11) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `url` text,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_acessos_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "acessos_id"
#

INSERT INTO `acessos_id` VALUES (1,3,'Cadastrar','usuario/#cadastro','1'),(2,3,'Permissões','acessos/#cadastro','1'),(3,1,'Sobre nós','sobre/#cadastro','1'),(4,2,'Banner','banner/#cadastro','1'),(5,2,'Notícias','noticias/#cadastro','1');

#
# Structure for table "acessos_usuario"
#

CREATE TABLE `acessos_usuario` (
  `id_acessos_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) DEFAULT NULL,
  `id_acessos_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_acessos_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "acessos_usuario"
#

INSERT INTO `acessos_usuario` VALUES (1,4,1),(2,4,2),(3,4,3),(4,4,4),(5,4,5);

#
# Structure for table "banner"
#

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `data_mostrar` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "banner"
#

INSERT INTO `banner` VALUES (1,'teste 01 kkk','2015-09-17 16:18:53','1988-12-23 12:12:00','0000-00-00 00:00:00','1');

#
# Structure for table "midia"
#

CREATE TABLE `midia` (
  `id_midia` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` char(3) DEFAULT NULL,
  `url` text,
  `url_mini` text,
  `principal` char(1) DEFAULT NULL,
  `id_banner` int(11) DEFAULT NULL,
  `id_noticias` int(11) DEFAULT NULL,
  `id_sobre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_midia`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "midia"
#

INSERT INTO `midia` VALUES (1,'F','201509171618510.png','201509171618510.png','0',1,0,NULL),(2,'F','201509171618511.png','201509171618511.png','1',1,0,NULL),(3,'F','201509171619370.png','201509171619370.png','0',1,0,NULL),(7,'F','201509171653060.jpg','201509171653060.jpg','0',1,0,NULL),(11,'F','201509171932180.jpg','201509171932180.jpg','0',0,2,0),(12,'F','201509172130260.jpg','201509172130260.jpg','1',0,2,0),(14,'F','201509172229480.jpg','201509172229480.jpg','1',0,0,11);

#
# Structure for table "noticias"
#

CREATE TABLE `noticias` (
  `id_noticias` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `sub_titulo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `data_cadastro` datetime DEFAULT NULL,
  `data_mostrar` datetime DEFAULT NULL,
  `data_final` datetime DEFAULT NULL,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_noticias`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

#
# Data for table "noticias"
#

INSERT INTO `noticias` VALUES (2,'loko iirrulll','sub','<p><strong>kkkkk&nbsp; m&oacute; doidera mesmo em kkkkkk.....</strong><strong><br /></strong></p>\r\n<p>&nbsp;</p>\r\n<ul>\r\n<li><strong>aqui mesmo massa kkkkk.</strong></li>\r\n<li><strong>doido</strong></li>\r\n<li><strong>pint&atilde;o</strong></li>\r\n</ul>','2015-09-17 19:03:32','1988-12-23 12:12:00','0000-00-00 00:00:00','1'),(3,'vamos ver mesmo','a','<p>asasas</p>','2015-09-17 22:32:38','1988-12-23 12:12:00','0000-00-00 00:00:00','1');

#
# Structure for table "sobre_nos"
#

CREATE TABLE `sobre_nos` (
  `id_sobre` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_sobre`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "sobre_nos"
#

INSERT INTO `sobre_nos` VALUES (8,'jnjn','<p><em>0ooo<strong> jnjjnnkkmkmk</strong><br /></em></p>','0'),(9,'saxasxasx','<p>asxasx</p>\r\n<p></p>\r\n<p>vhgvghvhv</p>','1'),(10,'sdcsdc','<p><span style=\"text-decoration: line-through;\">scsdcsdc</span></p>\r\n<p>&nbsp;</p>\r\n<p>A vc esta de brincadeira.....<span style=\"text-decoration: line-through;\"><br /></span></p>','0'),(11,'tabelas teste memu','<ol>\r\n<li>&nbsp;tirei a tabela kkkkk</li>\r\n<li>kkkkkkkk</li>\r\n<li>doido</li>\r\n<li>pintinho</li>\r\n</ol>','1'),(12,'ddd','<p>muito foda mesmo amno</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><em><strong>vem ne mim sexta feira</strong></em></p>','1');

#
# Structure for table "usuario"
#

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `login` varchar(255) DEFAULT NULL,
  `senha` text,
  `data_cadastro` datetime DEFAULT NULL,
  `tipo_usuario` varchar(255) DEFAULT NULL,
  `situacao` char(1) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "usuario"
#

INSERT INTO `usuario` VALUES (2,'Kelli lindona','ckcesaraugusto@gmail.com','keka','ea6e1b7012df6a1339f927b9837c97ef','2015-09-18 16:15:42','Gerente','1'),(4,'Administrador','ckcesaraugusto@gmail.com','admin','46a9b1aee0a54812e33f2f340a4d1735','2015-09-18 18:46:56','Administrador','2'),(6,'César Augusto Prado da Silva','ckcesaraugusto@gmail.com','ckcesar','a4eefea056430515f7745d900cbf36f4','2015-09-22 18:25:14','Funcionário','1');
