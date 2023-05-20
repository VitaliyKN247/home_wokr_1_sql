CREATE DATABASE  IF NOT EXISTS home_work_1;
USE home_work_1;
DROP TABLE IF EXISTS home_work_1;
CREATE TABLE home_work_1
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    manufacturer_phone VARCHAR(45), -- производитель телефонов
    model_phone VARCHAR(45), -- модель телефона
    number_of_phones INT, -- кол-во телефонов
    price INT -- стоимость одной шт.
);

INSERT home_work_1 (manufacturer_phone, model_phone, number_of_phones, price)
VALUES
	("APPLE","IPHONE 7","3","42000"),
	("APPLE","IPHONE 8","1","51000"),
	("APPLE","IPHONE X","2","57000"),
	("SAMSUNG","Samsung Galaxy Tab","3","60000"),
	("SAMSUNG","Samsung Galaxy S7","4","75000"),
	("NOKIA","Nokia 3310","1","1500000"),
	("APPLE","IPHONE 13","1","70000"),
    ("SAMSUNG","Samsung D800","2","51000"),
	("APPLE","IPHONE 13 Pro","1","80000"),
    ("SAMSUNG","Samsung Galaxy S9+","2","93000");

-- 2 команда по выводу товара, кол-во которого превышает "2"
SELECT model_phone, manufacturer_phone, price
FROM home_work_1
WHERE number_of_phones >2;

-- 3 вывод всего ассортимента марки "Samsung"
SELECT model_phone, manufacturer_phone, number_of_phones, price
FROM home_work_1
WHERE manufacturer_phone = "SAMSUNG";

-- 4 вывод информации о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT model_phone, manufacturer_phone
FROM home_work_1
WHERE (number_of_phones * price)
BETWEEN 100000 AND 145000;

-- 4.1 вывод товаров, в которых есть упоминание "Iphone"
SELECT manufacturer_phone, model_phone, price
FROM home_work_1
WHERE model_phone LIKE "Iphone%";

-- 4.2 "Galaxy"
SELECT manufacturer_phone, model_phone, price
FROM home_work_1
WHERE model_phone LIKE "%Galaxy%";

-- 4.3 товары, в которых есть ЦИФРЫ
SELECT manufacturer_phone, model_phone, price
FROM home_work_1
WHERE model_phone RLIKE "[0-9]"; -- или так WHERE model_phone RLIKE "[:digit:]"

-- 4.4 Товары, в которых есть ЦИФРА "8"
SELECT manufacturer_phone, model_phone, price
FROM home_work_1
WHERE model_phone LIKE "%8%"; 

