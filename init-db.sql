CREATE DATABASE test-project;

CREATE TABLE users (
   id SERIAL NOT NULL PRIMARY KEY,
   first_name VARCHAR(100) NOT NULL,
   last_name VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL,
   balance NUMERIC(10, 0) NOT NULL,
   creation_date DATE NOT NULL
);


INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Афанасий', 'Дегтярев', 'abbinoff.savva@yandex.ru', '1000', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Артур', 'Орехов', 'abuziarov.oleg@yandex.ru', '1001', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Артём', 'Панков', 'aduschckin.vladislav@yandex.ru', '1002', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Арсений', 'Одинцов', 'adushckin.alewtin@yandex.ru', '1003', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Аркадий', 'Рудаков', 'afonin.aleksei-afonin@yandex.ru', '1004', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Аристарх', 'Царев', 'afonin.arkasha@yandex.ru', '1005', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Антон', 'Серебряков', 'afonkin.stepa@yandex.ru', '1006', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Андрей', 'Кондрашов', 'ah.romanow@yandex.ru', '1007', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Анатолий', 'Курочкин', 'akin.german@yandex.ru', '1008', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Альберт', 'Латышев', 'al-suraymi.midia770@yandex.ru', '1009', '2018-11-28');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Алексей', 'Голиков', 'alehin.pyoter@yandex.ru', '1010', '2019-01-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Александр', 'Дубровин', 'alehinkostia@yandex.ru', '1011', '2019-01-06');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Алевтин', 'Лопатин', 'alekhin.a-alehin@yandex.ru', '1012', '2019-08-15');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Богдан', 'Горюнов', 'aleksander.4lexeev@yandex.ru', '1013', '2019-10-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Борис', 'Шувалов', 'aleksander.moro2ov@yandex.ru', '1014', '2020-03-17');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вадим', 'Горячев', 'aleksandr.soschin@yandex.ru', '1015', '2020-11-24');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Валентин', 'Сычев', 'aleksey.proschckin@yandex.ru', '1016', '2021-11-07');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Валерий', 'Синицын', 'aleksey.roman2016@yandex.ru', '1017', '2022-07-08');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Василий', 'Кошелев', 'alevtin.afonin@yandex.ru', '1018', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вениамин', 'Булгаков', 'alevtin.petrow@yandex.ru', '1019', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Виктор', 'Алешин', 'alevtin.semenoff@yandex.ru', '1020', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Виталий', 'Крючков', 'alewin.german@yandex.ru', '1021', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Влад', 'Черных', 'alewtin.vasin@yandex.ru', '1022', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Владимир', 'Рогов', 'alexander.5emenov@yandex.ru', '1023', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Владислав', 'Пантелеев', 'alexander.5mirnoff@yandex.ru', '1024', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Всеволод', 'Севастьянов', 'alexander.kazerov@yandex.ru', '1025', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вячеслав', 'Пименов', 'alexander.zaxarin@yandex.ru', '1026', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Гавриил', 'Евсеев', 'alexanderpetrovichev@yandex.ru', '1027', '2018-11-28');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Геннадий', 'Кононов', 'alexandr.frol2018@yandex.ru', '1028', '2019-01-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Георгий', 'Лаврентьев', 'alexandrekryloff@yandex.ru', '1029', '2019-01-06');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Герман', 'Аникин', 'alexei.rolskin@yandex.ru', '1030', '2019-08-15');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Глеб', 'Вавилов', 'alexin.grischa@yandex.ru', '1031', '2019-10-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Григорий', 'Шевцов', 'aliamin.nikolaj@yandex.ru', '1032', '2020-03-17');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Денис', 'Пастухов', 'alinko.stanislaw@yandex.ru', '1033', '2020-11-24');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Дмитрий', 'Суслов', 'alt.romanow@yandex.ru', '1034', '2021-11-07');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Евгений', 'Долгов', 'alurin.kostya@yandex.ru', '1035', '2022-07-08');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Егор', 'Островский', 'alyamkin.grischa@yandex.ru', '1036', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Ефим', 'Шевелев', 'amuroff.alex@yandex.ru', '1037', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Захар', 'Рубцов', 'anatolij.fikonov@yandex.ru', '1038', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Иван', 'Бычков', 'anatoly.khromin@yandex.ru', '1039', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Игорь', 'Кочетов', 'andin.tolik@yandex.ru', '1040', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Кирилл', 'Вишневский', 'andreas.filatow@yandex.ru', '1041', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Леонид', 'Дьяков', 'andreassemenow@yandex.ru', '1042', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Максим', 'Успенский', 'andreeff.ivanabd@yandex.ru', '1043', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Михаил', 'Глебов', 'andrei.g3rasimov@yandex.ru', '1044', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Олег', 'Ильинский', 'andrei.pertovichev@yandex.ru', '1045', '2018-11-28');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Павел', 'Дружинин', 'andreicka.sidorov@yandex.ru', '1046', '2019-01-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Пётр', 'Шапошников', 'andreikakozloff@yandex.ru', '1047', '2019-01-06');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Сергей', 'Озеров', 'andrii.kozlow@yandex.ru', '1048', '2019-08-15');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Станислав', 'Кольцов', 'andriipopow@yandex.ru', '1049', '2019-10-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Степан', 'Носков', 'andryuschkaorlov@yandex.ru', '1050', '2020-03-17');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Фёдор', 'Клюев', 'aninscky.victor@yandex.ru', '1051', '2020-11-24');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Юрий', 'Ерофеев', 'anton.antonro@yandex.ru', '1052', '2021-11-07');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Ярослав', 'Сальников', 'anton.jaushev@yandex.ru', '1053', '2022-07-08');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Афанасий', 'Комиссаров', 'antoni.sidorov@yandex.ru', '1054', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Артур', 'Меркулов', 'antonijpavlov@yandex.ru', '1055', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Артём', 'Ананьев', 'antonijpopov@yandex.ru', '1056', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Арсений', 'Буров', 'antovorlov@yandex.ru', '1057', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Аркадий', 'Булатов', 'arckady.riskin@yandex.ru', '1058', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Аристарх', 'Хомяков', 'aristarh.gawr@yandex.ru', '1059', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Антон', 'Киреев', 'aristarh.schamilin@yandex.ru', '1060', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Андрей', 'Русаков', 'aristarh.victorov@yandex.ru', '1061', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Анатолий', 'Артемов', 'aristarkh.proninoff@yandex.ru', '1062', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Альберт', 'Федосеев', 'arkadij.kvackin@yandex.ru', '1063', '2018-11-28');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Алексей', 'Зиновьев', 'arseniesemenov@yandex.ru', '1064', '2019-01-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Александр', 'Лапшин', 'artemmaklanov@yandex.ru', '1065', '2019-01-06');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Алевтин', 'Лаптев', 'artempetrovi4ev@yandex.ru', '1066', '2019-08-15');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Богдан', 'Артамонов', 'artj0m.petroff@yandex.ru', '1067', '2019-10-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Борис', 'Шмелев', 'artj0mpetroff@yandex.ru', '1068', '2020-03-17');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вадим', 'Зорин', 'artjombelow@yandex.ru', '1069', '2020-11-24');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Валентин', 'Уткин', 'artour.kuznetsov@yandex.ru', '1070', '2021-11-07');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Валерий', 'Антипов', 'artournosov@yandex.ru', '1071', '2022-07-08');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Василий', 'Завьялов', 'artypuchkov@yandex.ru', '1072', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вениамин', 'Дорофеев', 'artysmolin@yandex.ru', '1073', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Виктор', 'Ткачев', 'artysockolov@yandex.ru', '1074', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Виталий', 'Столяров', 'awerin.max-awerin@yandex.ru', '1075', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Влад', 'Зубов', 'axsvel221@yandex.ru', '1076', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Владимир', 'Рожков', 'azov.feodor@yandex.ru', '1077', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Владислав', 'Колосов', 'azyuba.yakhya997@yandex.ua', '1078', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Всеволод', 'Горелов', 'barinow.toscha2018@yandex.ru', '1079', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Вячеслав', 'Агафонов', 'barinowyurij@yandex.ru', '1080', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Гавриил', 'Маркин', 'baron.boria@yandex.ru', '1081', '2018-11-28');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Геннадий', 'Никольский', 'basil.pestov@yandex.ru', '1082', '2019-01-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Георгий', 'Покровский', 'basilsaveljev@yandex.ru', '1083', '2019-01-06');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Герман', 'Бочаров', 'belckinstanislaw@yandex.ru', '1084', '2019-08-15');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Глеб', 'Березин', 'beloff.lyubomir@yandex.ru', '1085', '2019-10-04');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Григорий', 'Ермолаев', 'beloff.romanchik@yandex.ru', '1086', '2020-03-17');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Денис', 'Круглов', 'belousovandriy@yandex.ru', '1087', '2020-11-24');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Дмитрий', 'Третьяков', 'belyaeff.volodymyr@yandex.ru', '1088', '2021-11-07');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Евгений', 'Масленников', 'berezovy.vasilij@yandex.ru', '1089', '2022-07-08');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Егор', 'Трифонов', 'bernickov.yascha@yandex.ru', '1090', '2011-07-20');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Ефим', 'Зубков', 'bezrukoffar@yandex.ru', '1091', '2011-12-13');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Захар', 'Куприянов', 'bijskij.stanislav@yandex.ru', '1092', '2012-10-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Иван', 'Свиридов', 'biryukovpavlik@yandex.ru', '1093', '2012-10-12');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Игорь', 'Золотарев', 'blinovewan@yandex.ru', '1094', '2013-12-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Кирилл', 'Щукин', 'bogdan.pilin@yandex.ru', '1095', '2015-07-19');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Леонид', 'Лосев', 'bogdanfilkin@yandex.ru', '1096', '2015-09-05');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Максим', 'Шубин', 'boldinignat@yandex.ru', '1097', '2015-09-23');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Михаил', 'Субботин', 'boltaevscky.petya@yandex.ru', '1098', '2017-03-10');
INSERT INTO users (first_name, last_name, email, balance, creation_date) VALUES ('Олег', 'Золотов', 'borin.zakhar@yandex.ru', '1099', '2018-11-28');



CREATE TABLE goods (
    product_id SERIAL NOT NULL PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price NUMERIC(10, 0) NOT NULL,
    date_buy DATE NOT NULL,
    buyer_id integer NOT NULL,
	FOREIGN KEY (buyer_id) REFERENCES users (id)
);
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Микроволновка', '7800', '2023-05-01', '1');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Велосипед', '20800', '2023-05-01', '2');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Гитара', '5340', '2023-05-01', '3');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Вентилятор', '3500', '2023-05-01', '4');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Утюг', '5700', '2023-05-01', '5');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Микроволновка', '7800', '2023-05-01', '1');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Велосипед', '20800', '2023-05-01', '2');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Гитара', '5340', '2023-05-01', '3');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Вентилятор', '3500', '2023-05-01', '4');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Утюг', '5700', '2023-05-01', '5');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Микроволновка', '7800', '2023-05-01', '1');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Велосипед', '20800', '2023-05-01', '2');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Гитара', '5340', '2023-05-01', '3');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Вентилятор', '3500', '2023-05-01', '4');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Утюг', '5700', '2023-05-01', '5');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Микроволновка', '7800', '2023-05-01', '1');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Велосипед', '20800', '2023-05-01', '2');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Гитара', '5340', '2023-05-01', '3');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Вентилятор', '3500', '2023-05-01', '4');
INSERT INTO goods (product_name, price, date_buy, buyer_id) VALUES ('Утюг', '5700', '2023-05-01', '5');








