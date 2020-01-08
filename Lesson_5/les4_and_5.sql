-- Практическое задание к 4 уроку (долг)

-- создавал руками по 10 записей в БД
-- добавляем юзеров
INSERT INTO vk.users (id, firstname, lastname, email, phone) 
VALUES (1, 'Ivan', 'Ivanov', 'ivanov@mail.ru', '89251000000'),
(2, 'Stepan', 'Stepanov', 'stepanov@mail.ru', '89251000001'),
(3, 'Artem', 'Artemov', 'artelov@mail.ru', '89251000002'),
(4, 'Ivan', 'Kuznetsov', 'kuznetsov@mail.ru', '89251000003'),
(5, 'Vladimir', 'Vladimirov', 'vladimirov@mail.ru', '89251000004'),
(6, 'Stanislav', 'Stasov', 'stasov@mail.ru', '89251000005'),
(7, 'Mihail', 'Mihailov', 'mihailov@mail.ru', '89251000006'),
(8, 'Roman', 'Romanov', 'romanov@mail.ru', '89251000007'),
(9, 'Dmitriy', 'Dmitriev', 'dmitriev@mail.ru', '89251000008'),
(10, 'Petr', 'Petrov', 'petrov@mail.ru', '89251000009');

-- добавле=яем раздел музыкантов
INSERT INTO vk.artists (id, artists_firstname, artists_lastname, artists_description, photo_id)
VALUES (1, 'Elvis', 'Presley', 'Rock `n` Roll', 1),
(2, 'John', 'Lennon', 'Beatles', 2),
(3, 'Michael', 'Jackson', 'King of pop', 3),
(4, 'Till', 'Lindeman', 'Rammstein', 4),
(5, 'Fedor', 'Shalyapin','Russian', 5),
(6, 'Freddy', 'Merqury', 'The Queen, solist', 6),
(7, 'Adriano', 'Chelentano', 'Italian artist', 7),
(8, 'Elton', 'John', 'British singer', 8),
(9, 'Chester', 'Bennigton', 'Linkin Park, solist', 9),
(10, 'Whitney', 'Houston', 'USA', 10);

-- добавляем сообщества
INSERT INTO vk.communities (id, name)
VALUES (1, 'Python'),
(2, 'Geekbrains'),
(3, 'IT'),
(4, 'Rock'),
(5, 'Photo'),
(6, 'News'),
(7, 'SQL'),
(8, 'Hunting'),
(9, 'BMW'),
(10, 'Moscow');

-- добавляем таблицу запросов на добавление в друзья
INSERT INTO vk.friend_requests (initiator_user_id, target_user_id, status, requested_at, confirmed_at)
VALUES (1, 2, 'approved', '2019-01-01 02:12:33', '2019-01-02 03:12:33'),
(1, 3, 'approved', '2019-01-30 05:18:07', '2019-02-05 07:32:33'),
(3, 6, 'requested', '2018-01-01 03:22:10', '2018-01-05 04:08:13'),
(9, 3, 'approved', '2019-05-23 4:18:07', '2019-05-23 07:13:33'),
(9, 2, 'requested', '2017-01-01 05:18:07', '2017-01-02 07:32:33'),
(1, 7, 'approved', '2017-05-04 05:18:07', '2017-06-05 01:38:00'),
(7, 2, 'requested', '2019-02-02 01:18:07', '2019-02-03 02:18:33'),
(8, 3, 'approved', '2019-01-01 01:18:07', '2019-01-02 05:32:39'),
(4, 2, 'requested', '2018-12-30 03:18:07', '2019-01-02 02:32:13'),
(1, 8, 'approved', '2019-01-15 09:18:07', '2019-02-02 13:08:00'),
(8, 4, 'approved', '2018-05-25 03:22:07', '2018-05-26 09:14:02'),
(4, 6, 'approved', '2019-01-05 03:18:07', '2019-01-09 23:32:14'),
(6, 2, 'approved', '2019-11-01 08:22:07', '2019-11-02 01:30:05');

-- добавляем новости
INSERT INTO vk.media_types (id, name, created_at, updated_at)
VALUES (1, 'news', '2015-01-01 07:32:33', '2015-01-02 07:32:33'),
(2, 'news', '2016-01-01 07:32:33', '2016-01-02 07:32:33'),
(3, 'news', '2017-01-01 07:32:33', '2017-01-02 07:32:33'),
(4, 'news', '2015-01-02 07:32:33', '2015-01-02 07:39:38'),
(5, 'news', '2014-01-01 07:32:33', '2014-01-02 07:32:33'),
(6, 'news', '2013-01-01 07:32:33', '2013-01-02 07:32:33'),
(7, 'news', '2013-02-01 07:32:33', '2013-02-02 07:32:33'),
(8, 'news', '2014-05-01 07:32:33', '2014-05-02 07:32:33'),
(9, 'news', '2014-03-01 07:32:33', '2014-03-02 07:32:33'),
(10, 'news', '2018-06-01 07:32:33', '2018-06-02 07:32:33');

INSERT INTO vk.media (id, media_type_id, user_id, body, filename, `size`, metadata, created_at, updated_at)
VALUES (1, 2, 1, 'First_media', 'media_1.txt', 12, NULL,  '2019-01-02 03:12:33', '2019-01-07 03:12:33'),
(2, 3, 2, 'Second_media', 'media_2.txt', 18, NULL,  '2019-01-10 03:12:33','2019-02-05 07:32:33'),
(3, 6, 1, 'Third_media', 'media_3.txt', 11, NULL,  '2019-05-15 03:12:33', NULL),
(4, 5, 2, 'Fourth_media', 'media_4.txt', 6, NULL,  '2019-02-10 03:12:33','2019-02-15 07:32:33'),
(5, 6, 1, 'Fifth_media', 'media_5.txt', 17, NULL,  '2019-05-15 03:12:33', NULL);


INSERT INTO vk.likes (id, user_id, media_id, created_at)
VALUES (1, 2, 1, '2019-01-02 03:12:33'),
(2, 3, 2, '2019-02-05 07:32:33'),
(3, 6, 1, '2018-01-05 04:08:13'),
(4, 3, 4, '2019-05-23 07:13:33'),
(5, 2, 1, '2017-01-02 07:32:33'),
(6, 7, 5, '2017-06-05 01:38:00'),
(7, 2, 3, '2019-02-03 02:18:33'),
(8, 3, 3, '2019-01-02 05:32:39'),
(9, 2, 3, '2019-01-02 02:32:13'),
(10, 8, 4, '2019-02-02 13:08:00');


INSERT IGNORE INTO vk.messages (id, from_user_id, to_user_id, body, created_at)
VALUES (1, 1, 2, 'Hello', '2018-01-05 04:08:13'),
(2, 2, 1, 'Hello!', '2018-01-05 04:09:13'),
(3, 1, 2, 'How are you?', '2018-01-05 04:15:13'),
(4, 2, 1, 'Ok!', '2018-01-05 04:22:13'),
(5, 3, 1, 'Hello!', '2020-01-05 04:08:13'),
(6, 1, 3, 'Hello!', '2020-01-05 04:08:23'),
(7, 3, 1, 'SQL?', '2020-01-05 04:10:23'),
(8, 1, 3, 'Yes', '2020-01-05 04:11:23'),
(9, 6, 3, 'How!', '2018-01-05 12:08:23'),
(10, 3, 6, 'Python', '2018-01-06 04:08:23'),
(11, 1, 3, 'Hello!', '2021-01-05 04:08:23'),
(12, 3, 1, 'SQL?', '2021-01-05 04:10:23');

-- добавляем поле is_active  втаблицу profiles
ALTER TABLE profiles ADD is_active BOOL DEFAULT FALSE NOT null;


INSERT INTO vk.photo_albums (id, name, user_id)
VALUES (1, 'one', 1),
(2, 'two', 2),
(3,'three' , 4),
(4, 'four', 2),
(5, 'five', 5),
(6, 'six', 2),
(7, 'seven', 8),

(8, 'eight', 4),
(9, 'nine', 9),
(10, 'ten', 2);



INSERT INTO vk.photos (id, album_id, media_id)
VALUES (1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 2),
(5, 5, 5),
(6, 6, 3),
(7, 7, 4),
(8, 8, 3),
(9, 9, 2),
(10, 10, 2);

INSERT IGNORE INTO vk.profiles (user_id, gender, birthday, photo_id, created_at, hometown)
VALUES (1, 'm', '1990-12-20', 1, '2012-12-20 18:22:21', 'Moscow'),
(2, 'm', '1986-11-20', 2, '2013-11-20 01:02:21', 'Moscow'),
(3, 'm', '1988-12-04', 3, '2011-12-04 02:22:21', 'Kiev'),
(4, 'm', '1987-12-10', 4, '2010-12-10 13:29:21', 'Saratov'),
(5, 'm', '2004-11-09', 5, '2012-11-09 08:13:21', 'Voroneg'),
(6, 'm', '2005-01-13', 6, '2013-01-13 21:22:21', 'Krasnodar'),
(7, 'm', '1987-09-05', 7, '2012-09-05 06:01:21', 'Omsk'),
(8, 'm', '1967-06-29', 8, '2012-06-29 07:23:21', 'Kurgan'),
(9, 'm', '2010-03-31', 9, '2019-03-31 05:09:21', 'Vladivostok'),
(10, 'm', '1990-03-20', 10, '2012-12-20 17:22:21', 'Tomsk');



-- выборка юзеров с сортировкой по именам без повторний
SELECT firstname FROM vk.users GROUP BY firstname;
-- или так, работает вроде одинаково
SELECT DISTINCT firstname FROM vk.users ;


-- изменение профилей, несовершеннолетних отметили, is_active = true. Считается тольок год.
UPDATE profiles 
SET is_active = 1
WHERE YEAR(curdate()) - YEAR(birthday) < 18;

-- удаляем сообщения "из будущего".
DELETE FROM messages WHERE created_at > NOW();


-- Практическое задание к уроку 5.

/* 1. Заполнение полей created_at и updated_at в таблице users */ 
-- Создаем тестовую таблицу
DROP TABLE IF EXISTS users_dz;
CREATE TABLE users_dz(
id SERIAL PRIMARY KEY,
firstname varchar(50),
created_at date,
updated_at date
);
-- заполняем поля кроме последних
INSERT INTO users_dz (id, firstname)
VALUES (1, 'Petr'),
(2, 'Ivan'),
(3, 'Oleg'),
(4, 'Alex'),
(5, 'Sam');
-- обновляем таблицу, вставляем теккущее дату и время в 2 поля таблицы
UPDATE users_dz
SET created_at = now(),
    updated_at = now();

   
/* 2. Таблица users была неудачно спроектирована. 
 * Записи created_at и updated_at были заданы типом VARCHAR и в них долгое время помещались значения в формате "20.10.2017 8:10".
 * Необходимо преобразовать поля к типу DATETIME, сохранив введеные ранее значения.
 */
   
 -- Создаем тестовую таблицу
DROP TABLE IF EXISTS users_dz_2;
CREATE TABLE users_dz_2(
id SERIAL PRIMARY KEY,
firstname varchar(100),
created_at varchar(100),
updated_at varchar(100)
);

-- заполняем поля
INSERT INTO users_dz_2 (id, firstname, created_at, updated_at)
VALUES (1, 'Petr', '02.03.2013 08:00', '02.04.2013 08:00'),
(2, 'Ivan', '02.03.2013 08:00', '02.04.2013 08:00'),
(3, 'Oleg', '02.03.2013 08:00', '02.04.2013 08:00'),
(4, 'Alex', '02.03.2013 08:00', '02.04.2013 08:00'),
(5, 'Sam', '02.03.2013 08:00', '02.04.2013 08:00');

-- обновляем значения в полях created_at и updated_at, представляем их в datetime
UPDATE users_dz_2 SET created_at = str_to_date(created_at, '%d.%m.%Y %H:%m'),
updated_at = str_to_date(updated_at, '%d.%m.%Y %H:%m');

ALTER TABLE users_dz_2 MODIFY created_at datetime;
ALTER TABLE users_dz_2 MODIFY updated_at datetime;


/* 3. В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 0, 
 * если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
 * чтобы они выводились в порядке увеличения значения value. 
 * Однако, нулевые запасы должны выводиться в конце, после всех записей.
 */

DROP TABLE IF EXISTS storehouses_products;
CREATE TABLE storehouses_products (
value int);

INSERT INTO storehouses_products (value)
VALUES (1),
(2),
(7),
(0),
(4),
(9),
(10),
(18),
(13),
(6),
(0),
(9),
(10),
(0);

SELECT value FROM storehouses_products ORDER BY value=0, value; -- не понял как работает


/* 4. Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. 
 * Месяцы заданы в виде списка английских названий ('may', 'august')
 */

DROP TABLE IF EXISTS users_dz_4;
CREATE TABLE users_dz_4 (
firstname varchar(50),
month_birth varchar(15));

INSERT INTO users_dz_4 (firstname, month_birth)
VALUES ('Ivan', 'may'),
('Stepan', 'august'),
('Alex', 'july'),
('Leo', 'may'),
('Dima', 'august'),
('Denis', 'may'),
('Fedor', 'june'),
('Oleg', 'september'),
('Andy', 'february');

SELECT firstname FROM users_dz_4 WHERE month_birth = 'may' OR month_birth = 'august';


/* 5. Из таблицы catalogs извлекаются записи при помощи запроса. SELECT * FROM catalogs WHERE id IN (5, 1, 2); 
 * Отсортируйте записи в порядке, заданном в списке IN.
 */

DROP TABLE IF EXISTS catalogs;
CREATE TABLE catalogs (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Название раздела',
  UNIQUE unique_name(name(10))
) COMMENT = 'Разделы интернет-магазина';

INSERT INTO catalogs VALUES
  (NULL, 'Процессоры'),
  (NULL, 'Материнские платы'),
  (NULL, 'Видеокарты'),
  (NULL, 'Жесткие диски'),
  (NULL, 'Оперативная память');
 
SELECT * FROM catalogs WHERE id IN (5, 1, 2) ORDER BY id=2, id DESC; -- тоде не понял, но работает)


/* АГРЕГАЦИЯ ДАННЫХ
 * 1.Подсчитайте средний возраст пользователей в таблице users
 */
-- Подсчитайте средний возраст пользователей в таблице users
DROP TABLE IF EXISTS users_dz_5;
CREATE TABLE users_dz_5 (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) COMMENT 'Имя покупателя',
  birthday_at DATE COMMENT 'Дата рождения',
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT = 'Покупатели';

INSERT INTO users_dz_5 (name, birthday_at) VALUES
  ('Геннадий', '1990-10-05'),
  ('Наталья', '1984-11-12'),
  ('Александр', '1985-05-20'),
  ('Сергей', '1988-02-14'),
  ('Иван', '1998-01-12'),
  ('Мария', '1992-08-29');
 
SELECT AVG(timestampdiff(year, birthday_at, now())) FROM users_dz_5;


/* 2.Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели.
 *  Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 */

SELECT 
  COUNT(*) as Total,
  DAYNAME (CONCAT_WS('-', YEAR (CURRENT_DATE), DATE_FORMAT(birthday_at, '%m-%d' ))) AS days 
FROM users_dz_5 
GROUP BY days;



/* 3.Подсчитайте произведение чисел в столбце таблицы
 */

DROP TABLE IF EXISTS numbers;
CREATE TABLE numbers (
  value int
);

INSERT INTO numbers (value) VALUES
  (1),
  (2),
  (3),
  (4),
  (5);

 SELECT EXP(SUM(LN(value))) from numbers n; -- работает! подсмотрел в Googl'e, но понимаю как работает)
 
 
 