# MySQL Navigator Xport
# Database: paperwork
# root@192.168.10.1

# CREATE DATABASE paperwork;
# USE paperwork;

#
# Table structure for table 'attachments'
#

# DROP TABLE IF EXISTS attachments;
CREATE TABLE `attachments` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `doc_ind` int(8) unsigned default NULL,
  `caption` varchar(100) default NULL,
  `urn` varchar(255) default NULL,
  `doc_file` varchar(255) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'attachments'
#

INSERT INTO attachments VALUES (1,8,'1','p:\\attachments\\NAIMEN.doc.dat','NAIMEN.doc');
INSERT INTO attachments VALUES (2,9,'1','p:\\attachments\\BOOTLOG.TXT.dat','BOOTLOG.TXT');
INSERT INTO attachments VALUES (3,14,'1','p:\\attachments\\~$иказ от 29.06.2004г..doc.dat','~$иказ от 29.06.2004г..doc');
INSERT INTO attachments VALUES (4,18,' rt62345624645','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (5,18,'vb7887945634646','p:\\attachments\\log.TXT.dat','log.TXT');
INSERT INTO attachments VALUES (6,19,'78i78979','p:\\attachments\\log.TXT.dat','log.TXT');
INSERT INTO attachments VALUES (26,226,'пример','p:\\attachments\\Социальная помощь АО ПК ЮПМ.doc.dat','Социальная помощь АО ПК ЮПМ.doc');
INSERT INTO attachments VALUES (27,232,'Сведения','p:\\attachments\\Всего оказано с января по октябрь 2004г.doc.dat','Всего оказано с января по октябрь 2004г.doc');
INSERT INTO attachments VALUES (33,237,'приложение 1','p:\\attachments\\Об оказ.спонс.пом.Курсай.doc.dat','Об оказ.спонс.пом.Курсай.doc');
INSERT INTO attachments VALUES (37,244,'Приказ  от 01.12.2004г.','p:\\attachments\\Приказ от 01.12.2004 г..doc.dat','Приказ от 01.12.2004 г..doc');
INSERT INTO attachments VALUES (38,294,'ПРИЛОЖЕНИЕ  1','p:\\attachments\\version.txt.dat','version.txt');
INSERT INTO attachments VALUES (39,319,'','p:\\attachments\\Рабоч.инструкция электромонтра 5 разряда. 24.06.04..doc.dat','Рабоч.инструкция электромонтра 5 разряда. 24.06.04..doc');
INSERT INTO attachments VALUES (35,236,'приложение 1','p:\\attachments\\Об оказ.спонс.пом.Курсай.doc.dat','Об оказ.спонс.пом.Курсай.doc');
INSERT INTO attachments VALUES (36,239,'приложение 1','p:\\attachments\\Об оказ.спонс.пом.Курсай.doc.dat','Об оказ.спонс.пом.Курсай.doc');
INSERT INTO attachments VALUES (40,319,'','p:\\attachments\\РИ водителя автопогрузчика ОВиЭ.doc.dat','РИ водителя автопогрузчика ОВиЭ.doc');
INSERT INTO attachments VALUES (41,434,'1213123123','p:\\attachments\\version.txt.dat','version.txt');
INSERT INTO attachments VALUES (42,435,'12312312','p:\\attachments\\log.TXT.dat','log.TXT');
INSERT INTO attachments VALUES (43,435,'1232323','p:\\attachments\\version.txt.dat','version.txt');
INSERT INTO attachments VALUES (44,436,'1','p:\\attachments\\version.txt.dat','version.txt');
INSERT INTO attachments VALUES (62,480,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (60,478,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (57,460,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (61,479,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (58,476,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (59,477,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (63,481,'3333','p:\\attachments\\smart_client.txt.dat','smart_client.txt');
INSERT INTO attachments VALUES (64,482,'11','p:\\attachments\\868d6c.asm.dat','868d6c.asm');
INSERT INTO attachments VALUES (65,482,'`12222','p:\\attachments\\8693c8.asm.dat','8693c8.asm');
INSERT INTO attachments VALUES (66,483,'11','p:\\attachments\\868d6c.asm.dat','868d6c.asm');
INSERT INTO attachments VALUES (67,483,'`12222','p:\\attachments\\8693c8.asm.dat','8693c8.asm');
INSERT INTO attachments VALUES (68,490,'11','p:\\attachments\\868d6c.asm.dat','868d6c.asm');
INSERT INTO attachments VALUES (69,490,'`12222','p:\\attachments\\8693c8.asm.dat','8693c8.asm');
INSERT INTO attachments VALUES (70,544,'План','p:\\attachments\\План взаимодействия пользователей документооборота департамента инфраструктуры.gif.dat','План взаимодействия пользователей документооборота департамента инфраструктуры.gif');
INSERT INTO attachments VALUES (72,569,'Доклад','p:\\attachments\\Доклад об ОИТ.sxw.dat','Доклад об ОИТ.sxw');
INSERT INTO attachments VALUES (73,594,'Трафик Интернет','p:\\attachments\\traffik_internet.gif.dat','traffik_internet.gif');
INSERT INTO attachments VALUES (74,641,'договор','p:\\attachments\\dogovor.pdf.dat','dogovor.pdf');
INSERT INTO attachments VALUES (75,641,'Зарплатный кредит','p:\\attachments\\ЗК.doc.dat','ЗК.doc');
INSERT INTO attachments VALUES (78,656,'план','p:\\attachments\\План подготовки.doc.dat','План подготовки.doc');
INSERT INTO attachments VALUES (77,643,'Договор','p:\\attachments\\Колдог05.doc.dat','Колдог05.doc');

#
# Table structure for table 'departments'
#

# DROP TABLE IF EXISTS departments;
CREATE TABLE `departments` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(50) default NULL,
  `root_dept_id` int(8) NOT NULL default '0',
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'departments'
#

INSERT INTO departments VALUES (1,'Департамент инфраструктуры',0);
INSERT INTO departments VALUES (2,'Департамент финансов',0);
INSERT INTO departments VALUES (3,'Охрана и безопастность АО “ПК“ЮПМ”',1);
INSERT INTO departments VALUES (4,'Управление кадров ОМР и внедрен СМК',1);
INSERT INTO departments VALUES (5,'Отдел комплектации и подготовки кадров',4);
INSERT INTO departments VALUES (6,'Отдел офисменеджерной работы',4);
INSERT INTO departments VALUES (7,'Разработка и внедрение С М К',4);
INSERT INTO departments VALUES (8,'Отдел информационных технологий',1);
INSERT INTO departments VALUES (9,'Медицинская санитарная часть',1);
INSERT INTO departments VALUES (10,'Оздоровительный комплекс',1);
INSERT INTO departments VALUES (11,'Столовая',1);
INSERT INTO departments VALUES (12,'Департамент экономического анализа и производствен',0);
INSERT INTO departments VALUES (13,'Отдел экономического анализа и перспектив развития',12);
INSERT INTO departments VALUES (14,'Отдел производственных затрат экономического анали',12);
INSERT INTO departments VALUES (15,'Отдел разработки тарифов, контроля и анализа ТЭП',12);
INSERT INTO departments VALUES (16,'Сектор стимулирования труда',12);
INSERT INTO departments VALUES (17,'Отдел лицензирования и стандартизации',12);
INSERT INTO departments VALUES (18,'Экономисты ГОК и ЭЗ',13);
INSERT INTO departments VALUES (19,'Экономисты МК',14);
INSERT INTO departments VALUES (20,'Департамент коммерции',0);
INSERT INTO departments VALUES (21,'Департамент материально-технического обеспечения',20);
INSERT INTO departments VALUES (22,'Департамент по обеспечению оборудованием и запасны',20);
INSERT INTO departments VALUES (23,'Департамент по обеспечению и сбыту ЗСП, развитию т',20);
INSERT INTO departments VALUES (24,'Сектор маркетинга',20);
INSERT INTO departments VALUES (25,'Швейный цех',20);
INSERT INTO departments VALUES (26,'Департамент сырьевых ресурсов и сбыта',0);
INSERT INTO departments VALUES (27,'Департамент по поставкам руд, концентратов, флюсов',26);
INSERT INTO departments VALUES (28,'Департамент сбыта, транспортного и таможенного офо',26);
INSERT INTO departments VALUES (29,'Департамент маркетинга и торговли',26);
INSERT INTO departments VALUES (30,'Кредитно-инвестиционный департамент',0);
INSERT INTO departments VALUES (31,'Кредитный отдел',30);
INSERT INTO departments VALUES (32,'Департамент финансов, бухгалтерского учета и контр',0);
INSERT INTO departments VALUES (33,'Юридический отдел',32);
INSERT INTO departments VALUES (34,'Отдел договоров',32);
INSERT INTO departments VALUES (35,'Финансовый отдел',32);
INSERT INTO departments VALUES (36,'Главный бухгалтер по обеспечению учета',32);
INSERT INTO departments VALUES (37,'Сектор по учету основных фондов и ТМЦ',36);
INSERT INTO departments VALUES (38,'Бухгалтера производств',36);
INSERT INTO departments VALUES (39,'Сектор учета производства',36);
INSERT INTO departments VALUES (40,'Сектор учета зарплаты',36);
INSERT INTO departments VALUES (41,'Сектор учета налогов',36);
INSERT INTO departments VALUES (42,'Транспортный центр',0);
INSERT INTO departments VALUES (43,'Аккумуляторный завод',0);
INSERT INTO departments VALUES (44,'Цех аккумуляторных батарей, СО, ПиП',43);
INSERT INTO departments VALUES (45,'Цех серной кислоты, электролита, пластмасс и ТНП',43);
INSERT INTO departments VALUES (46,'Завод стрелочных переводов',0);
INSERT INTO departments VALUES (47,'Электродный завод',0);
INSERT INTO departments VALUES (48,'Металлургический комплекс',0);
INSERT INTO departments VALUES (49,'ТЭП',0);
INSERT INTO departments VALUES (50,'ОТК',0);
INSERT INTO departments VALUES (51,'ЦАЛ',0);
INSERT INTO departments VALUES (52,'УСХ',0);
INSERT INTO departments VALUES (53,'Группа технического эксперта',0);
INSERT INTO departments VALUES (54,'Департамент экологии ОТ, ЧС и ПО',0);
INSERT INTO departments VALUES (55,'КОФ',46);
INSERT INTO departments VALUES (56,'Щебеночный комплекс',46);
INSERT INTO departments VALUES (57,'Производство стрелочной продукции',46);
INSERT INTO departments VALUES (58,'ТЭЦ1',49);
INSERT INTO departments VALUES (59,'ТЭЦ2',49);
INSERT INTO departments VALUES (60,'ЦТС',49);
INSERT INTO departments VALUES (61,'Свинцовое производство',48);
INSERT INTO departments VALUES (62,'Производство цинка',48);
INSERT INTO departments VALUES (63,'Литейно-ремонтное производство',48);
INSERT INTO departments VALUES (64,'Железнодорожный цех',48);
INSERT INTO departments VALUES (65,'Цех благородных металлов',61);
INSERT INTO departments VALUES (66,'Цех ПГУ и В',61);
INSERT INTO departments VALUES (67,'Агломерационный цех',61);
INSERT INTO departments VALUES (68,'Плавильный цех',61);
INSERT INTO departments VALUES (69,'Рафинировочный цех',61);
INSERT INTO departments VALUES (70,'Служба ПС по текущим ремонтам',61);
INSERT INTO departments VALUES (71,'Департамент Э,ОТ,ТБ и ПО',61);
INSERT INTO departments VALUES (72,'Цех выщелачивающих ванн и электролита',62);
INSERT INTO departments VALUES (73,'Участок строящихся вельцевых печей',62);
INSERT INTO departments VALUES (74,'Цех по переработке шлака',62);
INSERT INTO departments VALUES (75,'Отдел редких металлов',62);
INSERT INTO departments VALUES (76,'Участок по капитальному ремонту',63);
INSERT INTO departments VALUES (77,'Литейный участок',63);
INSERT INTO departments VALUES (78,'Котельно сварочный цех',63);
INSERT INTO departments VALUES (79,'Механический участок',63);

#
# Table structure for table 'doc_message'
#

# DROP TABLE IF EXISTS doc_message;
CREATE TABLE `doc_message` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `message_ind` int(8) unsigned default NULL,
  `doc_ind` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'doc_message'
#

INSERT INTO doc_message VALUES (1,1,2);
INSERT INTO doc_message VALUES (2,2,3);
INSERT INTO doc_message VALUES (3,3,4);
INSERT INTO doc_message VALUES (4,4,5);
INSERT INTO doc_message VALUES (5,5,6);
INSERT INTO doc_message VALUES (6,6,7);
INSERT INTO doc_message VALUES (7,7,8);
INSERT INTO doc_message VALUES (8,8,9);
INSERT INTO doc_message VALUES (9,9,10);
INSERT INTO doc_message VALUES (10,10,12);
INSERT INTO doc_message VALUES (11,11,13);
INSERT INTO doc_message VALUES (12,12,14);
INSERT INTO doc_message VALUES (13,13,15);
INSERT INTO doc_message VALUES (14,14,16);
INSERT INTO doc_message VALUES (15,15,17);
INSERT INTO doc_message VALUES (16,16,21);
INSERT INTO doc_message VALUES (17,17,202);
INSERT INTO doc_message VALUES (18,18,203);
INSERT INTO doc_message VALUES (19,19,207);
INSERT INTO doc_message VALUES (20,20,208);
INSERT INTO doc_message VALUES (21,21,209);
INSERT INTO doc_message VALUES (22,22,11);
INSERT INTO doc_message VALUES (23,23,210);
INSERT INTO doc_message VALUES (24,24,211);
INSERT INTO doc_message VALUES (25,25,212);
INSERT INTO doc_message VALUES (26,26,213);
INSERT INTO doc_message VALUES (27,27,214);
INSERT INTO doc_message VALUES (28,28,215);
INSERT INTO doc_message VALUES (29,29,216);
INSERT INTO doc_message VALUES (30,30,217);
INSERT INTO doc_message VALUES (31,31,218);
INSERT INTO doc_message VALUES (32,32,219);
INSERT INTO doc_message VALUES (33,33,220);
INSERT INTO doc_message VALUES (34,34,221);
INSERT INTO doc_message VALUES (35,35,222);
INSERT INTO doc_message VALUES (36,36,224);
INSERT INTO doc_message VALUES (37,37,226);
INSERT INTO doc_message VALUES (38,38,231);
INSERT INTO doc_message VALUES (39,39,225);
INSERT INTO doc_message VALUES (40,40,232);
INSERT INTO doc_message VALUES (41,41,237);
INSERT INTO doc_message VALUES (42,42,236);
INSERT INTO doc_message VALUES (43,43,239);
INSERT INTO doc_message VALUES (44,44,240);
INSERT INTO doc_message VALUES (45,45,241);
INSERT INTO doc_message VALUES (46,46,242);
INSERT INTO doc_message VALUES (47,47,244);
INSERT INTO doc_message VALUES (48,48,247);
INSERT INTO doc_message VALUES (49,49,292);
INSERT INTO doc_message VALUES (50,50,291);
INSERT INTO doc_message VALUES (51,51,290);
INSERT INTO doc_message VALUES (52,52,289);
INSERT INTO doc_message VALUES (53,53,288);
INSERT INTO doc_message VALUES (54,54,287);
INSERT INTO doc_message VALUES (55,55,286);
INSERT INTO doc_message VALUES (56,56,285);
INSERT INTO doc_message VALUES (57,57,284);
INSERT INTO doc_message VALUES (58,58,283);
INSERT INTO doc_message VALUES (59,59,293);
INSERT INTO doc_message VALUES (60,60,277);
INSERT INTO doc_message VALUES (61,61,301);
INSERT INTO doc_message VALUES (62,62,302);
INSERT INTO doc_message VALUES (63,63,311);
INSERT INTO doc_message VALUES (64,64,310);
INSERT INTO doc_message VALUES (65,65,309);
INSERT INTO doc_message VALUES (66,66,308);
INSERT INTO doc_message VALUES (67,67,307);
INSERT INTO doc_message VALUES (68,68,306);
INSERT INTO doc_message VALUES (69,69,305);
INSERT INTO doc_message VALUES (70,70,304);
INSERT INTO doc_message VALUES (71,71,312);
INSERT INTO doc_message VALUES (72,72,313);
INSERT INTO doc_message VALUES (73,73,314);
INSERT INTO doc_message VALUES (74,74,315);
INSERT INTO doc_message VALUES (75,75,316);
INSERT INTO doc_message VALUES (76,76,318);
INSERT INTO doc_message VALUES (77,77,319);
INSERT INTO doc_message VALUES (78,78,320);
INSERT INTO doc_message VALUES (79,79,321);
INSERT INTO doc_message VALUES (80,80,322);
INSERT INTO doc_message VALUES (81,81,317);
INSERT INTO doc_message VALUES (82,82,347);
INSERT INTO doc_message VALUES (83,83,423);
INSERT INTO doc_message VALUES (84,84,422);
INSERT INTO doc_message VALUES (85,85,421);
INSERT INTO doc_message VALUES (86,86,420);
INSERT INTO doc_message VALUES (87,87,419);
INSERT INTO doc_message VALUES (88,88,418);
INSERT INTO doc_message VALUES (89,89,417);
INSERT INTO doc_message VALUES (90,90,416);
INSERT INTO doc_message VALUES (91,91,434);
INSERT INTO doc_message VALUES (92,92,435);
INSERT INTO doc_message VALUES (93,93,436);
INSERT INTO doc_message VALUES (94,94,446);
INSERT INTO doc_message VALUES (95,95,460);
INSERT INTO doc_message VALUES (96,96,467);
INSERT INTO doc_message VALUES (97,97,468);
INSERT INTO doc_message VALUES (98,98,469);
INSERT INTO doc_message VALUES (99,99,470);
INSERT INTO doc_message VALUES (100,100,471);
INSERT INTO doc_message VALUES (101,101,475);
INSERT INTO doc_message VALUES (102,102,477);
INSERT INTO doc_message VALUES (103,103,478);
INSERT INTO doc_message VALUES (104,104,459);
INSERT INTO doc_message VALUES (105,105,479);
INSERT INTO doc_message VALUES (106,106,480);
INSERT INTO doc_message VALUES (107,107,481);
INSERT INTO doc_message VALUES (108,108,482);
INSERT INTO doc_message VALUES (109,109,483);
INSERT INTO doc_message VALUES (110,110,476);
INSERT INTO doc_message VALUES (111,111,474);
INSERT INTO doc_message VALUES (112,112,484);
INSERT INTO doc_message VALUES (113,113,486);
INSERT INTO doc_message VALUES (114,114,487);
INSERT INTO doc_message VALUES (115,115,485);
INSERT INTO doc_message VALUES (116,116,488);
INSERT INTO doc_message VALUES (117,117,489);
INSERT INTO doc_message VALUES (118,118,490);
INSERT INTO doc_message VALUES (119,119,491);
INSERT INTO doc_message VALUES (120,120,492);
INSERT INTO doc_message VALUES (121,121,493);
INSERT INTO doc_message VALUES (122,122,494);
INSERT INTO doc_message VALUES (123,123,495);
INSERT INTO doc_message VALUES (124,124,496);
INSERT INTO doc_message VALUES (125,125,497);
INSERT INTO doc_message VALUES (126,126,498);
INSERT INTO doc_message VALUES (127,127,499);
INSERT INTO doc_message VALUES (128,128,500);
INSERT INTO doc_message VALUES (129,129,501);
INSERT INTO doc_message VALUES (130,130,505);
INSERT INTO doc_message VALUES (131,131,504);
INSERT INTO doc_message VALUES (132,132,507);
INSERT INTO doc_message VALUES (133,133,503);
INSERT INTO doc_message VALUES (134,134,509);
INSERT INTO doc_message VALUES (135,135,510);
INSERT INTO doc_message VALUES (136,136,512);
INSERT INTO doc_message VALUES (137,137,511);
INSERT INTO doc_message VALUES (138,138,513);
INSERT INTO doc_message VALUES (139,139,516);
INSERT INTO doc_message VALUES (140,140,514);
INSERT INTO doc_message VALUES (141,141,518);
INSERT INTO doc_message VALUES (142,142,517);
INSERT INTO doc_message VALUES (143,143,522);
INSERT INTO doc_message VALUES (144,144,519);
INSERT INTO doc_message VALUES (145,145,524);
INSERT INTO doc_message VALUES (146,146,525);
INSERT INTO doc_message VALUES (147,147,534);
INSERT INTO doc_message VALUES (148,148,533);
INSERT INTO doc_message VALUES (149,149,532);
INSERT INTO doc_message VALUES (150,150,531);
INSERT INTO doc_message VALUES (151,151,530);
INSERT INTO doc_message VALUES (152,152,529);
INSERT INTO doc_message VALUES (153,153,528);
INSERT INTO doc_message VALUES (154,154,527);
INSERT INTO doc_message VALUES (155,155,535);
INSERT INTO doc_message VALUES (156,156,536);
INSERT INTO doc_message VALUES (157,157,537);
INSERT INTO doc_message VALUES (158,158,541);
INSERT INTO doc_message VALUES (159,159,543);
INSERT INTO doc_message VALUES (160,160,544);
INSERT INTO doc_message VALUES (161,161,546);
INSERT INTO doc_message VALUES (162,162,548);
INSERT INTO doc_message VALUES (163,163,548);
INSERT INTO doc_message VALUES (164,164,552);
INSERT INTO doc_message VALUES (165,165,555);
INSERT INTO doc_message VALUES (166,166,557);
INSERT INTO doc_message VALUES (167,167,559);
INSERT INTO doc_message VALUES (168,168,561);
INSERT INTO doc_message VALUES (169,169,562);
INSERT INTO doc_message VALUES (170,170,562);
INSERT INTO doc_message VALUES (171,171,563);
INSERT INTO doc_message VALUES (172,172,563);
INSERT INTO doc_message VALUES (173,173,563);
INSERT INTO doc_message VALUES (174,174,569);
INSERT INTO doc_message VALUES (175,175,570);
INSERT INTO doc_message VALUES (176,176,572);
INSERT INTO doc_message VALUES (177,177,574);
INSERT INTO doc_message VALUES (178,178,576);
INSERT INTO doc_message VALUES (179,179,580);
INSERT INTO doc_message VALUES (180,180,582);
INSERT INTO doc_message VALUES (181,181,584);
INSERT INTO doc_message VALUES (182,182,586);
INSERT INTO doc_message VALUES (183,183,588);
INSERT INTO doc_message VALUES (184,184,591);
INSERT INTO doc_message VALUES (185,185,590);
INSERT INTO doc_message VALUES (186,186,594);
INSERT INTO doc_message VALUES (187,187,641);
INSERT INTO doc_message VALUES (188,188,643);
INSERT INTO doc_message VALUES (189,189,656);
INSERT INTO doc_message VALUES (190,190,660);
INSERT INTO doc_message VALUES (191,191,659);
INSERT INTO doc_message VALUES (192,192,658);
INSERT INTO doc_message VALUES (193,193,657);
INSERT INTO doc_message VALUES (194,194,661);

#
# Table structure for table 'doc_status'
#

# DROP TABLE IF EXISTS doc_status;
CREATE TABLE `doc_status` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `doc_ind` int(8) unsigned NOT NULL default '0',
  `user_ind` int(8) unsigned NOT NULL default '0',
  `status` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'doc_status'
#

INSERT INTO doc_status VALUES (2,2,1,1);
INSERT INTO doc_status VALUES (3,3,1,1);
INSERT INTO doc_status VALUES (4,4,2,1);
INSERT INTO doc_status VALUES (5,5,1,1);
INSERT INTO doc_status VALUES (6,6,4,1);
INSERT INTO doc_status VALUES (221,212,2,1);
INSERT INTO doc_status VALUES (8,8,1,1);
INSERT INTO doc_status VALUES (9,9,2,1);
INSERT INTO doc_status VALUES (10,10,1,1);
INSERT INTO doc_status VALUES (220,212,1,0);
INSERT INTO doc_status VALUES (12,12,1,1);
INSERT INTO doc_status VALUES (13,13,1,1);
INSERT INTO doc_status VALUES (14,14,5,1);
INSERT INTO doc_status VALUES (15,15,1,1);
INSERT INTO doc_status VALUES (16,16,1,1);
INSERT INTO doc_status VALUES (17,17,10,1);
INSERT INTO doc_status VALUES (224,214,1,0);
INSERT INTO doc_status VALUES (223,213,1,1);
INSERT INTO doc_status VALUES (222,213,2,0);
INSERT INTO doc_status VALUES (218,211,1,1);
INSERT INTO doc_status VALUES (228,218,1,0);
INSERT INTO doc_status VALUES (229,219,1,0);
INSERT INTO doc_status VALUES (226,216,1,0);
INSERT INTO doc_status VALUES (219,11,1,1);
INSERT INTO doc_status VALUES (216,21,2,1);
INSERT INTO doc_status VALUES (215,202,2,1);
INSERT INTO doc_status VALUES (227,217,1,0);
INSERT INTO doc_status VALUES (230,220,1,0);
INSERT INTO doc_status VALUES (225,215,1,0);
INSERT INTO doc_status VALUES (233,222,5,1);
INSERT INTO doc_status VALUES (232,222,1,0);
INSERT INTO doc_status VALUES (231,221,1,0);
INSERT INTO doc_status VALUES (239,226,8,0);
INSERT INTO doc_status VALUES (238,218,8,1);
INSERT INTO doc_status VALUES (237,216,5,1);
INSERT INTO doc_status VALUES (236,225,5,0);
INSERT INTO doc_status VALUES (235,224,5,0);
INSERT INTO doc_status VALUES (764,247,5,1);
INSERT INTO doc_status VALUES (248,224,10,1);
INSERT INTO doc_status VALUES (247,225,10,1);
INSERT INTO doc_status VALUES (246,231,5,1);
INSERT INTO doc_status VALUES (245,231,8,0);
INSERT INTO doc_status VALUES (240,226,1,1);
INSERT INTO doc_status VALUES (254,236,8,0);
INSERT INTO doc_status VALUES (255,237,8,0);
INSERT INTO doc_status VALUES (250,232,8,0);
INSERT INTO doc_status VALUES (249,221,10,1);
INSERT INTO doc_status VALUES (264,236,1,1);
INSERT INTO doc_status VALUES (262,241,8,0);
INSERT INTO doc_status VALUES (261,240,8,0);
INSERT INTO doc_status VALUES (260,217,9,1);
INSERT INTO doc_status VALUES (259,215,4,1);
INSERT INTO doc_status VALUES (257,239,8,0);
INSERT INTO doc_status VALUES (258,239,6,1);
INSERT INTO doc_status VALUES (266,241,5,1);
INSERT INTO doc_status VALUES (265,240,1,1);
INSERT INTO doc_status VALUES (311,285,1,0);
INSERT INTO doc_status VALUES (270,244,5,1);
INSERT INTO doc_status VALUES (269,244,10,0);
INSERT INTO doc_status VALUES (309,283,1,0);
INSERT INTO doc_status VALUES (267,232,5,1);
INSERT INTO doc_status VALUES (315,289,1,0);
INSERT INTO doc_status VALUES (303,277,10,0);
INSERT INTO doc_status VALUES (273,247,10,0);
INSERT INTO doc_status VALUES (310,284,1,0);
INSERT INTO doc_status VALUES (321,294,10,0);
INSERT INTO doc_status VALUES (322,293,1,1);
INSERT INTO doc_status VALUES (329,284,2,1);
INSERT INTO doc_status VALUES (316,290,1,0);
INSERT INTO doc_status VALUES (313,287,1,0);
INSERT INTO doc_status VALUES (317,291,1,0);
INSERT INTO doc_status VALUES (318,292,1,0);
INSERT INTO doc_status VALUES (319,292,10,1);
INSERT INTO doc_status VALUES (320,293,10,0);
INSERT INTO doc_status VALUES (333,302,1,1);
INSERT INTO doc_status VALUES (332,302,2,0);
INSERT INTO doc_status VALUES (331,301,2,0);
INSERT INTO doc_status VALUES (330,283,2,1);
INSERT INTO doc_status VALUES (312,286,1,0);
INSERT INTO doc_status VALUES (314,288,1,0);
INSERT INTO doc_status VALUES (336,304,1,0);
INSERT INTO doc_status VALUES (344,312,2,0);
INSERT INTO doc_status VALUES (334,301,1,1);
INSERT INTO doc_status VALUES (337,305,1,0);
INSERT INTO doc_status VALUES (341,309,1,0);
INSERT INTO doc_status VALUES (340,308,1,0);
INSERT INTO doc_status VALUES (339,307,1,0);
INSERT INTO doc_status VALUES (338,306,1,0);
INSERT INTO doc_status VALUES (346,314,2,0);
INSERT INTO doc_status VALUES (345,313,2,0);
INSERT INTO doc_status VALUES (343,311,1,0);
INSERT INTO doc_status VALUES (342,310,1,0);
INSERT INTO doc_status VALUES (351,315,1,1);
INSERT INTO doc_status VALUES (350,316,1,1);
INSERT INTO doc_status VALUES (349,305,4,1);
INSERT INTO doc_status VALUES (348,316,2,0);
INSERT INTO doc_status VALUES (347,315,2,0);
INSERT INTO doc_status VALUES (355,317,1,0);
INSERT INTO doc_status VALUES (354,312,1,1);
INSERT INTO doc_status VALUES (353,313,1,1);
INSERT INTO doc_status VALUES (352,314,1,1);
INSERT INTO doc_status VALUES (359,319,5,0);
INSERT INTO doc_status VALUES (358,318,1,0);
INSERT INTO doc_status VALUES (357,286,4,1);
INSERT INTO doc_status VALUES (356,306,5,1);
INSERT INTO doc_status VALUES (363,320,1,1);
INSERT INTO doc_status VALUES (362,320,2,0);
INSERT INTO doc_status VALUES (361,318,2,1);
INSERT INTO doc_status VALUES (360,319,4,1);
INSERT INTO doc_status VALUES (364,321,2,0);
INSERT INTO doc_status VALUES (469,423,1,0);
INSERT INTO doc_status VALUES (368,317,2,1);
INSERT INTO doc_status VALUES (367,322,2,1);
INSERT INTO doc_status VALUES (366,322,1,0);
INSERT INTO doc_status VALUES (365,321,1,1);
INSERT INTO doc_status VALUES (463,417,1,0);
INSERT INTO doc_status VALUES (464,418,1,0);
INSERT INTO doc_status VALUES (466,420,1,0);
INSERT INTO doc_status VALUES (468,422,1,0);
INSERT INTO doc_status VALUES (393,347,1,0);
INSERT INTO doc_status VALUES (467,421,1,0);
INSERT INTO doc_status VALUES (471,417,4,1);
INSERT INTO doc_status VALUES (481,434,1,0);
INSERT INTO doc_status VALUES (509,242,8,1);
INSERT INTO doc_status VALUES (510,418,5,1);
INSERT INTO doc_status VALUES (507,308,8,1);
INSERT INTO doc_status VALUES (506,421,8,1);
INSERT INTO doc_status VALUES (462,416,1,0);
INSERT INTO doc_status VALUES (483,436,1,0);
INSERT INTO doc_status VALUES (508,289,8,1);
INSERT INTO doc_status VALUES (465,419,1,0);
INSERT INTO doc_status VALUES (482,435,1,0);
INSERT INTO doc_status VALUES (504,434,2,1);
INSERT INTO doc_status VALUES (502,436,2,1);
INSERT INTO doc_status VALUES (503,435,2,1);
INSERT INTO doc_status VALUES (505,347,2,1);
INSERT INTO doc_status VALUES (511,287,5,1);
INSERT INTO doc_status VALUES (527,469,2,1);
INSERT INTO doc_status VALUES (526,468,2,1);
INSERT INTO doc_status VALUES (525,467,2,1);
INSERT INTO doc_status VALUES (517,459,1,0);
INSERT INTO doc_status VALUES (539,475,1,1);
INSERT INTO doc_status VALUES (538,475,2,0);
INSERT INTO doc_status VALUES (524,460,2,1);
INSERT INTO doc_status VALUES (518,460,1,0);
INSERT INTO doc_status VALUES (512,277,5,1);
INSERT INTO doc_status VALUES (540,476,2,0);
INSERT INTO doc_status VALUES (537,474,2,0);
INSERT INTO doc_status VALUES (534,467,1,1);
INSERT INTO doc_status VALUES (533,468,1,1);
INSERT INTO doc_status VALUES (532,469,1,1);
INSERT INTO doc_status VALUES (531,470,1,1);
INSERT INTO doc_status VALUES (530,471,1,1);
INSERT INTO doc_status VALUES (529,471,2,1);
INSERT INTO doc_status VALUES (528,470,2,1);
INSERT INTO doc_status VALUES (549,483,2,1);
INSERT INTO doc_status VALUES (548,482,2,1);
INSERT INTO doc_status VALUES (547,482,1,0);
INSERT INTO doc_status VALUES (546,481,1,0);
INSERT INTO doc_status VALUES (545,480,1,1);
INSERT INTO doc_status VALUES (544,479,1,0);
INSERT INTO doc_status VALUES (543,478,1,0);
INSERT INTO doc_status VALUES (542,477,1,1);
INSERT INTO doc_status VALUES (541,477,2,1);
INSERT INTO doc_status VALUES (551,480,2,1);
INSERT INTO doc_status VALUES (550,481,2,1);
INSERT INTO doc_status VALUES (553,478,2,1);
INSERT INTO doc_status VALUES (552,479,2,1);
INSERT INTO doc_status VALUES (214,203,2,1);
INSERT INTO doc_status VALUES (213,208,1,1);
INSERT INTO doc_status VALUES (212,209,1,1);
INSERT INTO doc_status VALUES (211,210,1,1);
INSERT INTO doc_status VALUES (554,483,1,1);
INSERT INTO doc_status VALUES (555,476,1,1);
INSERT INTO doc_status VALUES (556,474,1,1);
INSERT INTO doc_status VALUES (557,484,1,1);
INSERT INTO doc_status VALUES (558,484,2,1);
INSERT INTO doc_status VALUES (559,459,2,1);
INSERT INTO doc_status VALUES (560,485,2,0);
INSERT INTO doc_status VALUES (561,486,1,0);
INSERT INTO doc_status VALUES (562,487,1,0);
INSERT INTO doc_status VALUES (563,487,2,1);
INSERT INTO doc_status VALUES (564,486,2,1);
INSERT INTO doc_status VALUES (565,485,1,1);
INSERT INTO doc_status VALUES (566,488,1,1);
INSERT INTO doc_status VALUES (567,488,2,1);
INSERT INTO doc_status VALUES (568,489,2,0);
INSERT INTO doc_status VALUES (569,489,1,1);
INSERT INTO doc_status VALUES (570,490,2,1);
INSERT INTO doc_status VALUES (571,490,1,1);
INSERT INTO doc_status VALUES (572,491,2,1);
INSERT INTO doc_status VALUES (573,491,1,1);
INSERT INTO doc_status VALUES (574,492,2,0);
INSERT INTO doc_status VALUES (575,492,1,1);
INSERT INTO doc_status VALUES (576,493,2,0);
INSERT INTO doc_status VALUES (577,493,1,1);
INSERT INTO doc_status VALUES (578,494,2,0);
INSERT INTO doc_status VALUES (579,495,2,0);
INSERT INTO doc_status VALUES (580,495,1,1);
INSERT INTO doc_status VALUES (581,496,2,0);
INSERT INTO doc_status VALUES (582,496,1,1);
INSERT INTO doc_status VALUES (583,497,2,0);
INSERT INTO doc_status VALUES (584,498,2,0);
INSERT INTO doc_status VALUES (585,498,1,1);
INSERT INTO doc_status VALUES (586,499,2,0);
INSERT INTO doc_status VALUES (587,499,1,1);
INSERT INTO doc_status VALUES (588,500,2,0);
INSERT INTO doc_status VALUES (589,500,1,1);
INSERT INTO doc_status VALUES (590,501,2,0);
INSERT INTO doc_status VALUES (591,501,1,1);
INSERT INTO doc_status VALUES (597,507,2,0);
INSERT INTO doc_status VALUES (593,503,2,0);
INSERT INTO doc_status VALUES (594,504,2,0);
INSERT INTO doc_status VALUES (595,505,2,0);
INSERT INTO doc_status VALUES (598,508,2,0);
INSERT INTO doc_status VALUES (599,509,2,0);
INSERT INTO doc_status VALUES (600,510,2,0);
INSERT INTO doc_status VALUES (601,511,2,0);
INSERT INTO doc_status VALUES (602,512,2,0);
INSERT INTO doc_status VALUES (603,513,2,0);
INSERT INTO doc_status VALUES (604,514,2,0);
INSERT INTO doc_status VALUES (605,515,2,0);
INSERT INTO doc_status VALUES (606,516,2,0);
INSERT INTO doc_status VALUES (607,514,1,1);
INSERT INTO doc_status VALUES (608,516,1,1);
INSERT INTO doc_status VALUES (609,517,2,0);
INSERT INTO doc_status VALUES (610,518,2,0);
INSERT INTO doc_status VALUES (611,519,2,0);
INSERT INTO doc_status VALUES (612,520,2,0);
INSERT INTO doc_status VALUES (613,521,2,0);
INSERT INTO doc_status VALUES (614,522,2,0);
INSERT INTO doc_status VALUES (615,523,2,0);
INSERT INTO doc_status VALUES (616,524,2,0);
INSERT INTO doc_status VALUES (617,525,2,0);
INSERT INTO doc_status VALUES (618,525,1,1);
INSERT INTO doc_status VALUES (619,524,1,1);
INSERT INTO doc_status VALUES (629,535,1,0);
INSERT INTO doc_status VALUES (621,527,1,0);
INSERT INTO doc_status VALUES (622,528,1,0);
INSERT INTO doc_status VALUES (623,529,1,0);
INSERT INTO doc_status VALUES (624,530,1,0);
INSERT INTO doc_status VALUES (625,531,1,0);
INSERT INTO doc_status VALUES (626,532,1,0);
INSERT INTO doc_status VALUES (627,533,1,0);
INSERT INTO doc_status VALUES (628,534,1,0);
INSERT INTO doc_status VALUES (630,536,1,0);
INSERT INTO doc_status VALUES (631,537,1,0);
INSERT INTO doc_status VALUES (647,544,1,1);
INSERT INTO doc_status VALUES (633,527,3,1);
INSERT INTO doc_status VALUES (634,285,3,1);
INSERT INTO doc_status VALUES (635,214,3,1);
INSERT INTO doc_status VALUES (636,304,3,1);
INSERT INTO doc_status VALUES (637,416,3,1);
INSERT INTO doc_status VALUES (638,7,3,1);
INSERT INTO doc_status VALUES (641,541,3,1);
INSERT INTO doc_status VALUES (642,541,1,1);
INSERT INTO doc_status VALUES (643,528,4,1);
INSERT INTO doc_status VALUES (645,543,3,1);
INSERT INTO doc_status VALUES (646,543,1,1);
INSERT INTO doc_status VALUES (648,6,3,1);
INSERT INTO doc_status VALUES (710,594,4,1);
INSERT INTO doc_status VALUES (650,6,1,1);
INSERT INTO doc_status VALUES (651,544,4,1);
INSERT INTO doc_status VALUES (652,546,1,0);
INSERT INTO doc_status VALUES (653,547,1,0);
INSERT INTO doc_status VALUES (654,548,1,0);
INSERT INTO doc_status VALUES (655,549,1,0);
INSERT INTO doc_status VALUES (656,550,1,0);
INSERT INTO doc_status VALUES (657,551,1,0);
INSERT INTO doc_status VALUES (658,552,1,0);
INSERT INTO doc_status VALUES (659,553,1,0);
INSERT INTO doc_status VALUES (662,556,1,0);
INSERT INTO doc_status VALUES (661,555,1,0);
INSERT INTO doc_status VALUES (663,557,1,0);
INSERT INTO doc_status VALUES (665,559,1,0);
INSERT INTO doc_status VALUES (666,560,1,0);
INSERT INTO doc_status VALUES (667,561,1,0);
INSERT INTO doc_status VALUES (668,562,1,0);
INSERT INTO doc_status VALUES (669,563,1,0);
INSERT INTO doc_status VALUES (670,560,2,1);
INSERT INTO doc_status VALUES (671,564,1,0);
INSERT INTO doc_status VALUES (672,565,1,0);
INSERT INTO doc_status VALUES (673,566,1,0);
INSERT INTO doc_status VALUES (674,567,1,0);
INSERT INTO doc_status VALUES (675,568,1,0);
INSERT INTO doc_status VALUES (676,569,3,0);
INSERT INTO doc_status VALUES (677,569,4,1);
INSERT INTO doc_status VALUES (678,570,1,0);
INSERT INTO doc_status VALUES (679,571,1,0);
INSERT INTO doc_status VALUES (680,572,1,0);
INSERT INTO doc_status VALUES (681,573,1,0);
INSERT INTO doc_status VALUES (682,574,1,0);
INSERT INTO doc_status VALUES (683,575,1,0);
INSERT INTO doc_status VALUES (684,576,1,0);
INSERT INTO doc_status VALUES (685,577,1,0);
INSERT INTO doc_status VALUES (686,578,1,0);
INSERT INTO doc_status VALUES (687,579,1,0);
INSERT INTO doc_status VALUES (688,580,1,0);
INSERT INTO doc_status VALUES (689,581,1,0);
INSERT INTO doc_status VALUES (690,581,2,1);
INSERT INTO doc_status VALUES (691,582,2,1);
INSERT INTO doc_status VALUES (692,583,2,0);
INSERT INTO doc_status VALUES (693,583,1,1);
INSERT INTO doc_status VALUES (694,584,1,0);
INSERT INTO doc_status VALUES (695,585,1,0);
INSERT INTO doc_status VALUES (696,585,2,1);
INSERT INTO doc_status VALUES (697,586,2,1);
INSERT INTO doc_status VALUES (698,587,2,1);
INSERT INTO doc_status VALUES (699,587,1,1);
INSERT INTO doc_status VALUES (700,588,1,1);
INSERT INTO doc_status VALUES (701,589,1,1);
INSERT INTO doc_status VALUES (702,589,2,1);
INSERT INTO doc_status VALUES (703,590,2,0);
INSERT INTO doc_status VALUES (704,591,2,0);
INSERT INTO doc_status VALUES (705,592,2,0);
INSERT INTO doc_status VALUES (706,593,2,0);
INSERT INTO doc_status VALUES (707,592,1,1);
INSERT INTO doc_status VALUES (708,593,1,1);
INSERT INTO doc_status VALUES (709,594,3,0);
INSERT INTO doc_status VALUES (711,595,1,0);
INSERT INTO doc_status VALUES (712,596,1,0);
INSERT INTO doc_status VALUES (713,597,1,0);
INSERT INTO doc_status VALUES (714,598,1,0);
INSERT INTO doc_status VALUES (715,599,1,0);
INSERT INTO doc_status VALUES (716,600,1,0);
INSERT INTO doc_status VALUES (753,637,1,0);
INSERT INTO doc_status VALUES (756,640,1,0);
INSERT INTO doc_status VALUES (757,640,2,1);
INSERT INTO doc_status VALUES (730,614,1,0);
INSERT INTO doc_status VALUES (731,615,1,0);
INSERT INTO doc_status VALUES (732,616,1,0);
INSERT INTO doc_status VALUES (723,607,1,0);
INSERT INTO doc_status VALUES (758,639,2,1);
INSERT INTO doc_status VALUES (734,618,1,0);
INSERT INTO doc_status VALUES (735,619,1,0);
INSERT INTO doc_status VALUES (736,620,1,0);
INSERT INTO doc_status VALUES (737,621,1,0);
INSERT INTO doc_status VALUES (738,622,1,0);
INSERT INTO doc_status VALUES (739,623,1,0);
INSERT INTO doc_status VALUES (754,638,1,0);
INSERT INTO doc_status VALUES (755,639,1,0);
INSERT INTO doc_status VALUES (759,641,4,0);
INSERT INTO doc_status VALUES (760,641,5,1);
INSERT INTO doc_status VALUES (765,648,3,1);
INSERT INTO doc_status VALUES (762,529,5,1);
INSERT INTO doc_status VALUES (763,643,5,0);
INSERT INTO doc_status VALUES (766,649,5,1);
INSERT INTO doc_status VALUES (767,651,7,1);
INSERT INTO doc_status VALUES (768,531,7,1);
INSERT INTO doc_status VALUES (769,219,7,1);
INSERT INTO doc_status VALUES (770,290,7,1);
INSERT INTO doc_status VALUES (771,309,7,1);
INSERT INTO doc_status VALUES (772,420,7,1);
INSERT INTO doc_status VALUES (773,237,7,1);
INSERT INTO doc_status VALUES (774,650,6,1);
INSERT INTO doc_status VALUES (775,530,6,1);
INSERT INTO doc_status VALUES (776,220,6,1);
INSERT INTO doc_status VALUES (777,291,6,1);
INSERT INTO doc_status VALUES (778,310,6,1);
INSERT INTO doc_status VALUES (779,419,6,1);
INSERT INTO doc_status VALUES (780,653,9,1);
INSERT INTO doc_status VALUES (781,533,9,1);
INSERT INTO doc_status VALUES (782,307,9,1);
INSERT INTO doc_status VALUES (783,652,8,1);
INSERT INTO doc_status VALUES (784,532,8,1);
INSERT INTO doc_status VALUES (785,656,5,0);
INSERT INTO doc_status VALUES (786,657,5,0);
INSERT INTO doc_status VALUES (787,658,5,0);
INSERT INTO doc_status VALUES (788,659,5,0);
INSERT INTO doc_status VALUES (789,660,5,0);
INSERT INTO doc_status VALUES (790,657,1,1);
INSERT INTO doc_status VALUES (791,661,1,1);

#
# Table structure for table 'document_kinds'
#

# DROP TABLE IF EXISTS document_kinds;
CREATE TABLE `document_kinds` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(100) NOT NULL default '',
  `description` blob,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_kinds'
#

INSERT INTO document_kinds VALUES (1,'Коммуникационная','');
INSERT INTO document_kinds VALUES (2,'Внутренняя','');
INSERT INTO document_kinds VALUES (3,'Организационная','');
INSERT INTO document_kinds VALUES (4,'Распорядительная','');
INSERT INTO document_kinds VALUES (5,'Входящая','');
INSERT INTO document_kinds VALUES (6,'Исходящая','');

#
# Table structure for table 'document_labels'
#

# DROP TABLE IF EXISTS document_labels;
CREATE TABLE `document_labels` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `resolution` text,
  `res_date` date default NULL,
  `doc_ind` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_labels'
#

INSERT INTO document_labels VALUES (9,'','1899-12-30',628);
INSERT INTO document_labels VALUES (8,'','1899-12-30',627);
INSERT INTO document_labels VALUES (7,'','1899-12-30',626);
INSERT INTO document_labels VALUES (6,'','1899-12-30',625);
INSERT INTO document_labels VALUES (5,'','1899-12-30',624);
INSERT INTO document_labels VALUES (10,'','1899-12-30',629);
INSERT INTO document_labels VALUES (11,'','1899-12-30',630);
INSERT INTO document_labels VALUES (12,'','1899-12-30',631);
INSERT INTO document_labels VALUES (13,'','1899-12-30',632);
INSERT INTO document_labels VALUES (14,'','1899-12-30',633);
INSERT INTO document_labels VALUES (15,'','1899-12-30',634);
INSERT INTO document_labels VALUES (16,'','1899-12-30',635);
INSERT INTO document_labels VALUES (17,'','1899-12-30',636);
INSERT INTO document_labels VALUES (18,'','0000-00-00',637);
INSERT INTO document_labels VALUES (19,'','0000-00-00',638);

#
# Table structure for table 'document_pipe_avail_kinds'
#

# DROP TABLE IF EXISTS document_pipe_avail_kinds;
CREATE TABLE `document_pipe_avail_kinds` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `document_pipe_ind` int(8) unsigned NOT NULL default '0',
  `document_sub_kind_ind` int(8) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_pipe_avail_kinds'
#

INSERT INTO document_pipe_avail_kinds VALUES (1,1,1);
INSERT INTO document_pipe_avail_kinds VALUES (2,2,1);
INSERT INTO document_pipe_avail_kinds VALUES (3,3,1);
INSERT INTO document_pipe_avail_kinds VALUES (4,4,1);
INSERT INTO document_pipe_avail_kinds VALUES (5,5,1);
INSERT INTO document_pipe_avail_kinds VALUES (6,6,1);
INSERT INTO document_pipe_avail_kinds VALUES (7,7,1);
INSERT INTO document_pipe_avail_kinds VALUES (8,8,1);
INSERT INTO document_pipe_avail_kinds VALUES (9,9,1);
INSERT INTO document_pipe_avail_kinds VALUES (10,10,1);
INSERT INTO document_pipe_avail_kinds VALUES (11,11,1);
INSERT INTO document_pipe_avail_kinds VALUES (12,11,4);
INSERT INTO document_pipe_avail_kinds VALUES (13,12,1);
INSERT INTO document_pipe_avail_kinds VALUES (14,13,1);
INSERT INTO document_pipe_avail_kinds VALUES (15,14,1);
INSERT INTO document_pipe_avail_kinds VALUES (16,14,6);
INSERT INTO document_pipe_avail_kinds VALUES (17,14,7);
INSERT INTO document_pipe_avail_kinds VALUES (18,34,1);
INSERT INTO document_pipe_avail_kinds VALUES (19,33,1);
INSERT INTO document_pipe_avail_kinds VALUES (20,32,1);
INSERT INTO document_pipe_avail_kinds VALUES (21,31,1);
INSERT INTO document_pipe_avail_kinds VALUES (22,30,1);
INSERT INTO document_pipe_avail_kinds VALUES (23,29,1);
INSERT INTO document_pipe_avail_kinds VALUES (24,28,1);
INSERT INTO document_pipe_avail_kinds VALUES (25,27,1);
INSERT INTO document_pipe_avail_kinds VALUES (26,26,1);
INSERT INTO document_pipe_avail_kinds VALUES (27,25,1);
INSERT INTO document_pipe_avail_kinds VALUES (28,35,1);
INSERT INTO document_pipe_avail_kinds VALUES (29,36,1);
INSERT INTO document_pipe_avail_kinds VALUES (30,37,1);
INSERT INTO document_pipe_avail_kinds VALUES (31,38,1);
INSERT INTO document_pipe_avail_kinds VALUES (32,39,1);
INSERT INTO document_pipe_avail_kinds VALUES (33,40,1);
INSERT INTO document_pipe_avail_kinds VALUES (34,41,1);
INSERT INTO document_pipe_avail_kinds VALUES (35,42,1);
INSERT INTO document_pipe_avail_kinds VALUES (36,43,1);
INSERT INTO document_pipe_avail_kinds VALUES (37,44,1);
INSERT INTO document_pipe_avail_kinds VALUES (38,44,4);
INSERT INTO document_pipe_avail_kinds VALUES (39,45,1);
INSERT INTO document_pipe_avail_kinds VALUES (40,45,4);
INSERT INTO document_pipe_avail_kinds VALUES (41,46,1);
INSERT INTO document_pipe_avail_kinds VALUES (42,46,4);
INSERT INTO document_pipe_avail_kinds VALUES (43,47,1);
INSERT INTO document_pipe_avail_kinds VALUES (44,47,4);
INSERT INTO document_pipe_avail_kinds VALUES (45,48,1);
INSERT INTO document_pipe_avail_kinds VALUES (46,49,1);
INSERT INTO document_pipe_avail_kinds VALUES (47,50,1);
INSERT INTO document_pipe_avail_kinds VALUES (48,50,12);
INSERT INTO document_pipe_avail_kinds VALUES (49,51,1);
INSERT INTO document_pipe_avail_kinds VALUES (50,52,1);
INSERT INTO document_pipe_avail_kinds VALUES (51,7,6);
INSERT INTO document_pipe_avail_kinds VALUES (52,7,12);
INSERT INTO document_pipe_avail_kinds VALUES (53,7,8);
INSERT INTO document_pipe_avail_kinds VALUES (54,7,7);
INSERT INTO document_pipe_avail_kinds VALUES (55,53,1);
INSERT INTO document_pipe_avail_kinds VALUES (56,53,13);
INSERT INTO document_pipe_avail_kinds VALUES (57,53,14);
INSERT INTO document_pipe_avail_kinds VALUES (58,53,15);
INSERT INTO document_pipe_avail_kinds VALUES (59,53,16);
INSERT INTO document_pipe_avail_kinds VALUES (60,54,1);
INSERT INTO document_pipe_avail_kinds VALUES (61,54,13);
INSERT INTO document_pipe_avail_kinds VALUES (62,54,14);
INSERT INTO document_pipe_avail_kinds VALUES (63,54,15);
INSERT INTO document_pipe_avail_kinds VALUES (64,54,16);
INSERT INTO document_pipe_avail_kinds VALUES (65,55,1);
INSERT INTO document_pipe_avail_kinds VALUES (66,56,1);
INSERT INTO document_pipe_avail_kinds VALUES (67,57,1);
INSERT INTO document_pipe_avail_kinds VALUES (68,58,1);
INSERT INTO document_pipe_avail_kinds VALUES (69,1,2);
INSERT INTO document_pipe_avail_kinds VALUES (70,1,3);
INSERT INTO document_pipe_avail_kinds VALUES (71,1,4);
INSERT INTO document_pipe_avail_kinds VALUES (72,1,5);
INSERT INTO document_pipe_avail_kinds VALUES (77,57,12);
INSERT INTO document_pipe_avail_kinds VALUES (74,1,6);
INSERT INTO document_pipe_avail_kinds VALUES (75,1,7);
INSERT INTO document_pipe_avail_kinds VALUES (78,58,12);
INSERT INTO document_pipe_avail_kinds VALUES (79,59,1);
INSERT INTO document_pipe_avail_kinds VALUES (80,60,1);
INSERT INTO document_pipe_avail_kinds VALUES (81,60,3);
INSERT INTO document_pipe_avail_kinds VALUES (82,61,1);
INSERT INTO document_pipe_avail_kinds VALUES (83,62,1);
INSERT INTO document_pipe_avail_kinds VALUES (84,63,1);
INSERT INTO document_pipe_avail_kinds VALUES (85,64,1);
INSERT INTO document_pipe_avail_kinds VALUES (86,65,1);

#
# Table structure for table 'document_pipes'
#

# DROP TABLE IF EXISTS document_pipes;
CREATE TABLE `document_pipes` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `from_user` int(8) unsigned NOT NULL default '0',
  `to_user` int(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_pipes'
#

INSERT INTO document_pipes VALUES (1,1,2);
INSERT INTO document_pipes VALUES (2,1,3);
INSERT INTO document_pipes VALUES (3,1,4);
INSERT INTO document_pipes VALUES (4,2,1);
INSERT INTO document_pipes VALUES (5,3,1);
INSERT INTO document_pipes VALUES (6,4,1);
INSERT INTO document_pipes VALUES (7,3,4);
INSERT INTO document_pipes VALUES (8,4,3);
INSERT INTO document_pipes VALUES (9,1,5);
INSERT INTO document_pipes VALUES (10,3,5);
INSERT INTO document_pipes VALUES (11,4,5);
INSERT INTO document_pipes VALUES (12,5,1);
INSERT INTO document_pipes VALUES (13,5,3);
INSERT INTO document_pipes VALUES (14,5,4);
INSERT INTO document_pipes VALUES (34,7,8);
INSERT INTO document_pipes VALUES (33,7,6);
INSERT INTO document_pipes VALUES (32,6,9);
INSERT INTO document_pipes VALUES (31,6,8);
INSERT INTO document_pipes VALUES (30,6,7);
INSERT INTO document_pipes VALUES (29,6,1);
INSERT INTO document_pipes VALUES (28,1,9);
INSERT INTO document_pipes VALUES (27,1,8);
INSERT INTO document_pipes VALUES (26,1,7);
INSERT INTO document_pipes VALUES (25,1,6);
INSERT INTO document_pipes VALUES (35,7,9);
INSERT INTO document_pipes VALUES (36,8,1);
INSERT INTO document_pipes VALUES (37,8,6);
INSERT INTO document_pipes VALUES (38,8,7);
INSERT INTO document_pipes VALUES (39,8,9);
INSERT INTO document_pipes VALUES (40,9,1);
INSERT INTO document_pipes VALUES (41,9,6);
INSERT INTO document_pipes VALUES (42,9,7);
INSERT INTO document_pipes VALUES (43,9,8);
INSERT INTO document_pipes VALUES (44,5,6);
INSERT INTO document_pipes VALUES (45,5,7);
INSERT INTO document_pipes VALUES (46,5,8);
INSERT INTO document_pipes VALUES (47,5,9);
INSERT INTO document_pipes VALUES (48,6,5);
INSERT INTO document_pipes VALUES (49,7,5);
INSERT INTO document_pipes VALUES (50,8,5);
INSERT INTO document_pipes VALUES (51,9,5);
INSERT INTO document_pipes VALUES (52,7,1);
INSERT INTO document_pipes VALUES (53,5,10);
INSERT INTO document_pipes VALUES (54,10,5);
INSERT INTO document_pipes VALUES (55,10,1);
INSERT INTO document_pipes VALUES (56,1,10);
INSERT INTO document_pipes VALUES (57,8,4);
INSERT INTO document_pipes VALUES (58,9,4);
INSERT INTO document_pipes VALUES (59,11,1);
INSERT INTO document_pipes VALUES (60,11,5);
INSERT INTO document_pipes VALUES (61,11,6);
INSERT INTO document_pipes VALUES (62,11,9);
INSERT INTO document_pipes VALUES (63,11,10);
INSERT INTO document_pipes VALUES (64,10,11);
INSERT INTO document_pipes VALUES (65,10,6);

#
# Table structure for table 'document_stamps'
#

# DROP TABLE IF EXISTS document_stamps;
CREATE TABLE `document_stamps` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `reg_no` varchar(30) default NULL,
  `reg_date` date default NULL,
  `num_pages` int(3) unsigned default NULL,
  `doc_ind` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_stamps'
#

INSERT INTO document_stamps VALUES (19,'GGG','2005-03-01',7,637);
INSERT INTO document_stamps VALUES (6,'234234','2005-02-16',3,624);
INSERT INTO document_stamps VALUES (20,'yuyyy','2005-03-09',3,638);

#
# Table structure for table 'document_sub_kinds'
#

# DROP TABLE IF EXISTS document_sub_kinds;
CREATE TABLE `document_sub_kinds` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(100) default NULL,
  `description` blob,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'document_sub_kinds'
#

INSERT INTO document_sub_kinds VALUES (1,'Служебная записка','');
INSERT INTO document_sub_kinds VALUES (2,'Объяснительная записка','');
INSERT INTO document_sub_kinds VALUES (3,'Приказ','');
INSERT INTO document_sub_kinds VALUES (4,'Распоряжение','');
INSERT INTO document_sub_kinds VALUES (5,'Протокол','');
INSERT INTO document_sub_kinds VALUES (6,'Акт','');
INSERT INTO document_sub_kinds VALUES (7,'Докладная записка','');
INSERT INTO document_sub_kinds VALUES (8,'Справка','');
INSERT INTO document_sub_kinds VALUES (9,'Служебное письмо','');
INSERT INTO document_sub_kinds VALUES (10,'Телеграмма','');
INSERT INTO document_sub_kinds VALUES (11,'Телефонограмма','');
INSERT INTO document_sub_kinds VALUES (12,'Отчет',NULL);
INSERT INTO document_sub_kinds VALUES (13,'Приказ о приеме на работу',NULL);
INSERT INTO document_sub_kinds VALUES (14,'Приказ об увольнении',NULL);
INSERT INTO document_sub_kinds VALUES (15,'Приказ о перемещении',NULL);
INSERT INTO document_sub_kinds VALUES (16,'Приказ по кадрам',NULL);
INSERT INTO document_sub_kinds VALUES (17,'Факс',NULL);
INSERT INTO document_sub_kinds VALUES (18,'Жалоба',NULL);

#
# Table structure for table 'documents'
#

# DROP TABLE IF EXISTS documents;
CREATE TABLE `documents` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `flag` int(4) unsigned default NULL,
  `from_user` int(8) unsigned NOT NULL default '0',
  `to_user` int(8) unsigned NOT NULL default '0',
  `make_date` datetime default NULL,
  `doc_kind` int(8) NOT NULL default '0',
  `caption` varchar(100) default NULL,
  `content` blob,
  `doc_sub_kind` int(8) unsigned NOT NULL default '0',
  `pipe_ind` int(8) unsigned default NULL,
  `doc_state` int(8) unsigned default NULL,
  `owner_id` int(8) unsigned default NULL,
  `send_date` datetime default NULL,
  `answer_date` datetime default NULL,
  `folder_ind` int(8) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'documents'
#

INSERT INTO documents VALUES (3,0,4,1,'2004-11-18 11:45:43',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxxclxjZjFcbGFuZzEwODdcZjBcZnMy\r\nMFwnYzRcJ2U4XCdmMFwnZTVcJ2VhXCdmMlwnZWVcJ2YwXCdmMyBcJ2MzXCdjZVwnY2ENClxwYXIg\r\nDQpccGFyIA0KXHBhciANClxwYXIgXHBhcmRccWNcJ2QxXCdlYlwnZjNcJ2U2XCdlNVwnZTFcJ2Vh\r\nXCdlMA0KXHBhciANClxwYXIgXHBhcmRcJ2VmXCdmMFwnZWVcJ2UyXCdlNVwnZjBcJ2VhXCdlMCBc\r\nJ2YxXCdlMlwnZmZcJ2U3XCdlOFxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (6,0,3,1,'2004-11-19 16:51:10',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nVGltZXMgTmV3IFJvbWFuO31UaW1lcyBOZXcgUm9tYW4gQ1lSO317XGYxXGZuaWwgQXJpYWw7fX0N\r\nCntcY29sb3J0YmwgO1xyZWQwXGdyZWVuMFxibHVlMDt9DQpcdmlld2tpbmQ0XHVjMVxwYXJkXGNm\r\nMVxsYW5nMTAzM1xmczIwXHBhclxwYXItLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t\r\nLS0tLS0tLS0tLS1ccGFyIFxwbGFpbgpcdmlld2tpbmQ0XHVjMVxwYXJkXHFjXGNmMVxsYW5nMTA0\r\nOVxiXGYwXGZzMzBcJ2NmXCdmMFwnZWVcJ2UyXCdlNVwnZjBcJ2VhXCdlMCBcJ2YxXCdlMlwnZmZc\r\nJ2U3XCdlOC4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uDQpccGFyIFxiMFwnZTBcJ2Vi\r\nXCdlZVwnZWVcJ2VlXCdlZS4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uLi4uXGxhbmcxMDMzXGYx\r\nXGZzMjAgDQpccGFyIH0NCg==',1,5,1,0,'2004-12-22 10:50:06','2005-01-10 12:56:09',1);
INSERT INTO documents VALUES (8,0,5,1,'2004-11-22 10:40:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\nfQ0Ke1xjb2xvcnRibFxyZWQwXGdyZWVuMFxibHVlMDt9DQpcZGVmbGFuZzEwNDlccGFyZFxwbGFp\r\nblxmMlxmczIwXGNmMCBcJ2NmXCdmMFwnZThcJ2VjXCdlNVwnZjAgXHBsYWluXGYyXGZzMjBcY2Yw\r\nXGIgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2UwXHBsYWluXGYyXGZzMjBcY2Yw\r\nICENClxwYXIgXHBhcmRcZmk3MDBccGxhaW5cbGFuZzEwMzNcZjNcZnMyMFxjZjAgDQpccGFyIH0N\r\nCgA=',1,1,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (13,0,10,1,'2004-11-22 12:17:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nY2ZcJ2YwXCdlZVwnZTJcJ2U1XCdmMFwnZWFcJ2UwIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IVxsYW5n\r\nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (14,0,10,5,'2004-11-22 12:32:43',1,'Приказ по кадрам','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fXtcZjVcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9e1xmNlxmc3dp\r\nc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9fQ0Ke1xjb2xvcnRibFxy\r\nZWQwXGdyZWVuMFxibHVlMDt9DQpcZGVmbGFuZzEwNDlccGFyZFxwbGFpblxmNlxmczIwXGNmMCBc\r\nJ2NmXCdlZlwnZjBcJ2U4XCdlY1wnZTVcJ2YwIFwnZWZcJ2U1XCdmMFwnZTVcJ2U0XCdlMFwnZjdc\r\nJ2U4XHBsYWluXGxhbmcxMDMzXGY1XGZzMjBcY2YwIA0KXHBhciB9DQoA',16,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',21);
INSERT INTO documents VALUES (15,0,10,1,'2004-11-22 12:34:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO317XGY1XGZzd2lzc1xmY2hhcnNldDIwNHtcKlxm\r\nbmFtZSBBcmlhbDt9QXJpYWwgQ3lyO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30N\r\nClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGYyXGZzMjBcY2YwIFwnZWZcJ2YwXCdlOFwnZWNcJ2U1\r\nXCdmMFxwbGFpblxsYW5nMTAzM1xmM1xmczIwXGNmMCANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (16,0,10,1,'2004-11-22 12:38:06',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fXtcZjVcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9fQ0Ke1xjb2xv\r\ncnRibFxyZWQwXGdyZWVuMFxibHVlMDt9DQpcZGVmbGFuZzEwNDlccGFyZFxwbGFpblxmM1xmczIw\r\nXGNmMCBcJ2NmXCdmMFwnZThcJ2VjXCdlNVwnZjAgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdl\r\nZFwnZjJccGxhaW5cbGFuZzEwMzNcZjVcZnMyMFxjZjAgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (17,0,1,10,'2004-11-22 12:58:21',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nY2ZcJ2VlXCdlYlwnZjNcJ2Y3XCdlOFwnZWIgXCdjMlwnZTBcJ2Y4IFwnZTRcJ2VlXCdlYVwnZjNc\r\nJ2VjXCdlNVwnZWRcJ2YyLg0KXHBhciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlIFwnZTdc\r\nJ2UwIFwnZjFcJ2VlXCdmMlwnZjBcJ2YzXCdlNFwnZWRcJ2U4XCdmN1wnZTVcJ2YxXCdmMlwnZTJc\r\nJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,9,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (232,0,8,5,'2004-12-01 14:49:23',1,'Отчет','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRl\r\nZmxhbmcxMDQ5XHBhcmRccGxhaW5cZjJcZnMyMFxjZjAgXCdkMVwnZTJcJ2U1XCdlNFwnZTVcJ2Vk\r\nXCdlOFwnZmYgXCdlZlwnZWUgXCdmMVwnZWVcJ2Y2XCdlOFwnZTBcJ2ViXCdmY1wnZWRcJ2ZiXCdl\r\nYyBcJ2ViXCdmY1wnZTNcJ2VlXCdmMlwnZTBcJ2VjXHBsYWluXGxhbmcxMDMzXGYzXGZzMjBcY2Yw\r\nIA0KXHBhciB9DQoA',12,51,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',15);
INSERT INTO documents VALUES (226,0,8,1,'2004-12-01 12:17:11',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRl\r\nZmxhbmcxMDQ5XHBhcmRccGxhaW5cZjJcZnMyMFxjZjAgXCdlZlwnZjBcJ2U4XCdlY1wnZTVcJ2Yw\r\nXHBsYWluXGxhbmcxMDMzXGYzXGZzMjBcY2YwIA0KXHBhciB9DQoA',1,1,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (225,0,5,10,'2004-11-30 17:34:44',1,'Приказ по кадрам','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3MgQXJpYWw7fXtcZjRcZnN3aXNzXGZjaGFyc2V0MjA0e1wqXGZuYW1l\r\nIEFyaWFsO31BcmlhbCBDeXI7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRl\r\nZmxhbmcxMDQ5XHBhcmRccGxhaW5cZjJcZnMyNFxjZjAgXCdkMFwnZTBcJ2YxXCdlZlwnZWVcJ2Yw\r\nXCdmZlwnZTZcJ2U1XCdlZFwnZThcJ2U1DQpccGFyIFxwbGFpblxmNFxmczI0XGNmMCANClxwYXIg\r\nDQpccGFyIFxwYXJkXHJpLTIwXHBsYWluXGY0XGZzMjRcY2YwIFwnZDJcJ2VlXCdlYVwnZTFcJ2U1\r\nXCdmMFwnZTNcJ2U1XCdlZFwnZWVcJ2UyXCdlMCBcJ2MwLiAtIFwnZWZcJ2U1XCdmMFwnZTVcJ2Uy\r\nXCdlNVwnZjFcJ2YyXCdlOCBcJ2YxIDAxLjEyLjIwMDRcJ2UzIFwnZTIgXCdlM1wnZjBcJ2YzXCdl\r\nZlwnZWZcJ2YzIFwnZjFcJ2VmXCdlNVwnZjZcJ2U4XCdlMFwnZWJcJ2U4XCdmMVwnZjJcJ2VlXCdl\r\nMiBcJ2U1XCdlMlwnZjBcJ2VlXCdmMFwnZTVcJ2VjXCdlZVwnZWRcJ2YyXCdlMCBcJ2Y4XCdmMlwn\r\nZjNcJ2VhXCdlMFwnZjJcJ2YzXCdmMFwnZWVcJ2VjLVwnZWNcJ2UwXCdlYlwnZmZcJ2YwXCdlZVwn\r\nZWMgXCdmMSBcJ2VlXCdlZlwnZWJcJ2UwXCdmMlwnZWVcJ2U5IFwnZWZcJ2VlIFwnZjhcJ2YyXCdl\r\nMFwnZjJcJ2VkXCdlZVwnZWNcJ2YzIFwnZjBcJ2UwXCdmMVwnZWZcJ2U4XCdmMVwnZTBcJ2VkXCdl\r\nOFwnZmVccGxhaW5cbGFuZzEwMzNcZjJcZnMyMFxjZjAgDQpccGFyIH0NCgA=',16,54,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',21);
INSERT INTO documents VALUES (208,0,9,1,'2004-11-29 09:55:33',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJs\r\ndWUwO30NClxkZWZsYW5nMTAzM1xwYXJkXHBsYWluXGYzXGZzMjBcY2YwIHNhbXBsZQ0KXHBhciB9\r\nDQoA',1,1,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (209,0,6,1,'2004-11-29 10:01:36',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MjA0\r\ne1wqXGZuYW1lIEFyaWFsO31BcmlhbCBDeXI7fXtcZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9\r\nfQ0Ke1xjb2xvcnRibFxyZWQwXGdyZWVuMFxibHVlMDt9DQpcZGVmbGFuZzEwNDlccGFyZFxwbGFp\r\nblxmMlxmczIwXGNmMCBcJ2NmXCdmMFwnZThcJ2VjXCdlNVwnZjAgXCdmMVwnZWVcJ2VlXCdlMVwn\r\nZjlcJ2U1XCdlZFwnZThcJ2ZmXHBsYWluXGxhbmcxMDMzXGYzXGZzMjBcY2YwIA0KXHBhciB9DQoA',1,1,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (643,0,5,4,'2005-03-23 11:29:27',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRl\r\nZmxhbmcxMDQ5XHBhcmRccGxhaW5cZjJcZnMyMFxjZjAgXCdjYVwnZWVcJ2ViLiBcJ2U0XCdlZVwn\r\nZTNcJ2VlXCdlMlwnZWVcJ2YwDQpccGFyIH0NCgA=',1,14,1,0,'2005-03-23 11:29:55','1899-12-30 00:00:00',NULL);
INSERT INTO documents VALUES (215,0,1,4,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (216,0,1,5,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (217,0,1,9,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (218,0,1,8,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (219,0,1,7,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (220,0,1,6,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (221,0,1,10,'2004-11-29 11:10:44',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWRc\r\nJ2U4XCdmZlwnZWNcJ2U4IFwnZTIgXCdlZlwnZjBcJ2VlXCdlM1wnZjBcJ2UwXCdlY1wnZWNcJ2U1\r\nLCBcJ2VmXCdlZVwnZTZcJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwLCBcJ2VlXCdlMVwnZWRc\r\nJ2VlXCdlMlwnZThcJ2YyXCdlNSBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUuDQpccGFyIA0KXHBh\r\nciBcJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlLlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (222,0,1,5,'2004-11-29 11:22:11',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXHBh\r\ncmRcZmk1MDBcJ2M0XCdlZVwnZTJcJ2VlXCdlNlwnZjMgXCdlNFwnZWUgXCdjMlwnZTBcJ2Y4XCdl\r\nNVwnZTNcJ2VlIFwnZjFcJ2UyXCdlNVwnZTRcJ2U1XCdlZFwnZThcJ2ZmLCBcJ2Y3XCdmMlwnZWUg\r\nXCdlMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZWVcJ2YyXCdmMVwnZjNcJ2YyXCdmMVwn\r\nZjJcJ2UyXCdlOFwnZTVcJ2VjIFwnZWZcJ2U1XCdmMFwnZjFcJ2VlXCdlZFwnZTBcJ2ViXCdmY1wn\r\nZWRcJ2ZiXCdmNSBcJ2VhXCdlZVwnZWNcJ2VmXCdmY1wnZmVcJ2YyXCdlNVwnZjBcJ2VlXCdlMiBc\r\nJ2UyIFwnZjNcJ2VhXCdlMFwnZTdcJ2UwXCdlZFwnZWRcJ2ZiXCdmNSBcJ2MyXCdlMFwnZWNcJ2U4\r\nIFwnZWVcJ2YyXCdlNFwnZTVcJ2ViXCdlMFwnZjUsIFwnZjNcJ2U0XCdlZVwnZTJcJ2ViXCdlNVwn\r\nZjJcJ2UyXCdlZVwnZjBcJ2ZmXCdmZVwnZjlcJ2U4XCdmNSBcJ2VjXCdlOFwnZWRcJ2U4XCdlY1wn\r\nZTBcJ2ViXCdmY1wnZWRcJ2ZiXCdlYyBcJ2YyXCdmMFwnZTVcJ2UxXCdlZVwnZTJcJ2UwXCdlZFwn\r\nZThcJ2ZmXCdlYyBcJ2VmXCdmMFwnZWVcJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIsIFwnZTJcJ2Vk\r\nXCdlNVwnZTRcJ2YwXCdlNVwnZWRcJ2U4XCdlNSBcJ2UyXCdlZFwnZTUgXCdlNFwnZTVcJ2VmXCdl\r\nMFwnZjBcJ2YyXCdlMFwnZWNcJ2U1XCdlZFwnZjJcJ2UwIFwnZThcJ2VkXCdmNFwnZjBcJ2UwXCdm\r\nMVwnZjJcJ2YzXCdlYVwnZjJcJ2YzXCdmMFwnZmIgXCdlMVwnZjNcJ2U0XCdlNVwnZjIgXCdlZlwn\r\nZjBcJ2VlXCdlMlwnZWVcJ2U0XCdlOFwnZjJcJ2ZjXCdmMVwnZmYgXCdlZlwnZWUgXCdlY1wnZTVc\r\nJ2YwXCdlNSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZWJcJ2U1XCdlZFwnZThcJ2ZmIFwnZWZcJ2Uw\r\nXCdmMFwnZWFcJ2UwIFwnZTJcJ2ZiXCdmN1wnZThcJ2YxXCdlYlwnZThcJ2YyXCdlNVwnZWJcJ2Zj\r\nXCdlZFwnZWVcJ2U5IFwnZjJcJ2U1XCdmNVwnZWRcJ2U4XCdlYVwnZTguDQpccGFyIA0KXHBhciBc\r\nJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlIFwnZTdcJ2UwIFwnZjFcJ2VlXCdmMlwnZjBcJ2Yz\r\nXCdlNFwnZWRcJ2U4XCdmN1wnZTVcJ2YxXCdmMlwnZTJcJ2VlXGxhbmcxMDMzXGYxIA0KXHBhciB9\r\nDQoA',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (224,0,5,10,'2004-11-30 17:30:00',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXHBh\r\ncmRcZmk1MDBcJ2M0XCdlZVwnZTJcJ2VlXCdlNlwnZjMgXCdlNFwnZWUgXCdjMlwnZTBcJ2Y4XCdl\r\nNVwnZTNcJ2VlIFwnZjFcJ2UyXCdlNVwnZTRcJ2U1XCdlZFwnZThcJ2ZmLCBcJ2Y3XCdmMlwnZWUg\r\nXCdlMiBcJ2YxXCdlMlwnZmZcJ2U3XCdlOCBcJ2YxIFwnZWVcJ2YyXCdmMVwnZjNcJ2YyXCdmMVwn\r\nZjJcJ2UyXCdlOFwnZTVcJ2VjIFwnZWZcJ2U1XCdmMFwnZjFcJ2VlXCdlZFwnZTBcJ2ViXCdmY1wn\r\nZWRcJ2ZiXCdmNSBcJ2VhXCdlZVwnZWNcJ2VmXCdmY1wnZmVcJ2YyXCdlNVwnZjBcJ2VlXCdlMiBc\r\nJ2UyIFwnZjNcJ2VhXCdlMFwnZTdcJ2UwXCdlZFwnZWRcJ2ZiXCdmNSBcJ2MyXCdlMFwnZWNcJ2U4\r\nIFwnZWVcJ2YyXCdlNFwnZTVcJ2ViXCdlMFwnZjUsIFwnZjNcJ2U0XCdlZVwnZTJcJ2ViXCdlNVwn\r\nZjJcJ2UyXCdlZVwnZjBcJ2ZmXCdmZVwnZjlcJ2U4XCdmNSBcJ2VjXCdlOFwnZWRcJ2U4XCdlY1wn\r\nZTBcJ2ViXCdmY1wnZWRcJ2ZiXCdlYyBcJ2YyXCdmMFwnZTVcJ2UxXCdlZVwnZTJcJ2UwXCdlZFwn\r\nZThcJ2ZmXCdlYyBcJ2VmXCdmMFwnZWVcJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIsIFwnZTJcJ2Vk\r\nXCdlNVwnZTRcJ2YwXCdlNVwnZWRcJ2U4XCdlNSBcJ2UyXCdlZFwnZTUgXCdlNFwnZTVcJ2VmXCdl\r\nMFwnZjBcJ2YyXCdlMFwnZWNcJ2U1XCdlZFwnZjJcJ2UwIFwnZThcJ2VkXCdmNFwnZjBcJ2UwXCdm\r\nMVwnZjJcJ2YzXCdlYVwnZjJcJ2YzXCdmMFwnZmIgXCdlMVwnZjNcJ2U0XCdlNVwnZjIgXCdlZlwn\r\nZjBcJ2VlXCdlMlwnZWVcJ2U0XCdlOFwnZjJcJ2ZjXCdmMVwnZmYgXCdlZlwnZWUgXCdlY1wnZTVc\r\nJ2YwXCdlNSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZWJcJ2U1XCdlZFwnZThcJ2ZmIFwnZWZcJ2Uw\r\nXCdmMFwnZWFcJ2UwIFwnZTJcJ2ZiXCdmN1wnZThcJ2YxXCdlYlwnZThcJ2YyXCdlNVwnZWJcJ2Zj\r\nXCdlZFwnZWVcJ2U5IFwnZjJcJ2U1XCdmNVwnZWRcJ2U4XCdlYVwnZTguDQpccGFyIA0KXHBhciBc\r\nJ2QxXCdlZlwnZTBcJ2YxXCdlOFwnZTFcJ2VlIFwnZTdcJ2UwIFwnZjFcJ2VlXCdmMlwnZjBcJ2Yz\r\nXCdlNFwnZWRcJ2U4XCdmN1wnZTVcJ2YxXCdmMlwnZTJcJ2VlXGxhbmcxMDMzXGYxIA0KXHBhciB9\r\nDQoA',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',21);
INSERT INTO documents VALUES (231,0,8,5,'2004-12-01 14:34:59',1,'Отчет','e1xydGYxXGFuc2lcYW5zaWNwZzEyNTFcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQy\r\nMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9y\r\ndGJsIDtccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEw\r\nNDlcZjBcZnMyMFwnY2ZcJ2YwXCdlOFwnZWNcJ2U1XCdmMCBcJ2VlXCdmMlwnZjFcJ2ZiXCdlYlwn\r\nZWFcJ2U4LlxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',12,51,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',15);
INSERT INTO documents VALUES (236,0,8,1,'2004-12-01 15:14:58',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJs\r\ndWUwO30NClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGYzXGZzMjBcY2YwIFwnYzIgXCdlZlwnZjBc\r\nJ2U4XCdlYlwnZWVcJ2U2XCdlNVwnZWRcJ2U4XCdlOCAxIFwnZWRcJ2UwXCdmNVwnZWVcJ2U0XCdl\r\nOFwnZjJcJ2YxXCdmZiBcJ2VmXCdmMFwnZThcJ2VhXCdlMFwnZTcgMTI3XHBsYWluXGxhbmcxMDMz\r\nXGY0XGZzMjBcY2YwIA0KXHBhciB9DQoA',1,37,1,0,'2004-12-22 10:50:06','2004-12-23 16:43:09',1);
INSERT INTO documents VALUES (237,0,8,7,'2004-12-01 15:14:58',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJs\r\ndWUwO30NClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGYzXGZzMjBcY2YwIFwnYzIgXCdlZlwnZjBc\r\nJ2U4XCdlYlwnZWVcJ2U2XCdlNVwnZWRcJ2U4XCdlOCAxIFwnZWRcJ2UwXCdmNVwnZWVcJ2U0XCdl\r\nOFwnZjJcJ2YxXCdmZiBcJ2VmXCdmMFwnZThcJ2VhXCdlMFwnZTcgMTI3XHBsYWluXGxhbmcxMDMz\r\nXGY0XGZzMjBcY2YwIA0KXHBhciB9DQoA',1,58,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',15);
INSERT INTO documents VALUES (239,0,8,6,'2004-12-01 15:18:15',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJs\r\ndWUwO30NClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGYzXGZzMjBcY2YwIFwnYzIgXCdlZlwnZjBc\r\nJ2U4XCdlYlwnZWVcJ2U2XCdlNVwnZWRcJ2U4XCdlOCAxIFwnZWRcJ2UwXCdmNVwnZWVcJ2U0XCdl\r\nOFwnZjJcJ2YxXCdmZiBcJ2VmXCdmMFwnZThcJ2VhXCdlMFwnZTcgMTI3XHBsYWluXGxhbmcxMDMz\r\nXGY0XGZzMjBcY2YwIA0KXHBhciB9DQoA',1,37,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',15);
INSERT INTO documents VALUES (240,0,8,1,'2004-12-01 15:26:22',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9e1xmNVxm\r\nc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30N\r\nClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGY0XGZzMjBcY2YwIFwnZWRcJ2U1IFwnZWNcJ2VlXCdl\r\nNlwnZTVcJ2VjIFwnZWVcJ2YyXCdlZVwnZjFcJ2ViXCdlMFwnZjJcJ2ZjIFwnZTRcJ2VlXCdlYVwn\r\nZjNcJ2VjXCdlNVwnZWRcJ2YyXHBsYWluXGxhbmcxMDMzXGYyXGZzMjBcY2YwIA0KXHBhciB9DQoA',1,37,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (241,0,8,5,'2004-12-01 15:47:39',1,'Отчет','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9e1xmNVxm\r\nc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30N\r\nClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGY0XGZzMjBcY2YwIDEuXCdjZlwnZWUgXCdmNFwnZWVc\r\nJ2VkXCdlNFwnZjMgXCdjYVwnZjNcJ2VkXCdlMFwnZTVcJ2UyXCdlMCBcJ2VmXCdmMC5cJ2I5NTQy\r\nIFwnZWVcJ2YyIDIwLjEwLjA0XCdlMy4gLSAyMDAwMDAgXCdmMlwnZTVcJ2VkLiBcJ2NmXCdmM1wn\r\nZjFcJ2YyXCdlZVwnZTJcJ2U4XCdmMiBcJ2VlXCdlMVwnZTVcJ2Y5XCdlMFwnZWJcJ2UwIFwnZTRc\r\nJ2VlIFwnZWFcJ2VlXCdlZFwnZjZcJ2UwIFwnZWRcJ2U1XCdlNFwnZTVcJ2ViXCdlOCBcJ2VmXCdl\r\nNVwnZjBcJ2U1XCdmMVwnZWJcJ2UwXCdmMlwnZmMuDQpccGFyIDIuXCdjZlwnZjBcJ2U1XCdlN1wn\r\nZThcJ2U0XCdlNVwnZWRcJ2YyIFwnZWZcJ2VlXCdlNFwnZWZcJ2U4XCdmMVwnZTBcJ2ViICBcJ2Vm\r\nXCdmMFwnZThcJ2VhXCdlMFwnZTcgXCdlZSBcJ2YxXCdlZlwnZWVcJ2VkXCdmMVwnZWVcJ2YwLiBc\r\nJ2VmXCdlZVwnZWMuIFwnZDFcJ2Q4IFwnYjkyNiBcJ2VlIFwnZTJcJ2ZiXCdlNFwnZTVcJ2ViXCdl\r\nNVwnZWRcJ2U4XCdlOCAyLVwnZjUgXCdlYVwnZWVcJ2VjXCdlZlwnZmNcJ2ZlXCdmMlwnZTVcJ2Yw\r\nXCdlZVwnZTIsIFwnZWZcJ2YwLiBcJ2I5NjMwIFwnZWVcJ2YyIDAxLjEyLjA0LlxwbGFpblxsYW5n\r\nMTAzM1xmMlxmczIwXGNmMCANClxwYXIgfQ0KAA==',12,51,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',15);
INSERT INTO documents VALUES (242,0,1,8,'2004-12-01 17:38:13',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nY2ZcJ2VlXCdlYlwnZjNcJ2Y3XCdlOFwnZWIgXCdjMlwnZTBcJ2Y4XCdlNSBcJ2YxXCdlZVwnZWVc\r\nJ2UxXCdmOVwnZTVcJ2VkXCdlOFwnZTUuDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdmM1wn\r\nZTlcJ2YxXCdmMlwnZTAgXCdmMFwnZTBcJ2YxXCdlZlwnZThcJ2Y4XCdlOFwnZjJcJ2U1IFwnZTJc\r\nJ2U4XCdlNFwnZThcJ2VjXCdmYlwnZTUgXCdmZFwnZjRcJ2Y0XCdlNVwnZWFcJ2YyXCdmYiBcJ2Vk\r\nXCdlNVwnZWZcJ2VlXCdlYlwnZTBcJ2U0XCdlYVwnZTguXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,1,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (244,0,10,5,'2004-12-02 09:59:09',1,'Служебная записка','',1,55,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',21);
INSERT INTO documents VALUES (247,0,10,5,'2004-12-02 11:23:21',1,'Приказ о приеме на работу','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9e1xmNVxm\r\nc3dpc3NcZmNoYXJzZXQxIEFyaWFsO317XGY2XGZzd2lzcyBBcmlhbDt9e1xmN1xmc3dpc3MgQXJp\r\nYWw7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRlZmxhbmcxMDMzXHBhcmRc\r\ncGxhaW5cZjJcZnMyMFxjZjAgdHRyeXQNClxwYXIgfQ0KAA==',13,55,1,0,'2004-12-22 10:50:06','1899-12-30 00:00:00',21);
INSERT INTO documents VALUES (277,0,10,5,'2004-12-02 12:29:03',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO317XGY0XGZzd2lzc1xmY2hhcnNldDIw\r\nNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ3lyO317XGY1XGZyb21hblxmY2hhcnNldDIwNCBUaW1l\r\ncyBOZXcgUm9tYW4oSyk7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRlZmxh\r\nbmcxMDQ5XHBhcmRccGxhaW5cZjRcZnMyMFxjZjAgXCdkMVwnY2JcJ2QzXCdjNlwnYzVcJ2MxXCdj\r\nZFwnYzBcJ2RmIFwnYzdcJ2MwXCdjZlwnYzhcJ2QxXCdjYVwnYzBccGxhaW5cbGFuZzEwMzNcZjJc\r\nZnMyMFxjZjAgDQpccGFyIH0NCgA=',1,55,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',21);
INSERT INTO documents VALUES (286,0,1,4,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (287,0,1,5,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (288,0,1,9,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (289,0,1,8,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (290,0,1,7,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (291,0,1,6,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (292,0,1,10,'2004-12-02 12:38:14',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlNSBcJ2YzXCdmMlwnZjBcJ2VlLg0KXHBhciANClxwYXIgXCdj\r\nMVwnZjNcJ2U0XCdmY1wnZjJcJ2U1IFwnZTRcJ2VlXCdlMVwnZjBcJ2ZiLCBcJ2VmXCdlZVwnZTZc\r\nJ2UwXCdlYlwnZjNcJ2U5XCdmMVwnZjJcJ2UwIFwnZWVcJ2UxXCdlZFwnZWVcJ2UyXCdlOFwnZjJc\r\nJ2U1IFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZSBcJ2U0XCdlZVwnZWFcJ2YzXCdlY1wnZTVcJ2Vk\r\nXCdmMlwnZWVcJ2VlXCdlMVwnZWVcJ2YwXCdlZVwnZjJcJ2UwLg0KXHBhciANClxwYXIgXCdkMVwn\r\nZWZcJ2UwXCdmMVwnZThcJ2UxXCdlZVxsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (293,0,10,1,'2004-12-02 12:46:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO317XGY0XGZzd2lzc1xmY2hhcnNldDIw\r\nNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ3lyO317XGY1XGZyb21hblxmY2hhcnNldDIwNCBUaW1l\r\ncyBOZXcgUm9tYW4oSyk7fX0NCntcY29sb3J0YmxccmVkMFxncmVlbjBcYmx1ZTA7fQ0KXGRlZmxh\r\nbmcxMDQ5XHBhcmRccGxhaW5cZjRcZnMyMFxjZjAgXCdkMVwnY2JcJ2QzXCdjNlwnYzVcJ2MxXCdj\r\nZFwnYzBcJ2RmIFwnYzdcJ2MwXCdjZlwnYzhcJ2QxXCdjYVwnYzBccGxhaW5cbGFuZzEwMzNcZjJc\r\nZnMyMFxjZjAgDQpccGFyIH0NCgA=',1,55,3,0,'2004-12-22 10:50:06','2005-03-11 09:04:10',1);
INSERT INTO documents VALUES (294,0,10,1,'2004-12-02 12:49:02',2,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZwcnEyXGZjaGFy\r\nc2V0MjA0IFN5c3RlbTt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFy\r\naWFsIEN5cjt9e1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO317XGY1XGZzd2lzc1xmY2hhcnNl\r\ndDIwNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ3lyO317XGY2XGZzd2lzcyBBcmlhbDt9e1xmN1xm\r\nc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30N\r\nClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGY1XGZzMjBcY2YwIFwnY2ZcJ2QwXCdjOFwnY2NcJ2M1\r\nXCdkMCBcJ2NmXCdkMFwnYzhcJ2NiXCdjZVwnYzZcJ2M1XCdjZFwnYzhcJ2RmXHBsYWluXGxhbmcx\r\nMDMzXGY0XGZzMjBcY2YwIA0KXHBhciB9DQoA',1,56,0,10,'2004-12-22 10:50:06','0000-00-00 00:00:00',22);
INSERT INTO documents VALUES (569,0,3,4,'2005-01-18 16:49:34',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmc3dpc3MgTVMgU2FucyBT\r\nZXJpZjt9e1xmMVxmcm9tYW5cZmNoYXJzZXQyIFN5bWJvbDt9e1xmMlxmc3dpc3MgQXJpYWw7fXtc\r\nZjNcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9e1xmNFxmc3dpc3NcZmNoYXJzZXQxIEFyaWFsO319\r\nDQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30NClxkZWZsYW5nMTAzM1xwYXJkXHBsYWlu\r\nXGYzXGZzMjBcY2YwIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwnZWZcJ2YwXCdlZVwnZjFcJ2VjXCdl\r\nZVwnZjJcJ2YwXCdlNVwnZjJcJ2ZjIFwnZTBcJ2Y4XCdlNSBcJ2U3XCdlMFwnZTRcJ2UwXCdlZFwn\r\nZThcJ2U1IQ0KXHBhciB9DQoA',1,7,1,0,'2005-01-18 16:50:08','2005-01-18 16:52:30',NULL);
INSERT INTO documents VALUES (305,0,1,4,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (306,0,1,5,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (307,0,1,9,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (308,0,1,8,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (309,0,1,7,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (310,0,1,6,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (311,0,1,10,'2004-12-07 18:13:51',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2VlXCdlNlwnZTBcJ2ViXCdm\r\nM1wnZTlcJ2YxXCdmMlwnZTAgXCdlZVwnZTFcJ2VkXCdlZVwnZTJcJ2U4XCdmMlwnZTUgXCdlMlwn\r\nZTVcJ2YwXCdmMVwnZThcJ2ZlIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdl\r\nZVwnZmZcJ2UyXCdlYlwnZTVcJ2VkXCdlOFwnZTVcJ2VjIFwnZWRcJ2VlXCdlMlwnZmJcJ2Y1IFwn\r\nZTJcJ2VlXCdlN1wnZWNcJ2VlXCdlNlwnZWRcJ2VlXCdmMVwnZjJcJ2U1XCdlOSANClxwYXIgXCdl\r\nOCBcJ2YzXCdmMVwnZWVcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2YxXCdmMlwnZTJcJ2VlXCdl\r\nMlwnZTBcJ2VkXCdlOFwnZTlcbGFuZzEwMzNcZjEgDQpccGFyIH0NCgA=',1,2,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (319,0,5,4,'2004-12-09 16:21:57',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzXGZjaGFyc2V0MSBB\r\ncmlhbDt9e1xmM1xmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9\r\ne1xmNFxmc3dpc3MgQXJpYWw7fXtcZjVcZnN3aXNzIEFyaWFsO317XGY2XGZzd2lzc1xmY2hhcnNl\r\ndDIwNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ3lyO319DQp7XGNvbG9ydGJsXHJlZDBcZ3JlZW4w\r\nXGJsdWUwO30NClxkZWZsYW5nMTA0OVxwYXJkXHBsYWluXGxhbmcxMDMzXGYyXGZzMjBcY2YwXGIg\r\nIFxwbGFpblxmNlxmczI0XGNmMCBcJ2NkXCdlMCBcJ2MyXCdlMFwnZjggXCdlN1wnZTBcJ2VmXCdm\r\nMFwnZTBcJ2VlXCdmMSAtIFwnYzRcJ2M4IA0KXHBhciAxLiBcJ2UyXCdlZVwnZTRcJ2U4XCdmMlwn\r\nZTVcJ2ViXCdmZg0KXHBhciAyLiBcJ2ZkXCdlYlwnZTVcJ2VhXCdmMlwnZjBcJ2U4XCdlYVxwbGFp\r\nblxsYW5nMTAzM1xmMlxmczIwXGNmMCANClxwYXIgfQ0KAA==',1,15,1,0,'2004-12-22 10:50:06','2005-03-17 09:48:06',9);
INSERT INTO documents VALUES (419,0,1,6,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,25,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (420,0,1,7,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,26,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (421,0,1,8,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,27,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (422,0,1,9,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,28,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (423,0,1,10,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,56,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (541,0,3,1,'2004-12-28 12:33:24',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmc3dpc3MgTVMgU2FucyBT\r\nZXJpZjt9e1xmMVxmcm9tYW5cZmNoYXJzZXQyIFN5bWJvbDt9e1xmMlxmc3dpc3NcZmNoYXJzZXQx\r\nIEFyaWFsO317XGYzXGZzd2lzc1xmY2hhcnNldDIwNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ3ly\r\nO317XGY0XGZzd2lzcyBBcmlhbDt9e1xmNVxmc3dpc3NcZnBycTIgU3lzdGVtO319DQp7XGNvbG9y\r\ndGJsXHJlZDBcZ3JlZW4wXGJsdWUwO30NClxkZWZsYW5nMTA0OVxwYXJkXGxpOTIwXGZpNDQwXHBs\r\nYWluXGYyXGZzMjBcY2YwIFwnZjZcJ2YzXCdlMFwnZjZcJ2YzXCdlMFwnZjZcJ2YzXCdlMA0KXHBh\r\nciBccGFyZFxsaTEzNjBccGxhaW5cZjJcZnMyMFxjZjAgXCdmNlwnZjNcJ2UwXCdmNlwnZjNcJ2Uw\r\nXCdmNlwnZjMNClxwYXIgMS4gXCdmNlwnZjNcJ2UwXCdmNlwnZjNcJ2UwXCdmNlwnZjNcJ2UwXCdm\r\nNlwnZjNcJ2UwXCdmNlwnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2Yz\r\nXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNc\r\nJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wn\r\nZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdm\r\nM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2Yz\r\nXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjNcJ2YzXCdmM1wnZjFcJ2VjICANClxwYXIg\r\nMi4gXCdlMFwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwn\r\nZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdl\r\nMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2Uw\r\nICBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdl\r\nMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2Uw\r\nXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwIFwnZTBcJ2Uy\r\nXCdlMlwnZTJcJ2UyXCdlMlwnZTJcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBc\r\nJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwn\r\nZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwXCdl\r\nMFwnZTBcJ2UwXCdlMFwnZTBcJ2UwIFwnZWMgXCdlMFwnZTJcJ2ZiXCdmYlwnZmJcJ2ZiXCdmYlwn\r\nZmJcJ2ZiXCdmYlwnZmJcJ2ZiXCdmYlwnZmJcJ2ZiXCdmYg0KXHBhciBcJ2ZiXCdlMlwnZWNcJ2Zi\r\nXCdlMlwnZWNcJ2UyXCdmYlwnZWNcJ2ZiXCdlMlwnZWNcJ2UyXCdlMlwnZmJcJ2ZiXCdmYlwnZmJc\r\nJ2ZiDQpccGFyIFwnZTJcJ2UwXCdlOFwnZTJcJ2UwXCdlOA0KXHBhciANClxwYXIgfQ0KAA==',1,5,1,0,'2004-12-28 12:33:27','2005-03-04 12:19:57',1);
INSERT INTO documents VALUES (534,0,1,10,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,56,1,0,'2004-12-22 18:59:04','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (533,0,1,9,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwMzNcZnMyMFxwYXJc\r\ncGFyLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXHBhciBccGxh\r\naW4KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwMzNcZnMyMFxwYXJccGFyLS0tLS0tLS0t\r\nLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXHBhciBccGxhaW4KXHZpZXdraW5k\r\nNFx1YzFccGFyZFxjZjFcbGFuZzEwMzNcZnMyMFxwYXJccGFyLS0tLS0tLS0tLS0tLS0tLS0tLS0t\r\nLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tXHBhciBccGxhaW4KXHZpZXdraW5kNFx1YzFccGFyZFxj\r\nZjFcbGFuZzEwMzNcZnMyMFxwYXJccGFyLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t\r\nLS0tLS0tLS0tLS0tXHBhciBccGxhaW4KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlc\r\nZjBcZnMyMFwnYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVc\r\nJ2VkXCdlOCBcJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwn\r\nZWJcJ2UwIFwnZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2Vm\r\nXCdmMFwnZWVcJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwn\r\nZTVcJ2U5IFwnZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRc\r\nJ2U4XCdlOSBcJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2Vm\r\nXCdlZVwnZTZcJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwn\r\nY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThc\r\nJ2YyXCdmYyBcJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1\r\nXCdlZFwnZjJcJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwn\r\nZDFcJ2VmXCdlMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNc\r\nJ2U0XCdlZFwnZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciA=',1,28,1,0,'2004-12-22 18:59:04','2005-03-04 12:18:30',1);
INSERT INTO documents VALUES (532,0,1,8,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,27,1,0,'2004-12-22 18:59:04','2005-03-04 12:18:33',1);
INSERT INTO documents VALUES (417,0,1,4,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,3,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (418,0,1,5,'2004-12-20 16:58:50',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdlZVwnZjhcJ2YzIFwn\r\nYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBcJ2UyXCdlNVwnZjBc\r\nJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJcJ2VlXCdlZVwnZTFc\r\nJ2VlXCdmMFwnZWVcJ2YyXCdlMCBcJ2UyIFwnZjFcJ2UyXCdmZlwnZTdcJ2U4IFwnZjEgXCdlZFwn\r\nZTVcJ2VhXCdlZVwnZjJcJ2VlXCdmMFwnZmJcJ2VjXCdlOCBcJ2U4XCdlN1wnZWNcJ2U1XCdlZFwn\r\nZTVcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdlMFwnZjFcJ2U4\r\nXCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwnZThcJ2Y3XCdl\r\nNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,9,1,0,'2004-12-22 10:50:06','0000-00-00 00:00:00',1);
INSERT INTO documents VALUES (531,0,1,7,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,26,1,0,'2004-12-22 18:59:04','2005-03-04 12:17:43',1);
INSERT INTO documents VALUES (543,0,3,1,'2005-01-10 12:52:48',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWwgQXJpYWw7fXtcZjFcZm5pbFxmY2hh\r\ncnNldDIwNHtcKlxmbmFtZSBBcmlhbDt9QXJpYWwgQ1lSO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxxY1xjZjFcbGFuZzEwMzNcZjBcZnMy\r\nMCANClxwYXIgXGxhbmcxMDQ5XGYxXCdjZlwnZjBcJ2VlXCdlMlwnZTVcJ2YwXCdlYVwnZTAgXCdm\r\nMVwnZTJcJ2ZmXCdlN1wnZTggXCdlN1wnZTBcJ2UyXCdlNVwnZjBcJ2Y4XCdlNVwnZWRcJ2UwIFwn\r\nZjNcJ2YxXCdlZlwnZTVcJ2Y4XCdlZFwnZWUhISFcbGFuZzEwMzNcZjAgDQpccGFyIH0NCgA=',1,5,1,0,'2005-01-10 12:52:52','2005-04-22 14:57:56',1);
INSERT INTO documents VALUES (530,0,1,6,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,25,1,0,'2004-12-22 18:59:04','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (529,0,1,5,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,9,1,0,'2004-12-22 18:59:04','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (528,0,1,4,'2004-12-22 18:58:56',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzRcJ2VlXCdlMVwnZjBcJ2VlXCdlM1wnZWUgXCdlMlwnZjBcJ2U1XCdlY1wnZTVcJ2VkXCdlOCBc\r\nJ2YxXCdmM1wnZjJcJ2VlXCdlYS4NClxwYXIgDQpccGFyIFwnYzJcJ2ZiXCdmOFwnZWJcJ2UwIFwn\r\nZWRcJ2VlXCdlMlwnZTBcJ2ZmIFwnZTJcJ2U1XCdmMFwnZjFcJ2U4XCdmZiBcJ2VmXCdmMFwnZWVc\r\nJ2UzXCdmMFwnZTBcJ2VjXCdlY1wnZmIgMS4yLjEyDQpccGFyIFwnYzIgXCdlZFwnZTVcJ2U5IFwn\r\nZThcJ2U3XCdlY1wnZTVcJ2VkXCdlNVwnZWQgXCdlMlwnZWRcJ2U1XCdmOFwnZWRcJ2U4XCdlOSBc\r\nJ2UyXCdlOFwnZTQsIFwnZTIgXCdmMVwnZTJcJ2ZmXCdlN1wnZTggXCdmMSBcJ2VmXCdlZVwnZTZc\r\nJ2U1XCdlYlwnZTBcJ2VkXCdlOFwnZmZcJ2VjXCdlOC4NClxwYXIgDQpccGFyIFwnY2ZcJ2YwXCdl\r\nZVwnZjhcJ2YzIFwnYzJcJ2UwXCdmMSBcJ2VlXCdlMVwnZWRcJ2VlXCdlMlwnZThcJ2YyXCdmYyBc\r\nJ2UyXCdlNVwnZjBcJ2YxXCdlOFwnZmUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1XCdlZFwnZjJc\r\nJ2VlXCdlZVwnZTFcJ2VlXCdmMFwnZWVcJ2YyXCdlMC4NClxwYXIgDQpccGFyIFwnZDFcJ2VmXCdl\r\nMFwnZjFcJ2U4XCdlMVwnZWUgXCdlN1wnZTAgXCdmMVwnZWVcJ2YyXCdmMFwnZjNcJ2U0XCdlZFwn\r\nZThcJ2Y3XCdlNVwnZjFcJ2YyXCdlMlwnZWUuXGxhbmcxMDMzXGYxIA0KXHBhciB9DQoA',1,3,1,0,'2004-12-22 18:59:04','1899-12-30 00:00:00',1);
INSERT INTO documents VALUES (594,0,3,4,'2005-01-28 13:05:32',1,'Отчет','e1xydGYxXGFuc2lcZGVmZjBcZGVmdGFiNzIwe1xmb250dGJse1xmMFxmbmlsIE1TIFNhbnMgU2Vy\r\naWY7fXtcZjFcZnJvbWFuXGZjaGFyc2V0MiBTeW1ib2w7fXtcZjJcZnN3aXNzIEFyaWFsO317XGYz\r\nXGZzd2lzc1xmY2hhcnNldDEgQXJpYWw7fXtcZjRcZnN3aXNzXGZjaGFyc2V0MSBBcmlhbDt9e1xm\r\nNVxmc3dpc3NcZmNoYXJzZXQyMDR7XCpcZm5hbWUgQXJpYWw7fUFyaWFsIEN5cjt9fQ0Ke1xjb2xv\r\ncnRibFxyZWQwXGdyZWVuMFxibHVlMDt9DQpcZGVmbGFuZzEwNDlccGFyZFxwbGFpblxmNVxmczIw\r\nXGNmMCBcJ2NlXCdmMlwnZjdcJ2U1XCdmMiBcJ2VmXCdlZSBcJ2U1XCdlNlwnZTVcJ2VjXCdlNVwn\r\nZjFcJ2ZmXCdmN1wnZWRcJ2VlXCdlY1wnZjMgXCdlMFwnZWRcJ2UwXCdlYlwnZThcJ2U3XCdmMyBc\r\nJ2YyXCdmMFwnZTBcJ2Y0XCdlOFwnZWFcJ2UwIFwnZThcJ2YxXCdlZlwnZWVcJ2ViXCdmY1wnZTdc\r\nJ2VlXCdlMlwnZTBcJ2VkXCdlOFwnZmYgXCdjOFwnZWRcJ2YyXCdlNVwnZjBcJ2VkXCdlNVwnZjIg\r\nXCdmMFwnZTVcJ2YxXCdmM1wnZjBcJ2YxXCdlZVwnZTIgKFwnZjFcJ2VjLiBcJ2UyXCdlZSBcJ2Uy\r\nXCdlYlwnZWVcJ2U2XCdlNVwnZWRcJ2VkXCdmYlwnZjUgXCdlNFwnZWVcJ2VhXCdmM1wnZWNcJ2U1\r\nXCdlZFwnZjJcJ2UwXCdmNSkuIFxwbGFpblxsYW5nMTAzM1xmM1xmczIwXGNmMCANClxwYXIgfQ0K\r\nAA==',12,7,1,0,'2005-01-28 13:06:08','1899-12-30 00:00:00',NULL);
INSERT INTO documents VALUES (641,0,4,5,'2005-03-17 09:44:58',1,'Служебная записка','e1xydGYxXGFuc2lcZGVmZjB7XGZvbnR0Ymx7XGYwXGZuaWxcZmNoYXJzZXQyMDR7XCpcZm5hbWUg\r\nQXJpYWw7fUFyaWFsIENZUjt9e1xmMVxmbmlsIEFyaWFsO319DQp7XGNvbG9ydGJsIDtccmVkMFxn\r\ncmVlbjBcYmx1ZTA7fQ0KXHZpZXdraW5kNFx1YzFccGFyZFxjZjFcbGFuZzEwNDlcZjBcZnMyMFwn\r\nYzhcJ2VkXCdmNFwnZWVcJ2YwXCdlY1wnZTBcJ2Y2XCdlOFwnZmYgXCdlZlwnZWUgXCdlN1wnZTBc\r\nJ2YwXCdlZlwnZWJcJ2UwXCdmMlwnZWRcJ2VlXCdlY1wnZjMgXCdlYVwnZjBcJ2U1XCdlNFwnZThc\r\nJ2YyXCdmM1xsYW5nMTAzM1xmMSANClxwYXIgfQ0KAA==',1,11,1,0,'2005-03-17 09:47:44','2005-03-23 15:37:16',NULL);

#
# Table structure for table 'firms'
#

# DROP TABLE IF EXISTS firms;
CREATE TABLE `firms` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(50) default NULL,
  `post_index` varchar(12) default NULL,
  `country` varchar(100) default NULL,
  `city` varchar(70) default NULL,
  `region` varchar(100) default NULL,
  `address` varchar(255) default NULL,
  `org_representative_id` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'firms'
#

INSERT INTO firms VALUES (1,'Областной акимиат','485009','Республика Казахстан','Шымкент','Южно-Казахстанская область','пр. Республики б/н',1);
INSERT INTO firms VALUES (2,'Водные ресурсы маркетинг','486319','Республика Казахстан','Шымкент','Южно-Казахстанская область','Казыбек-би',1);
INSERT INTO firms VALUES (3,'КазТрансГаз','486319','Республика Казахстан','Шымкент','Южно-Казахстанская область','Темирлановское шоссе б/н',1);

#
# Table structure for table 'folders'
#

# DROP TABLE IF EXISTS folders;
CREATE TABLE `folders` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `folder_kind` int(8) default NULL,
  `user_ind` int(8) default NULL,
  `make_date` date default NULL,
  `finish_date` date default NULL,
  `description` date default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'folders'
#

INSERT INTO folders VALUES (1,3,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (2,4,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (3,3,2,NULL,NULL,NULL);
INSERT INTO folders VALUES (4,4,2,NULL,NULL,NULL);
INSERT INTO folders VALUES (5,3,3,NULL,NULL,NULL);
INSERT INTO folders VALUES (6,4,3,NULL,NULL,NULL);
INSERT INTO folders VALUES (7,4,4,NULL,NULL,NULL);
INSERT INTO folders VALUES (8,3,4,NULL,NULL,NULL);
INSERT INTO folders VALUES (9,3,5,NULL,NULL,NULL);
INSERT INTO folders VALUES (10,4,5,NULL,NULL,NULL);
INSERT INTO folders VALUES (11,4,6,NULL,NULL,NULL);
INSERT INTO folders VALUES (12,3,6,NULL,NULL,NULL);
INSERT INTO folders VALUES (13,3,7,NULL,NULL,NULL);
INSERT INTO folders VALUES (14,4,7,NULL,NULL,NULL);
INSERT INTO folders VALUES (15,3,8,NULL,NULL,NULL);
INSERT INTO folders VALUES (16,4,8,NULL,NULL,NULL);
INSERT INTO folders VALUES (17,1,8,NULL,NULL,NULL);
INSERT INTO folders VALUES (18,1,9,NULL,NULL,NULL);
INSERT INTO folders VALUES (19,3,9,NULL,NULL,NULL);
INSERT INTO folders VALUES (20,4,9,NULL,NULL,NULL);
INSERT INTO folders VALUES (21,3,10,NULL,NULL,NULL);
INSERT INTO folders VALUES (22,4,10,NULL,NULL,NULL);
INSERT INTO folders VALUES (23,1,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (24,2,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (25,5,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (26,6,1,NULL,NULL,NULL);
INSERT INTO folders VALUES (27,1,2,NULL,NULL,NULL);

#
# Table structure for table 'folders_kind'
#

# DROP TABLE IF EXISTS folders_kind;
CREATE TABLE `folders_kind` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(50) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'folders_kind'
#

INSERT INTO folders_kind VALUES (1,'Входящие документы');
INSERT INTO folders_kind VALUES (2,'Исходящие документы');
INSERT INTO folders_kind VALUES (3,'Коммуникационные документы');
INSERT INTO folders_kind VALUES (4,'Черновики');
INSERT INTO folders_kind VALUES (5,'Организационные документы');
INSERT INTO folders_kind VALUES (6,'Распорядительные документы');

#
# Table structure for table 'incoming_docs_reg_journal'
#

# DROP TABLE IF EXISTS incoming_docs_reg_journal;
CREATE TABLE `incoming_docs_reg_journal` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `journal_id` int(8) unsigned default NULL,
  `date_of_reg` datetime default NULL,
  `firm_id` int(8) unsigned default NULL,
  `short_content` varchar(100) default NULL,
  `dest_dept_id` int(8) unsigned default NULL,
  `receiver_user_id` int(8) unsigned default NULL,
  `date_of_receive` datetime default NULL,
  `receiver_user_signature` blob,
  `outg_doc_num` varchar(50) default NULL,
  `outg_doc_date_reg` datetime default NULL,
  `remark` varchar(100) default NULL,
  `doc_sign` varchar(50) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'incoming_docs_reg_journal'
#


#
# Table structure for table 'journals'
#

# DROP TABLE IF EXISTS journals;
CREATE TABLE `journals` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `kind` int(8) unsigned default NULL,
  `caption` varchar(100) default NULL,
  `date_start` datetime default NULL,
  `date_close` datetime default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'journals'
#

INSERT INTO journals VALUES (1,1,NULL,NULL,NULL);

#
# Table structure for table 'journals_kind'
#

# DROP TABLE IF EXISTS journals_kind;
CREATE TABLE `journals_kind` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(100) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'journals_kind'
#

INSERT INTO journals_kind VALUES (1,'Журнал регистрации входящих документов');
INSERT INTO journals_kind VALUES (2,'Журнал регистрации исходящих документов');

#
# Table structure for table 'messages'
#

# DROP TABLE IF EXISTS messages;
CREATE TABLE `messages` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `from_user` int(8) unsigned default NULL,
  `to_user` int(8) unsigned default NULL,
  `message` varchar(100) default NULL,
  `status` int(8) unsigned default NULL,
  `kind` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'messages'
#

INSERT INTO messages VALUES (1,4,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (2,4,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (3,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (4,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (5,3,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (6,4,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (7,5,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (8,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (9,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (10,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (11,10,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (12,10,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (13,10,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (14,10,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (15,1,10,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (16,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (17,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (18,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (19,9,0,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (20,9,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (21,6,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (22,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (23,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (24,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (25,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (26,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (27,1,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (28,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (29,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (30,1,9,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (31,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (32,1,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (33,1,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (34,1,10,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (35,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (36,5,10,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (37,8,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (38,8,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (39,5,10,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (40,8,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (41,8,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (42,8,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (43,8,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (44,8,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (45,8,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (46,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (47,10,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (48,10,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (49,1,10,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (50,1,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (51,1,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (52,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (53,1,9,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (54,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (55,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (56,1,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (57,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (58,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (59,10,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (60,10,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (61,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (62,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (63,1,10,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (64,1,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (65,1,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (66,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (67,1,9,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (68,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (69,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (70,1,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (71,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (72,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (73,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (74,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (75,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (76,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (77,5,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (78,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (79,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (80,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (81,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (82,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (83,1,10,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (84,1,9,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (85,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (86,1,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (87,1,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (88,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (89,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (90,1,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (91,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (92,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (93,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (94,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (95,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (96,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (97,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (98,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (99,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (100,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (101,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (102,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (103,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (104,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (105,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (106,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (107,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (108,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (109,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (110,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (111,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (112,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (113,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (114,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (115,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (116,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (117,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (118,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (119,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (120,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (121,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (122,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (123,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (124,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (125,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (126,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (127,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (128,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (129,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (130,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (131,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (132,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (133,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (134,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (135,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (136,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (137,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (138,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (139,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (140,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (141,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (142,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (143,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (144,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (145,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (146,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (147,1,10,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (148,1,9,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (149,1,8,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (150,1,7,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (151,1,6,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (152,1,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (153,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (154,1,3,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (155,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (156,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (157,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (158,3,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (159,3,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (160,1,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (161,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (162,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (163,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (164,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (165,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (166,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (167,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (168,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (169,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (170,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (171,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (172,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (173,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (174,3,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (175,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (176,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (177,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (178,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (179,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (180,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (181,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (182,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (183,1,2,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (184,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (185,2,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (186,3,4,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (187,4,5,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (188,5,4,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (189,5,10,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (190,5,8,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (191,5,7,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (192,5,3,'К вам пришел документ',0,1);
INSERT INTO messages VALUES (193,5,1,'К вам пришел документ',1,1);
INSERT INTO messages VALUES (194,1,5,'К вам пришел документ',0,1);

#
# Table structure for table 'org_representative'
#

# DROP TABLE IF EXISTS org_representative;
CREATE TABLE `org_representative` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `signature` varchar(50) default NULL,
  `position` varchar(255) default NULL,
  `phone_number` varchar(30) default NULL,
  `e_mail` varchar(255) default NULL,
  `web_url` text,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'org_representative'
#

INSERT INTO org_representative VALUES (1,'Иванов И.И.','Главный менеджер','8(3272)43-55-43','some.some@lose.king','http://www.ponty.narod.ru/other/new.asp?dir=342342342342&p=93491242');

#
# Table structure for table 'roles'
#

# DROP TABLE IF EXISTS roles;
CREATE TABLE `roles` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `caption` varchar(100) NOT NULL default '',
  `description` blob,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'roles'
#

INSERT INTO roles VALUES (1,'Администратор','');
INSERT INTO roles VALUES (2,'Оператор','');
INSERT INTO roles VALUES (6,'Начальник отдела ИТ','');
INSERT INTO roles VALUES (4,'Директор д-а инфраструктуры','');
INSERT INTO roles VALUES (5,'Начальник УК и ОМР',NULL);
INSERT INTO roles VALUES (3,'Офис менеджер',NULL);

#
# Table structure for table 'system_log'
#

# DROP TABLE IF EXISTS system_log;
CREATE TABLE `system_log` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `message` text,
  `msg_ip` varchar(30) default NULL,
  `msg_datetime` datetime default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'system_log'
#

INSERT INTO system_log VALUES (2522,'Пользователь  завершил работу','192.168.6.121','2005-04-20 10:00:10');
INSERT INTO system_log VALUES (2523,'Пользователь фат вошел в систему как Начальник УК и ОМР','192.168.6.121','2005-04-20 11:20:19');
INSERT INTO system_log VALUES (2524,'Пользователь фат завершил работу','192.168.6.121','2005-04-20 11:20:33');
INSERT INTO system_log VALUES (2525,'TUserTerminalForm.Destroy->TUserTerminalForm.unload_workplace->TPaperworkUser_Workplace.Destroy->TPaperworkUser_Workplace.free_message_scaner->TMessageScaner.Destroy->TMessageScanThread.Destroy->Thread Error: Больше файлов не осталось (18)','192.168.6.121','2005-04-20 11:20:33');
INSERT INTO system_log VALUES (2531,'Пользователь admin завершил сеанс','192.168.11.12','2005-04-21 12:14:34');
INSERT INTO system_log VALUES (2530,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-21 12:14:08');
INSERT INTO system_log VALUES (2532,'Пользователь oper вошел в систему как Оператор','192.168.11.12','2005-04-21 12:14:37');
INSERT INTO system_log VALUES (2533,'###TUserTerminalForm.logout_user->TUserTerminalForm.authentificate->Access violation at address 0062E4E5 in module \'Terminal.exe\'. Read of address 00000068','192.168.11.12','2005-04-21 12:14:44');
INSERT INTO system_log VALUES (2534,'Пользователь oper завершил работу','192.168.11.12','2005-04-21 12:14:44');
INSERT INTO system_log VALUES (2535,'TUserTerminalForm.Destroy->TUserTerminalForm.unload_workplace->Access violation at address 0062E5BA in module \'Terminal.exe\'. Read of address 00000068','192.168.11.12','2005-04-21 12:14:47');
INSERT INTO system_log VALUES (2536,'Пользователь oper вошел в систему как Оператор','192.168.11.12','2005-04-21 12:14:57');
INSERT INTO system_log VALUES (2537,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 12:55:29');
INSERT INTO system_log VALUES (2538,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 13:06:02');
INSERT INTO system_log VALUES (2539,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 14:46:39');
INSERT INTO system_log VALUES (2540,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 15:21:23');
INSERT INTO system_log VALUES (2541,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 15:29:02');
INSERT INTO system_log VALUES (2542,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 17:03:02');
INSERT INTO system_log VALUES (2543,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 17:03:59');
INSERT INTO system_log VALUES (2544,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 17:23:30');
INSERT INTO system_log VALUES (2545,'Пользователь  завершил работу','192.168.6.156','2005-04-22 17:29:49');
INSERT INTO system_log VALUES (2546,'Пользователь  завершил работу','192.168.6.156','2005-04-22 17:29:53');
INSERT INTO system_log VALUES (2547,'Пользователь  завершил работу','192.168.6.156','2005-04-22 17:29:58');
INSERT INTO system_log VALUES (2548,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 17:31:26');
INSERT INTO system_log VALUES (2549,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-22 17:32:18');
INSERT INTO system_log VALUES (2550,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-04-29 11:15:19');
INSERT INTO system_log VALUES (2551,'Пользователь  завершил работу','192.168.6.164','2005-05-12 17:16:18');
INSERT INTO system_log VALUES (2552,'Пользователь  завершил работу','192.168.11.224','2005-05-17 13:07:28');
INSERT INTO system_log VALUES (2553,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-06-30 09:45:34');
INSERT INTO system_log VALUES (2554,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-06-30 09:46:21');
INSERT INTO system_log VALUES (2555,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-06-30 09:46:37');
INSERT INTO system_log VALUES (2556,'Пользователь admin вошел в систему как Администратор','192.168.11.12','2005-06-30 09:47:11');

#
# Table structure for table 'system_roles'
#

# DROP TABLE IF EXISTS system_roles;
CREATE TABLE `system_roles` (
  `key_ind` int(8) NOT NULL auto_increment,
  `caption` varchar(50) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'system_roles'
#

INSERT INTO system_roles VALUES (1,'Администратор сервера документооборота');
INSERT INTO system_roles VALUES (2,'Администратор терминала документооборота');
INSERT INTO system_roles VALUES (3,'Офис менеджер');
INSERT INTO system_roles VALUES (4,'Сотрудник отдела');
INSERT INTO system_roles VALUES (5,'Начальник отдела');
INSERT INTO system_roles VALUES (6,'Оператор');
INSERT INTO system_roles VALUES (7,'Секретарь референт');
INSERT INTO system_roles VALUES (8,'Старший офис менеджер');
INSERT INTO system_roles VALUES (9,'Директор');
INSERT INTO system_roles VALUES (10,'Президент');
INSERT INTO system_roles VALUES (11,'Директор департамента инфраструктуры');
INSERT INTO system_roles VALUES (12,'Пользователь документооборота');

#
# Table structure for table 'user_additional_info'
#

# DROP TABLE IF EXISTS user_additional_info;
CREATE TABLE `user_additional_info` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `user_ind` int(8) unsigned default NULL,
  `dept_id` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'user_additional_info'
#

INSERT INTO user_additional_info VALUES (1,1,1);
INSERT INTO user_additional_info VALUES (2,2,2);
INSERT INTO user_additional_info VALUES (3,3,1);
INSERT INTO user_additional_info VALUES (4,4,1);
INSERT INTO user_additional_info VALUES (5,5,1);
INSERT INTO user_additional_info VALUES (6,6,1);
INSERT INTO user_additional_info VALUES (7,7,1);
INSERT INTO user_additional_info VALUES (8,8,1);
INSERT INTO user_additional_info VALUES (9,9,1);
INSERT INTO user_additional_info VALUES (10,10,1);

#
# Table structure for table 'user_system_roles'
#

# DROP TABLE IF EXISTS user_system_roles;
CREATE TABLE `user_system_roles` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `user_ind` int(8) unsigned NOT NULL default '0',
  `system_role_ind` int(8) unsigned NOT NULL default '0',
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COMMENT='M-M relationship between users and roles';

#
# Dumping data for table 'user_system_roles'
#

INSERT INTO user_system_roles VALUES (1,1,1);
INSERT INTO user_system_roles VALUES (2,1,2);
INSERT INTO user_system_roles VALUES (3,2,6);
INSERT INTO user_system_roles VALUES (4,3,5);
INSERT INTO user_system_roles VALUES (5,4,11);
INSERT INTO user_system_roles VALUES (6,5,5);
INSERT INTO user_system_roles VALUES (7,6,6);
INSERT INTO user_system_roles VALUES (8,7,6);
INSERT INTO user_system_roles VALUES (9,8,8);
INSERT INTO user_system_roles VALUES (10,9,8);
INSERT INTO user_system_roles VALUES (11,10,6);
INSERT INTO user_system_roles VALUES (12,1,12);
INSERT INTO user_system_roles VALUES (17,1,3);
INSERT INTO user_system_roles VALUES (16,2,9);

#
# Table structure for table 'user_to_journal_access_rights'
#

# DROP TABLE IF EXISTS user_to_journal_access_rights;
CREATE TABLE `user_to_journal_access_rights` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `user_id` int(8) unsigned default NULL,
  `journal_id` int(8) unsigned default NULL,
  `can_see` tinyint(1) default NULL,
  `can_add` tinyint(1) default NULL,
  `can_edit` tinyint(1) default NULL,
  `can_del` tinyint(1) default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'user_to_journal_access_rights'
#

INSERT INTO user_to_journal_access_rights VALUES (1,1,1,1,1,1,1);

#
# Table structure for table 'user_workplace_info'
#

# DROP TABLE IF EXISTS user_workplace_info;
CREATE TABLE `user_workplace_info` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `role_ind` int(8) unsigned NOT NULL default '0',
  `workplace_caption` varchar(100) default NULL,
  `version` int(8) unsigned NOT NULL default '0',
  `path_to_file` varchar(255) NOT NULL default '',
  `export_class_name` varchar(255) NOT NULL default '',
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'user_workplace_info'
#


#
# Table structure for table 'users'
#

# DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `nick` varchar(100) NOT NULL default '',
  `role_ind` int(8) unsigned NOT NULL default '0',
  `password` varchar(16) NOT NULL default '',
  `fio` varchar(100) default NULL,
  `sign_image` blob,
  `signature` blob,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'users'
#

INSERT INTO users VALUES (1,'admin',1,'1515009b51af697a','Афонин В.С',NULL,NULL);
INSERT INTO users VALUES (2,'oper',2,'773214e90eb99bdb','Оператор',NULL,NULL);
INSERT INTO users VALUES (3,'nurlan',6,'0c027ad770dda1f7','Дауренов Н.К',NULL,NULL);
INSERT INTO users VALUES (4,'kuat',4,'4db05fdc41e7d433','Жусипбек К.З',NULL,NULL);
INSERT INTO users VALUES (5,'фат',5,'598316c548f1b640','Буранбаева Ф.А',NULL,NULL);
INSERT INTO users VALUES (6,'nataly',2,'47219f590d4d82a8','Рогозова Н.Б',NULL,NULL);
INSERT INTO users VALUES (7,'эльмира',2,'483ad2c14c288d58','Сарсенбаева Л.М',NULL,NULL);
INSERT INTO users VALUES (8,'omr',3,'0afd6265678ec34f','Тулебаева Б.Ш',NULL,NULL);
INSERT INTO users VALUES (9,'office',3,'0a898c7938af0bc0','Жиенбекова А.А',NULL,NULL);
INSERT INTO users VALUES (10,'меруерт',9,'6946b8e04f8328b6','Шамекова М.Н',NULL,NULL);
INSERT INTO users VALUES (11,'жанеля',8,'31f34d9a6f7900ce','Сейсенбаева Р.Е','','');

#
# Table structure for table 'users_to_journals'
#

# DROP TABLE IF EXISTS users_to_journals;
CREATE TABLE `users_to_journals` (
  `key_ind` int(8) unsigned NOT NULL auto_increment,
  `user_ind` int(8) unsigned default NULL,
  `journal_ind` int(8) unsigned default NULL,
  PRIMARY KEY  (`key_ind`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251;

#
# Dumping data for table 'users_to_journals'
#

INSERT INTO users_to_journals VALUES (1,1,1);

