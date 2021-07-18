-- operations
INSERT INTO operations (name) VALUES
('аренда'),
('продажа');


-- cities
INSERT INTO cities (city) VALUES
('Москва'),
('Санкт-Петербург'),
('Тула'),
('Сочи'),
('Казань'),
('Омск'),
('Новороссийск'),
('Саратов');

-- streets 
INSERT INTO streets (street, id_city) VALUES
('Центральная', 2),
('Молодежная', 1),
('Школьная', 2),
('Лесная', 1),
('Садовая', 2),
('Новая', 2),
('Набережная', 3),
('Заречная', 8),
('Мира', 7),
('Весенняя', 5),
('Победы', 1),
('Зеленая', 4),
('Весенняя', 1),
('Космонавтов', 6),
('Зеленая', 2);

-- apartments 
INSERT INTO apartments (number_ap, floor_ap, square_total, square_kitchen, rooms, 
balcony, id_city, id_street, id_operations, house, price, created_at) VALUES
('120','3','24.46','6','2',NULL,'1','7','1','2','17000000','1987-11-15 19:15:06'),
('6','1','196.5','10','7',NULL,'3','9','2','5','16000000','1973-12-13 23:38:17'),
('7','4','111.9','14.70','4',NULL,'2','1','1','1','15000000','2017-09-02 14:46:24'),
('6','4','75.54','16.58','3',NULL,'4','7','1','10','14000000','1994-09-20 06:17:56'),
('4','4','66.38','10.7','2',NULL,'5','6','2','1','13000000','1981-08-18 17:14:54'),
('2','4','41.98','9','1',NULL,'2','7','1','6','12000000','1981-10-08 16:47:41'),
('63','7','33.7','8','1',NULL,'8','7','1','4','11000000','2001-07-16 16:49:36'),
('1','4','83.49','10','3',NULL,'3','5','2','12','15000000','2013-01-20 23:52:35'),
('120','3','24.46','6','2',NULL,'1','7','1','2','17000000','1987-11-15 19:15:06'),
('6','1','196.5','10','7',NULL,'1','9','2','5','16000000','1973-12-13 23:38:17'),
('7','4','111.9','14.70','4',NULL,'1','1','1','1','15000000','2017-09-02 14:46:24'),
('6','4','75.54','16.58','3',NULL,'1','7','1','10','14000000','1994-09-20 06:17:56'),
('4','4','66.38','10.7','2',NULL,'1','6','2','1','13000000','1981-08-18 17:14:54'),
('2','4','41.98','9','1',NULL,'1','7','1','6','12000000','1981-10-08 16:47:41'),
('63','7','33.7','8','1',NULL,'1','7','1','4','11000000','2001-07-16 16:49:36'),
('1','4','83.49','10','3',NULL,'1','5','2','12','10000000','2013-01-20 23:52:35'),
('3','2','46.39','8.8','2',NULL,'1','9','1','2','9000000','2012-05-21 22:29:36'),
('1202','3','24.46','6','2',NULL,'1','7','2','2','17000000','1987-11-15 19:15:06'),
('64','1','196.5','10','7',NULL,'1','9','2','5','16000000','1973-12-13 23:38:17'),
('74','4','111.9','14.70','4',NULL,'1','1','2','1','15000000','2017-09-02 14:46:24'),
('65','4','75.54','16.58','3',NULL,'1','7','2','10','14000000','1994-09-20 06:17:56'),
('43','4','66.38','10.7','2',NULL,'1','6','2','1','13000000','1981-08-18 17:14:54'),
('24','4','41.98','9','1',NULL,'1','7','2','6','12000000','1981-10-08 16:47:41'),
('636','7','33.7','8','1',NULL,'1','7','2','4','11000000','2001-07-16 16:49:36'),
('17','4','83.49','10','3',NULL,'1','5','2','12','10000000','2013-01-20 23:52:35'),
('39','2','46.39','8.8','2',NULL,'1','9','2','2','9000000','2012-05-21 22:29:36');


-- houses
INSERT INTO houses (number_h, floors, square_total, square_kitchen, rooms, 
balcony, id_city, id_street, id_operations, price, created_at) VALUES
('120','3','24.46','6','2',NULL,'1','7','1','30000000','1987-11-15 19:15:06'),
('6','1','196.5','10','7',NULL,'3','9','2','31000000','1973-12-13 23:38:17'),
('7','4','111.9','14.70','4',NULL,'2','1','1','32000000','2017-09-02 14:46:24'),
('6','4','75.54','16.58','3',NULL,'4','7','1','33000000','1994-09-20 06:17:56'),
('4','4','66.38','10.7','2',NULL,'5','6','2','34000000','1981-08-18 17:14:54'),
('2','4','41.98','9','1',NULL,'2','7','1','35000000','1981-10-08 16:47:41'),
('63','7','33.7','8','1',NULL,'8','7','1','36000000','2001-07-16 16:49:36'),
('1','4','83.49','10','3',NULL,'3','5','2','37000000','2013-01-20 23:52:35'),
('3','2','46.39','8.8','2',NULL,'3','9','1','38000000','2012-05-21 22:29:36');

-- sted
INSERT INTO sted (number_sted, square_total, id_city, id_street, price, created_at) VALUES
('120','24.46','1','7','4000000','1987-11-15 19:15:06'),
('6','196.5','3','9','5000000','1973-12-13 23:38:17'),
('7','111.9','2','1','6000000','2017-09-02 14:46:24'),
('6','75.54','4','7','7000000','1994-09-20 06:17:56'),
('4','66.38','5','6','8000000','1981-08-18 17:14:54'),
('2','41.98','2','7','9000000','1981-10-08 16:47:41'),
('63','33.7','8','7','10000000','2001-07-16 16:49:36'),
('1','83.49','3','5','11000000','2013-01-20 23:52:35'),
('3','46.39','3','9','12000000','2012-05-21 22:29:36');



INSERT INTO `users` VALUES 
('1','Ila','Doyle','adams.eveline@example.com','0'),
('2','Patsy','Pouros','parker.murray@example.com','0'),
('3','Shakira','Brakus','lmohr@example.com','74'),
('4','Aaron','Conn','lauren28@example.org','112375'),
('5','Marques','Boyer','kavon.klocko@example.org','279'),
('6','Philip','Senger','fharris@example.com','0'),
('7','Emmet','Reinger','devyn74@example.net','38'),
('8','Hope','Hermiston','hyatt.stephania@example.net','9151043355'),
('9','Clemens','Roob','qo\'hara@example.org','1302399578'),
('10','Cielo','Dach','feil.kennedi@example.com','202344'),
('11','Melvin','Daniel','iliana20@example.com','0'),
('12','Ally','Harvey','alexander.kassulke@example.net','99'),
('13','Samantha','Kihn','robel.declan@example.com','0'),
('14','Gino','Walker','heloise10@example.net','1'),
('15','Devante','Kuphal','eleanora13@example.org','194394'),
('16','Tate','Donnelly','fdaugherty@example.net','0'),
('17','Luigi','Strosin','lswift@example.com','348'),
('18','Myah','Ziemann','jade04@example.com','646486'),
('19','Marshall','Kovacek','alvis68@example.net','948604'),
('20','Georgette','Keeling','abrown@example.org','1');

INSERT INTO `owners` VALUES 
('1','Earlene','Wiza','greenholt.garth@example.net','638',NULL,NULL,'1','2017-06-29 01:36:35'),
('2','Isabell','Bashirian','marion73@example.org','1',NULL,NULL,'2','2004-06-05 23:58:01'),
('3','Filomena','Kihn','smitham.laura@example.com','1',NULL,NULL,'3','1973-07-10 05:01:16'),
('4','Ryder','Reilly','verda44@example.org','378685',NULL,NULL,'4','1998-09-30 10:06:05'),
('5','Iva','Stokes','jordyn43@example.org','1',NULL,NULL,'5','1988-01-04 07:45:21'),
('6','Lyda','Bauch','mgleason@example.net','311',NULL,NULL,'6','2017-04-11 13:26:56'),
('7','Reanna','Douglas','feil.ilene@example.org','2',NULL,NULL,'7','1975-11-11 08:21:32'),
('8','Lupe','Mills','catharine.gulgowski@example.org','1',NULL,NULL,'8','1989-05-10 14:27:29'),
('9','Colin','Kuhn','sydnie.lockman@example.org','442247',NULL,NULL,'9','2012-11-03 20:50:41'),
('10','German','Purdy','hermann.casandra@example.com','251161207','1',NULL,NULL,'1981-10-27 21:47:41'),
('11','Leone','Gleichner','marjorie.jacobi@example.com','3479984668','2',NULL,NULL,'1978-02-19 14:53:41'),
('12','Corene','Collins','ken13@example.org','2','3',NULL,NULL,'2002-02-23 09:01:04'),
('13','Ebony','Hirthe','fjacobi@example.net','1','4',NULL,NULL,'1970-01-18 13:22:53'),
('14','Golden','Klein','kylie10@example.net','1','5',NULL,NULL,'1987-12-16 12:06:08'),
('15','Skylar','Block','ayla.mann@example.org','3','6',NULL,NULL,'1986-06-24 05:34:35'),
('16','Mitchel','Price','rromaguera@example.net','3','7',NULL,NULL,'1991-06-21 09:44:11'),
('17','Terrence','Daugherty','georgette69@example.org','6','8',NULL,NULL,'1992-04-19 13:41:45'),
('18','Benedict','Douglas','alysha92@example.net','769770','9',NULL,NULL,'1986-10-01 13:14:55'),
('19','Alek','Anderson','edgar.doyle@example.net','49',NULL,'1',NULL,'2010-05-16 13:56:10'),
('20','Velma','Medhurst','alebsack@example.org','7',NULL,'2',NULL,'1995-02-24 02:50:17'),
('21','Alek','Anderson','edgar.doyle@example.net','49',NULL,'3',NULL,'2010-05-16 13:56:10'),
('22','Velma','Medhurst','alebsack@example.org','7',NULL,'4',NULL,'1995-02-24 02:50:17'),
('23','Alek','Anderson','edgar.doyle@example.net','49',NULL,'5',NULL,'2010-05-16 13:56:10'),
('24','Velma','Medhurst','alebsack@example.org','7',NULL,'6',NULL,'1995-02-24 02:50:17'),
('25','Alek','Anderson','edgar.doyle@example.net','49',NULL,'7',NULL,'2010-05-16 13:56:10'),
('26','Velma','Medhurst','alebsack@example.org','7',NULL,'8',NULL,'1995-02-24 02:50:17'),
('27','Alek','Anderson','edgar.doyle@example.net','49',NULL,'9',NULL,'2010-05-16 13:56:10'),
('28','German','Purdy','hermann.casandra@example.com','251161207','10',NULL,NULL,'1981-10-27 21:47:41'),
('29','Leone','Gleichner','marjorie.jacobi@example.com','3479984668','11',NULL,NULL,'1978-02-19 14:53:41'),
('30','Corene','Collins','ken13@example.org','2','12',NULL,NULL,'2002-02-23 09:01:04'),
('31','Ebony','Hirthe','fjacobi@example.net','1','13',NULL,NULL,'1970-01-18 13:22:53'),
('32','Golden','Klein','kylie10@example.net','1','14',NULL,NULL,'1987-12-16 12:06:08'),
('33','Skylar','Block','ayla.mann@example.org','3','15',NULL,NULL,'1986-06-24 05:34:35'),
('34','Mitchel','Price','rromaguera@example.net','3','16',NULL,NULL,'1991-06-21 09:44:11'),
('35','Terrence','Daugherty','georgette69@example.org','6','17',NULL,NULL,'1992-04-19 13:41:45'),
('36','Benedict','Douglas','alysha92@example.net','769770','18',NULL,NULL,'1986-10-01 13:14:55'),
('37','German','Purdy','hermann.casandra@example.com','251161207','19',NULL,NULL,'1981-10-27 21:47:41'),
('38','Leone','Gleichner','marjorie.jacobi@example.com','3479984668','20',NULL,NULL,'1978-02-19 14:53:41'),
('39','Corene','Collins','ken13@example.org','2','21',NULL,NULL,'2002-02-23 09:01:04'),
('40','Ebony','Hirthe','fjacobi@example.net','1','22',NULL,NULL,'1970-01-18 13:22:53'),
('41','Golden','Klein','kylie10@example.net','1','23',NULL,NULL,'1987-12-16 12:06:08'),
('42','Skylar','Block','ayla.mann@example.org','3','24',NULL,NULL,'1986-06-24 05:34:35'),
('43','Mitchel','Price','rromaguera@example.net','3','25',NULL,NULL,'1991-06-21 09:44:11'),
('44','Terrence','Daugherty','georgette69@example.org','6','26',NULL,NULL,'1992-04-19 13:41:45'),
('45','Benedict','Douglas','alysha92@example.net','769770','27',NULL,NULL,'1986-10-01 13:14:55');


-- favorites
INSERT INTO favorites (user_id, apartment_id,house_id, sted_id, created_at) values
('1', NULL, '6', NULL, '2017-06-29 01:36:35'),
('2','1',NULL,NULL,'2004-06-05 23:58:01'),
('3',NULL,NULL,'1','1973-07-10 05:01:16'),
('4',NULL,'3',NULL,'1998-09-30 10:06:05'),
('1','3',NULL,NULL,'1988-01-04 07:45:21'),
('6',NULL,NULL,'4','2017-04-11 13:26:56'),
('7',NULL,'2',NULL,'1975-11-11 08:21:32'),
('8','1',NULL,NULL,'1989-05-10 14:27:29'),
('9','3',NULL,NULL,'2012-11-03 20:50:41'),
('10',NULL,'3',NULL,'1981-10-27 21:47:41');






