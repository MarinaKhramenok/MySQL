-- Представление с данными про продажам квартир в Москве
DROP view  IF EXISTS Moscow_ap_sell;
CREATE VIEW Moscow_ap_sell AS
SELECT
a.id,
c.city,
s.street,
a.house,
a.number_ap,
a.floor_ap,
a.rooms,
ROUND(a.square_total, 1) as square_total,
a.price,
ow.firstname,
ow.lastname,
ow.phone,
ow.email,
DATE_FORMAT(a.created_at, '%d.%m.%Y') as created_at
FROM course_work.apartments a
INNER JOIN course_work.cities c ON a.id_city = c.id AND c.city = 'Москва'
LEFT JOIN course_work.streets s ON a.id_street = s.id
INNER JOIN course_work.operations o ON a.id_operations = o.id AND o.name = 'Продажа'
LEFT JOIN course_work.owners ow ON a.id = ow.apartment_id
ORDER BY a.created_at DESC, a.price ASC;

SELECT * FROM course_work.Moscow_ap_sell mas

-- Представление  с даннми по количеству объявлений продавца
DROP view  IF EXISTS Owners_stat_sell;
CREATE VIEW Owners_stat_sell AS
SELECT
o_st.firstname,
o_st.lastname,
o_st.email,
o_st.phone,
COUNT(o_st.sted_id) as sted_sell,
COUNT(o_ap.apartment_id) as apart_sell,
COUNT(o_house.house_id) as house_sell 
FROM course_work.owners o_st
LEFT JOIN (SELECT o.id, o.firstname, o.lastname, o.email, o.phone, o.apartment_id FROM course_work.owners o
		   WHERE o.apartment_id IN (SELECT a.id FROM course_work.apartments a
		   							WHERE a.id_operations = 2)) o_ap ON o_st.id = o_ap.id
LEFT JOIN (SELECT o.id, o.firstname, o.lastname, o.email, o.phone, o.house_id FROM course_work.owners o
		   WHERE o.house_id IN (SELECT h.id FROM course_work.houses h
		   						WHERE h.id_operations = 2)) o_house ON o_st.id = o_house.id
GROUP BY 1, 2, 3, 4;

SELECT * FROM course_work.Owners_stat_sell oss

-- trigger для заполнения таблицы средней стоимости недвижимости по городу

DELIMITER //
DROP TRIGGER IF EXISTS upd_average_ap//    -- внесение данных в таблицу apartments
CREATE TRIGGER upd_average_ap AFTER INSERT ON course_work.apartments
    FOR EACH ROW BEGIN
	DELETE FROM average_price_in_city;
	INSERT into average_price_in_city(city_name, average_price_h, average_price_st, average_price_ap) SELECT
	c.city,
	CASE when house.avg_price is null then 0 else house.avg_price end as avg_price_house,
	CASE when sted.avg_price is null then 0 else sted.avg_price end as avg_price_sted,
	ROUND(AVG(a.price),0) as avg_price_apart
	FROM course_work.apartments a
  	LEFT join course_work.cities c on a.id_city = c.id
  	LEFT join (select h.id_city, ROUND(AVG(h.price),0) as avg_price FROM course_work.houses h
		   where h.id_operations = 2
		   GROUP by 1) house on house.id_city = a.id_city
  	LEFT join (select s.id_city, ROUND(AVG(s.price),0) as avg_price FROM course_work.sted s
		   GROUP by 1) sted on sted.id_city = a.id_city
	where a.id_operations = 2
	GROUP BY 1, 2, 3;
END//


DELIMITER //
DROP TRIGGER IF EXISTS upd_average_h//  -- внесение данных в таблицу houses
CREATE TRIGGER upd_average_h AFTER INSERT ON course_work.houses
	FOR EACH ROW BEGIN
	DELETE FROM average_price_in_city;
	INSERT into average_price_in_city(city_name, average_price_h, average_price_st, average_price_ap) SELECT
	c.city,
	CASE when house.avg_price is null then 0 else house.avg_price end as avg_price_house,
	CASE when sted.avg_price is null then 0 else sted.avg_price end as avg_price_sted,
	ROUND(AVG(a.price),0) as avg_price_apart
	FROM course_work.apartments a
  	LEFT join course_work.cities c on a.id_city = c.id
  	LEFT join (select h.id_city, ROUND(AVG(h.price),0) as avg_price FROM course_work.houses h
		   where h.id_operations = 2
		   GROUP by 1) house on house.id_city = a.id_city
  	LEFT join (select s.id_city, ROUND(AVG(s.price),0) as avg_price FROM course_work.sted s
		   GROUP by 1) sted on sted.id_city = a.id_city
	where a.id_operations = 2
	GROUP BY 1, 2, 3;
END//


DELIMITER //
DROP TRIGGER IF EXISTS upd_average_s//  -- внесение данных в таблицу sted
CREATE TRIGGER upd_average_s AFTER INSERT ON course_work.sted
	FOR EACH ROW BEGIN
	DELETE FROM average_price_in_city;
	INSERT into average_price_in_city(city_name, average_price_h, average_price_st, average_price_ap) SELECT
	c.city,
	CASE when house.avg_price is null then 0 else house.avg_price end as avg_price_house,
	CASE when sted.avg_price is null then 0 else sted.avg_price end as avg_price_sted,
	ROUND(AVG(a.price),0) as avg_price_apart
	FROM course_work.apartments a
  	LEFT join course_work.cities c on a.id_city = c.id
  	LEFT join (select h.id_city, ROUND(AVG(h.price),0) as avg_price FROM course_work.houses h
		   where h.id_operations = 2
		   GROUP by 1) house on house.id_city = a.id_city
  	LEFT join (select s.id_city, ROUND(AVG(s.price),0) as avg_price FROM course_work.sted s
		   GROUP by 1) sted on sted.id_city = a.id_city
	where a.id_operations = 2
	GROUP BY 1, 2, 3;
END//
DELIMITER ;

-- проверка

INSERT INTO course_work.apartments (number_ap, floor_ap, square_total, square_kitchen, rooms, 
balcony, id_city, id_street, id_operations, house, price, created_at) VALUES
('13','4','123.49','10','3',NULL,'1','5','2','12','16000000','2019-01-20 23:52:35');

INSERT INTO course_work.houses (number_h, floors, square_total, square_kitchen, rooms, 
balcony, id_city, id_street, id_operations, price, created_at) VALUES
('12','3','124.46','6','2',NULL,'1','7','1','33000000','1987-11-15 19:15:06');

INSERT INTO course_work.sted (number_sted, square_total, id_city, id_street, price, created_at) VALUES
('120','2455.46','1','7','45000000','1987-11-15 19:15:06');

SELECT * from course_work.average_price_in_city apic












