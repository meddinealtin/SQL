--orange
/*
"calisanlar" isimli bir Tablo olusturun. Icinde "id", "isim", "maas", "ise_baslama"  
field'lari olsun. "id" yi Primary Key yapin, "isim" i Unique, "maas" i Not Null yapın. 

"adresler" isminde baska bir tablo olusturun.Icinde "adres_id", "sokak", "cadde" ve 
"sehir" fieldlari olsun.  "adres_id" field'i ile Foreign Key oluşturun.
*/
CREATE TABLE calisanlar (
 id SERIAL PRIMARY KEY,
 isim VARCHAR (50) UNIQUE,
 maas NUMERIC (10,2) NOT NULL,
 ise_baslama DATE
);


CREATE TABLE adresler(

 adres_id SERIAL ,
 sokak varchar (30),
 cadde varchar (30),
 sehir varchar(30),
FOREIGN KEY (adres_id) REFERENCES calisanlar (id)
);

INSERT INTO calisanlar VALUES('10002', 'Mehmet Yılmaz' ,12000, '2018-04-14');
INSERT INTO calisanlar VALUES('10008', null, 5000, '2018-04-14');

SELECT * FROM calisanlar

INSERT INTO calisanlar VALUES('10010', 'Mehmet Yılmaz', 5000, '2018-04-14'); --isim UNIQUE değil
INSERT INTO calisanlar VALUES('10006', 'Canan Yaz', NULL, '2019-04-12'); -- maaş NULL olmaz


SELECT * FROM calisanlar


--/*Senaryo 1: person tablosundaki tüm kayıtları adrese göre (artan) sırala arak listeleyiniz. */
CREATE TABLE person (
ssn char(9),
isim varchar(50),
soyisim varchar(50),
adres varchar(50)
);


INSERT INTO person VALUES(123456789, 'Ali','Can', 'Istanbul');
INSERT INTO person VALUES(234567890, 'Veli','Cem', 'Ankara');  
INSERT INTO person VALUES(345678901, 'Mine','Bulut', 'Ankara');  
INSERT INTO person VALUES(256789012, 'Mahmut','Bulut', 'Istanbul'); 
INSERT INTO person VALUES (344678901, 'Mine','Yasa', 'Ankara');  
INSERT INTO person VALUES (345678901, 'Veli','Yilmaz', 'Istanbul');
INSERT INTO person VALUES(256789018, 'Samet','Bulut', 'Izmir'); 
INSERT INTO person VALUES(256789013, 'Veli','Cem', 'Bursa'); 
INSERT INTO person VALUES(256789010, 'Samet','Bulut', 'Ankara'); 

SELECT * FROM person;

SELECT isim,soyisim 
FROM person 
ORDER BY LENGTH(soyisim)

/*Senaryo 4: person Tüm isim ve soyisim değerlerini aralarında bir boşluk ile aynı sutunda çağırarak, 
--her bir isim ve soyisim değerinin toplam uzunluğuna göre sıralayınız.*/
--CONCAT komutu:pythondaki aynı işlev
SELECT concat(isim,' ',soyisim) AS isim_soyisim 
FROM person
ORDER BY LENGTH(isim)+LENGTH(soyisim)

----------------------------------------------------------
-----------------------------------------------------------
--28_05_

CREATE TABLE developers(
id SERIAL PRIMARY KEY,
name varchar(50),
email varchar(50) UNIQUE,
salary real,
prog_lang varchar(20),
city varchar(50),
age int	
);

INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Abdullah Berk','abdullah@mail.com',4000,'Java','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mehmet Cenk','mehmet@mail.com',5000,'JavaScript','Istanbul',35);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayşenur Han ','aysenur@mail.com',5000,'Java','Izmir',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Kübra Han','kubra@mail.com',4000,'JavaScript','Istanbul',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Muhammed Demir','muhammed@mail.com',6000,'Java','Izmir',25);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Fevzi Kaya','fevzi@mail.com',6000,'Html','Istanbul',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Enes Can','enes@mail.com',5500,'Css','Ankara',28);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Tansu Han','tansu@mail.com',5000,'Java','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Said Ran','said@mail.com',4500,'Html','Izmir',33);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Mustafa Pak','mustafa@mail.com',4500,'Css','Bursa',32);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Hakan Tek','hakan@mail.com',7000,'C++','Konya',38);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Deniz Çetin','deniz@mail.com',4000,'C#','Istanbul',30);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Betül Çetin','btl@mail.com',4000,'C#','Bursa',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ayse Gul','ayse@mail.com',4000,'C#','Ankara',29);
INSERT INTO developers(name,email,salary,prog_lang,city,age) VALUES('Ali Seker','ali@mail.com',4000,'C#','Ankara',29);

SELECT * FROM developers 

---------------------------------------------
---------------------------------------
--29_05 dersi

-- ALIAS konusu 

CREATE TABLE workers(
calisan_id char(9),
calisan_isim varchar(50),
calisan_dogdugu_sehir varchar(50)
);

INSERT INTO workers VALUES(123456789, 'Ali Can', 'Istanbul'); 
INSERT INTO workers VALUES(234567890, 'Veli Cem', 'Ankara');  
INSERT INTO workers VALUES(345678901, 'Mine Bulut', 'Izmir');
SELECT * FROM workers;

/*1-calisan_id sutun ismini id olarak degistirelim
2-calisan_isim sutun ismini isim olarak degistirelim
3-workers olan tablo ismini w olarak degistirelim*/

SELECT calisan_id AS id 
FROM workers

SELECT calisan_isim isim -- AS olmadan da olur
FROM workers

SELECT *
FROM workers AS w 

--where

CREATE TABLE calisanlar1(
id char(5),
isim varchar(50),
maas int,
ise_baslama date
);

INSERT INTO calisanlar1 VALUES('10002', 'Donatello' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10003', null, 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10004', 'Donatello', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10005', 'Michelangelo', 5000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10006', 'Leonardo', null, '2019-04-12');
INSERT INTO calisanlar1 VALUES('10007', 'Raphael',null , '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('', 'Ms.April', 2000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10002', 'Splinter' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES( null, 'Fred' ,12000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10008', 'Barnie' ,10000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10009', 'Wilma' ,11000, '2018-04-14');
INSERT INTO calisanlar1 VALUES('10010', 'Betty' ,12000, '2018-04-14');

CREATE TABLE adresler1(
adres_id char(5),
sokak varchar(30),
cadde varchar(30),
sehir varchar(20)
);


INSERT INTO adresler1 VALUES('10003','Ninja Sok', '40.Cad.','IST');
INSERT INTO adresler1 VALUES('10003','Kaya Sok', '50.Cad.','Ankara');
INSERT INTO adresler1 VALUES('10002','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES('10012','Taş Sok', '30.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '23.Cad.','Konya');
INSERT INTO adresler1 VALUES(NULL,'Taş Sok', '33.Cad.','Bursa');


SELECT * FROM calisanlar1;
SELECT * FROM adresler1;

SELECT *
FROM calisanlar1 c 
WHERE c.isim = 'Donatello'

SELECT *
FROM calisanlar1 c 
WHERE maas >5000

SELECT isim,maas
FROM calisanlar1
WHERE maas > 5000


--adresler tablosundan sehiri 'Konya' ve
--adres_id si 10002 olan kaydın tüm verileri getirelim

SELECT *
FROM adresler1
WHERE sehir = 'Konya'
AND adres_id = '10002'

SELECT cadde, sehir
FROM adresler1
WHERE sehir = 'Konya'
OR sehir = 'Bursa'



----------------------------------------------------
-----------------------------------------------


--31_05_ders


--“markalar” ve “calisanlar3” adinda iki tablo oluşturun.

CREATE TABLE markalar
(
marka_id int, 
marka_isim VARCHAR(20), 
calisan_sayisi int
);

INSERT INTO markalar VALUES(100, 'Vakko', 12000);
INSERT INTO markalar VALUES(101, 'Pierre Cardin', 18000);
INSERT INTO markalar VALUES(102, 'Adidas', 10000);
INSERT INTO markalar VALUES(103, 'LCWaikiki', 21000);

CREATE TABLE calisanlar3 (
id int, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas int, 
isyeri VARCHAR(20)
);

INSERT INTO calisanlar3 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar3 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar3 VALUES(345678901, 'Veli Yilmaz', 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar3 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar3 VALUES(456789012, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar3 VALUES(123456710, 'Fatma Yasa', 'Bursa', 2500, 'Vakko');

SELECT * FROM markalar;
SELECT * FROM calisanlar3;

--calisanlar3 tablosunda max maaş değerini bulunuz.

SELECT max(maas)
FROM calisanlar3 c 


--calisanlar3 tablosunda min maaş değerini bulunuz.

SELECT min(maas)
FROM calisanlar3 c 


--calisanlar3 tablosunda toplam maaş değerini bulunuz.

SELECT sum(maas)
FROM calisanlar3 c 

--calisanlar3 tablosunda ortalama maaş değerini bulunuz.

SELECT round(avg(maas),2)
FROM calisanlar3 c 


--calisanlar3 tablosundaki kayıt sayısını bulunuz.

SELECT count(*)
FROM calisanlar3 c 

--calisanlar3 tablosunda maaşı 2500 olanların kayıt sayısını bulunuz.

SELECT count(*)
FROM calisanlar3 c 
WHERE maas = 2500


--STR FUNCTİON
--TEACHER TABLOSU OLUŞTURALM

CREATE TABLE teachers(
id int,
firstname varchar(50),
lastname varchar(50),
age int,	
city varchar(20),
course_name varchar(20),
salary real	
);

INSERT INTO teachers VALUES(111,'AhmeT  ','  Han',35,'Istanbul','SpringMVC',5000);
INSERT INTO teachers VALUES(112,'Mehmet','Ran ',33,'Van','HTML',4000);
INSERT INTO teachers VALUES(113,' Bilal','Fan ',34,'Bursa','SQL',3000);
INSERT INTO teachers VALUES(114,'Celal',' San',30,'Bursa','Java',3000);
INSERT INTO teachers VALUES(115,'Deniz',' Can',30,'Istanbul','SQL',3500);
INSERT INTO teachers VALUES(116,'ekreM','Demir',36,'Istanbul','Java',4000.5);
INSERT INTO teachers VALUES(117,'Fatma','Celik',38,'Van','SpringBOOT',5550);
INSERT INTO teachers VALUES(118,'Hakan','Cetin',44,'Izmir','Java',3999.5);
INSERT INTO teachers VALUES(119,'mert','Cetin',32,'Izmir','HTML',2999.5);
INSERT INTO teachers VALUES(120,'Nilay','Cetin',32,'Izmir','CSS',2999.5);
INSERT INTO teachers VALUES(121,'Selma','Celik',40,'Ankara','SpringBOOT',5550);
INSERT INTO teachers VALUES(122,'fatiH','Can',32,'Ankara','HTML',2550.22);
INSERT INTO teachers VALUES(123,'Nihat','Keskin',32,'Izmir','CSS',3000.5);
INSERT INTO teachers VALUES(124,'Hasan','Temel',37,'Istanbul','S.Security',3000.5);

SELECT * FROM teachers;

--teachers tablosundaki tüm kayıtların
--firstname değerlerini büyük harfe,
-- lastname değerlerini küçük harfe çevirerek,
--uzunlukları ile birlikte listeleyiniz.

SELECT 
UPPER(firstname)AS upper_firstname,
length(firstname) AS len_firstname,
lower(lastname) AS lower_lastname,
length(lastname) AS len_lastname
FROM teachers;

---------------------------------------
--------------------------------------
CREATE TABLE manav
(
isim varchar(50),
urun_adi varchar(50),
urun_miktar int
);

INSERT INTO manav VALUES( 'Ali', 'Elma', 5);
INSERT INTO manav VALUES( 'Ayse', 'Armut', 3);
INSERT INTO manav VALUES( 'Veli', 'Elma', 2);  
INSERT INTO manav VALUES( 'Hasan', 'Uzum', 4);  
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);  
INSERT INTO manav VALUES( 'Ayse', 'Elma', 3);  
INSERT INTO manav VALUES( 'Veli', 'Uzum', 5);  
INSERT INTO manav VALUES( 'Ali', 'Armut', 2);  
INSERT INTO manav VALUES( 'Veli', 'Elma', 3);  
INSERT INTO manav VALUES( 'Ayse', 'Uzum', 2);

SELECT * FROM manav;

/*Senaryo 1: manav tablosundaki tüm isimleri ve her bir isim için, toplam ürün miktarını görüntüleyiniz.*/

SELECT isim,
SUM(urun_miktar) AS toplam_urun
FROM manav m 
GROUP BY isim 

/*Senaryo 2: manav tablosundaki tüm isimleri ve her bir isim için toplam ürün miktarını görüntüleyiniz.
Toplam ürün miktarına göre azalan olarak sıralayınız.*/

SELECT isim,
SUM(urun_miktar) AS toplam_urun_kg
FROM manav m 
GROUP BY isim 
ORDER BY SUM(urun_miktar) DESC 

/*Senaryo 3: Her bir ismin aldığı, her bir ürünün toplam miktarını, isme göre sıralı görüntüleyiniz.*/

SELECT 
isim,urun_adi, 
SUM(urun_miktar) AS toplam_urun
FROM manav m 
GROUP BY isim,urun_adi  --once isime sonra urun adına göre gruplama yapılacak
ORDER BY isim 

--Senaryo 4: ürün adina göre, her bir ürünü alan toplam kişi sayısını gösteriniz.*/

SELECT 
	urun_adi,
	count(DISTINCT isim) -- Aynı kişi elmayı 2.kez aldığında bunu saymaması için DISTINCT kullandık
FROM manav m 
GROUP BY urun_adi 

SELECT * FROM manav m 

-- Senaryo 5: Isme göre, alınan toplam ürün miktarı ve ürün çeşit miktarını bulunuz*/

SELECT 
	isim,
	SUM(urun_miktar) AS toplam_urun_kg,
	count(urun_adi) AS urun_cesit_sayi 
FROM manav m
GROUP BY isim

-- HAVING

CREATE TABLE personel  (
id int,
isim varchar(50),
sehir varchar(50), 
maas int,  
sirket varchar(20)
);

INSERT INTO personel VALUES(123456789, 'Ali Yilmaz', 'Istanbul', 5500, 'Honda'); 
INSERT INTO personel VALUES(234567890, 'Veli Sahin', 'Istanbul', 4500, 'Toyota'); 
INSERT INTO personel VALUES(345678901, 'Mehmet Ozturk', 'Ankara', 3500, 'Honda');
INSERT INTO personel VALUES(456789012, 'Mehmet Ozturk', 'Izmir', 6000, 'Ford'); 
INSERT INTO personel VALUES(567890123, 'Mehmet Ozturk', 'Ankara', 7000, 'Tofas');
INSERT INTO personel VALUES(678901245, 'Veli Sahin', 'Ankara', 4500, 'Ford');  
INSERT INTO personel VALUES(123456710, 'Hatice Sahin', 'Bursa', 4500, 'Honda');

SELECT * FROM personel;

-- Senaryo 1: Her bir şirketin MIN maas bilgisini, bu bilgi eğer 4000 den fazla ise görüntüleyiniz.*/

SELECT 	
	sirket,
	MIN(maas) AS minimum_maas
FROM personel
GROUP BY sirket 
HAVING MIN(maas) > 4000  -- kiriteri sağlamayan sadace Honda oldu (3500)

-- Senaryo 2: 
--Maaşı 4000 den fazla olan çalışanlarin sirketlerini bulduktan sonra, 
--bu sinirin ustunde olan MIN maas bilgisini herbir sirket icin görüntüleyiniz.*/

SELECT 
	sirket,
	MIN(maas) AS Min_maas
FROM personel p 
WHERE maas > 4000
GROUP BY sirket 

-- Senaryo 3: Eğer bir şehirde çalışan personel(id) sayısı 1’den çoksa, 
--sehir ismini ve personel sayısını veren sorgu yazınız*/

SELECT * FROM personel p 

SELECT 
	sehir,
	count(id) AS Kisi_sayisi
FROM personel 
GROUP BY sehir
HAVING count(id)> 1;
SELECT *FROM personel 


--bütün elemanların ad soyad maaş bilgilerini getir
SELECT isim, maas
FROM personel;




-- UPDATE -SET örnekler

CREATE TABLE calisanlar4 (
id INT UNIQUE, 
isim VARCHAR(50), 
sehir VARCHAR(50), 
maas INT, 
isyeri VARCHAR(20)
);

INSERT INTO calisanlar4 VALUES(123456789, 'Ali Seker', 'Istanbul', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(234567890, 'Ayse Gul', 'Istanbul', 1500, 'LCWaikiki');
INSERT INTO calisanlar4 VALUES(345678901, null, 'Ankara', 3000, 'Vakko');
INSERT INTO calisanlar4 VALUES(456789012, 'Veli Yilmaz', 'Izmir', 1000, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(567890123, 'Veli Yilmaz', 'Ankara', 7000, 'Adidas');
INSERT INTO calisanlar4 VALUES(678901234, 'Ayse Gul', 'Ankara', 1500, 'Pierre Cardin');
INSERT INTO calisanlar4 VALUES(789012345, 'Fatma Yasa', null, 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(890123456, null, 'Bursa', 2500, 'Vakko');
INSERT INTO calisanlar4 VALUES(901234567, 'Ali Han', null, 2500, 'Vakko');

SELECT * FROM calisanlar4;

-- SORU:
-- Senaryo 1: calisanlar4 adli bir tablo olusturunuz. id’si 123456789 olan çalışanın isyeri ismini 'Trendyol' olarak güncelleyiniz.*/

UPDATE calisanlar4  
SET isyeri = 'Trendyol'
WHERE id = 123456789;

-- Senaryo 2: id’si 567890123 olan çalışanın ismini 'Veli Yıldırım' ve sehrini 'Bursa' olarak güncelleyiniz.*/

UPDATE calisanlar4  
SET isim = 'Veli Yıldırım', sehir ='Bursa'
WHERE id = 567890123

SELECT * FROM markalar m ;

/*Senaryo 3: markalar tablosundaki marka_id değeri 102’ye eşit veya büyük olanların marka_id’sini 2 ile çarparak değiştirin.*/

UPDATE  markalar 
SET marka_id = marka_id *2
WHERE marka_id >= 102;

--Senaryo 4: markalar tablosundaki tüm markaların calisan_sayisi değerlerini marka_id ile toplayarak güncelleyiniz.*/

UPDATE markalar 
SET calisan_sayisi = calisan_sayisi +marka_id 

-- WHERE E İHTİYAÇ YOK, ÇÜnk TÜM CALIŞAN SAYISI DEĞİECEK  
-------------------------------------
---------------------------------------
--10_06_sql


SELECT * FROM person p 
--drop table ifadesi tüm tabloyu kaldırır
DROP TABLE person 

-- VACUUM komutu
/* PostgreSQL'de bir tablo veya veri silindiğinde disk 
 * alanını geri kazanmak istiyorsanız, VACUUM komutunu 
 * kullanabilirsiniz. VACUUM komutu silinen verilerin yer 
 * kaplamasını önler, boş alanı temizler ve veritabanındaki
 *  diğer işlemler için kullanılabilir hale getirir. 
-- Syntax: VACUUM FULL table_name;
-- MySQL de PURGE komutunmunu karşılığı 
*/


--ALTER TABLE konusu
-- çalışanlar4 tablosuna yas(int) şeklinde field ekle

SELECT * FROM calisanlar4

ALTER TABLE calisanlar4
ADD COLUMN yas int ;

--calisanlar4 tablosuna remote (boolean) seklinde yeni sutun ekleyiniz. 
--varsayılan olarak remote değeri TRUE olsun

ALTER TABLE calisanlar4
ADD remote boolean DEFAULT TRUE;

-- calisanlar4 te yas field sil

ALTER TABLE calisanlar4
DROP yas;

--calisanlar4 te maas fieldının tipini real olarak güncelle

ALTER TABLE calisanlar4
ALTER COLUMN maas TYPE REAL;

--calisanlar4 tablosunda isim sütununa NOT NULL constrainti ekle

ALTER TABLE calisanlar4
ALTER COLUMN isim SET NOT NULL; --eğer sütunda NULL vardıysa tipini NOT NULL yapamayız



------------------------------------
---------------------------------------

--11_06_SQL
 
 --İS NULL 
--filtreleme gbi çalışr

SELECT *FROM calisanlar4 c
--calisanlar4 tablosunda isim sütunu null olanları listeleyiniz.

SELECT * FROM calisanlar4 c 
WHERE isim IS NULL --isime göre boşlar

SELECT * FROM calisanlar4 c 
WHERE isim IS NOT NULL --isime göre boş olmayanları

--calisanlar4 tablosunda isim sütunu null olanları unknown olarak güncelle.
UPDATE calisanlar4 
SET isim= 'Unknown'
WHERE isim IS NULL


CREATE TABLE people
(
ssn INT,
name VARCHAR(50),
address VARCHAR(80)
);
INSERT INTO people VALUES(123456789, 'Mark Star', 'Florida');
INSERT INTO people VALUES(234567890, 'Angie Way', 'Virginia');
INSERT INTO people VALUES(345678901, 'Maryy Tien', 'New Jersey');
INSERT INTO people(ssn, address) VALUES(456789012, 'Michigan');
INSERT INTO people(ssn, address) VALUES(567890123, 'California');
INSERT INTO people(ssn, name) VALUES(567890123, 'California');

SELECT * FROM people;


--SSN degeri 234567890 olan kayıtın SSN degerini 456767890 olarak update ediniz.
UPDATE people
SET ssn= 456767890
WHERE ssn= 234567890;
--Tüm null değerleri "Isim daha sonra eklenecek" olarak değiştirin
UPDATE people
SET name= 'Isim daha sonra eklenecek'
WHERE name IS NULL;
--Tüm null adres değerlerini "Adres daha sonra eklenecek" olarak değiştirin
UPDATE people
SET address ='To Be Inserted'
WHERE address IS NULL;
--Ad değeri olmayan kayıtlar nasıl silinir?
DELETE FROM people
WHERE name='Isim daha sonra eklenecek';
--Tüm kayıtlar nasıl silinir?
--DROP TABLE people;
-- NULL olan tum kayıt yada adresleri siliniz
DELETE FROM people
WHERE name IS NULL OR address IS NULL;


-----------------------------------------------
----------------------------------------------

--13_06_SQL

CREATE TABLE musteriler (
urun_id int, 
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (10, 'Mark', 'Orange');
INSERT INTO musteriler VALUES (20, 'John', 'Apple');
INSERT INTO musteriler VALUES (30, 'Amy', 'Palm');
INSERT INTO musteriler VALUES (20, 'Mark', 'Apple');
INSERT INTO musteriler VALUES (10, 'Adem', 'Orange');
INSERT INTO musteriler VALUES (40, 'John', 'Apricot');
INSERT INTO musteriler VALUES (20, 'Eddie', 'Apple');

SELECT * FROM musteriler;

--Müşteriler tablosundan ürün ismi 'Orange', 'Apple' veya 'Apricot'
--olan verileri listeleyiniz.

SELECT *
FROM musteriler m 
WHERE urun_isim IN ('Orange','Apple','Apricot') 

-- Senaryo 1: marka_id si 100 olan firmada çalışanların bilgilerini 
-- (markalar ve calisanlar3 tablolarından)listeleyiniz.

SELECT * FROM markalar m 

SELECT  * FROM calisanlar3  
 
-- ic sorgu
SELECT marka_isim
FROM markalar m 
WHERE marka_id = 100

-- ic sorgu + dis sorgu
SELECT *
FROM calisanlar3 c 
WHERE isyeri IN (SELECT marka_isim FROM markalar m WHERE marka_id = 100)

-- Senaryo 2: (INTERVIEW QUESTION) calisanlar3 tablosunda max maaşı alan çalışanın 
-- tüm fieldlarını listeleyiniz.
SELECT *
FROM calisanlar3 c 
WHERE maas IN (SELECT max(maas) FROM calisanlar3 c2) 

SELECT *
FROM calisanlar3 c 
WHERE maas = (SELECT max(maas) FROM calisanlar3 c2) 

-- Senaryo 3: (INTERVIEW QUESTION) calisanlar3 tablosunda max maaşı alan 2. çalışanın 
-- tüm fieldlarını listeleyiniz.

SELECT *
FROM calisanlar3 c 
WHERE maas < (SELECT max(maas) FROM calisanlar3 c2)
ORDER BY maas DESC  
LIMIT 1



-- Bu çözüm 2 adet max değer olduğunda hatalı sonuç verir.
SELECT *
FROM calisanlar3 c 
WHERE maas IN (SELECT maas FROM calisanlar3 c2 
ORDER BY maas DESC 
OFFSET 1 
LIMIT 1)

-- Senaryo 4: (INTERVIEW QUESTION) calisanlar3 tablosunda max maaşı alan 2. çalışanın 
-- tüm fieldlarını ORDER BY kullanmadan listeleyiniz.

--iç sorgu
SELECT max(maas) 
FROM calisanlar3 c 
WHERE maas < (SELECT max(maas) FROM calisanlar3 c2)

--dış sorgu
SELECT *
FROM calisanlar3 c 
WHERE maas IN (SELECT max(maas)FROM calisanlar3 c 
WHERE maas < (SELECT max(maas) FROM calisanlar3 c2))

-- Senaryo 5: calisanlar3 tablosunda max veya min maaşı alan çalışanların tüm fieldlarını gösteriniz.

-- 1. Yöntem
SELECT *
FROM calisanlar3 c 
WHERE maas = (SELECT max(maas) FROM calisanlar3 c2)
			   OR 
	  maas = (SELECT min(maas) FROM calisanlar3 c2)

-- 2. Yöntem
SELECT *
FROM calisanlar3 c 
WHERE maas IN (SELECT max(maas) FROM calisanlar3 c2
			   UNION 
			   SELECT min(maas) FROM calisanlar3 c2)
			   
-- 3. Yöntem
select * 
from calisanlar3  
where maas IN ((select max(maas) from calisanlar3),(select MIN(maas) from calisanlar3))
			   

-- Senaryo 6: Ankara'da calisani olan markalarin marka id'lerini ve calisan sayilarini listeleyiniz.

SELECT * FROM calisanlar3 c 

SELECT * FROM markalar

-- ic sorgu
SELECT isyeri
FROM calisanlar3 c 
WHERE sehir = 'Ankara'

-- ic + dis sorgu
SELECT marka_id, calisan_sayisi  
FROM markalar m 
WHERE marka_isim IN 
(SELECT isyeri FROM calisanlar3 c WHERE sehir = 'Ankara')

-- JOIN ile çözüm
SELECT marka_id, calisan_sayisi
FROM 
calisanlar3 c 
INNER JOIN markalar m ON c.isyeri = m.marka_isim
WHERE sehir = 'Ankara'

-- Senaryo 7: Çalisan sayisi 15.000’den cok olan markalara ait isyerlerinde çalışanların 
-- isimlerini, maaslarını ve isyerlerini listeleyiniz.

-- ic sorgu
SELECT marka_isim 
FROM markalar m 
WHERE calisan_sayisi > 15000

-- ic sorgu + dıs sorgu
SELECT isim, maas, isyeri 
FROM 
calisanlar3 c 
WHERE isyeri IN  
(SELECT marka_isim FROM markalar m WHERE calisan_sayisi > 15000)

-- Senaryo 8: Her markanin id’sini, marka ismini ve toplam kaç şehirde bulunduğunu 
-- listeleyen bir SORGU yaziniz.

SELECT * FROM calisanlar3 c 

SELECT * FROM markalar

SELECT 
	marka_id, 
	marka_isim, 
	(SELECT count(DISTINCT sehir) AS sehir_sayisi FROM calisanlar3 c WHERE c.isyeri = m.marka_isim) 
FROM markalar m 

-- Senaryo 9: Her markanin ismini, calisan sayisini 
-- ve o markaya ait calisanlarin maksimum ve min maaşini listeleyen bir Sorgu yaziniz.

SELECT 	marka_isim , 
		calisan_sayisi,
		(SELECT max(maas) AS max_maas_alan FROM calisanlar3 c WHERE c.isyeri = m.marka_isim),
		(SELECT min(maas) AS min_maas_alan FROM calisanlar3 c WHERE c.isyeri = m.marka_isim)
FROM markalar m 


-- yeni table lar
CREATE TABLE mart
(     
urun_id int,      
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO mart VALUES (10, 'Mark', 'Honda');
INSERT INTO mart VALUES (20, 'John', 'Toyota');
INSERT INTO mart VALUES (30, 'Amy', 'Ford');
INSERT INTO mart VALUES (20, 'Mark', 'Toyota');
INSERT INTO mart VALUES (10, 'Adam', 'Honda');
INSERT INTO mart VALUES (40, 'John', 'Hyundai');
INSERT INTO mart VALUES (20, 'Eddie', 'Toyota');

CREATE TABLE nisan 
(     
urun_id int ,
musteri_isim varchar(50),
urun_isim varchar(50)
);

INSERT INTO nisan VALUES (10, 'Hasan', 'Honda');
INSERT INTO nisan VALUES (10, 'Kemal', 'Honda');
INSERT INTO nisan VALUES (20, 'Ayse', 'Toyota');
INSERT INTO nisan VALUES (50, 'Yasar', 'Volvo');
INSERT INTO nisan VALUES (20, 'Mine', 'Toyota');

SELECT * FROM mart;

SELECT * FROM nisan;

-- Senaryo 1: Mart ayında 'Toyota' satışı yapılmış ise 
-- Nisan ayındaki tüm ürünlerin bilgilerini listeleyiniz.

-- ic sorgu
SELECT *
FROM mart m  
WHERE urun_isim = 'Toyota'

-- ic sorgu + dıs sorgu
SELECT *
FROM nisan n
WHERE EXISTS 
(SELECT * FROM mart WHERE urun_isim = 'Toyota')

-- Senaryo 2: Mart ayında 'Volvo' satışı yapılmış ise 
-- Nisan ayındaki tüm ürünlerin bilgilerini listeleyiniz.

-- ic sorgu
SELECT *
FROM mart m  
WHERE urun_isim = 'Volvo'

-- ic sorgu + dıs sorgu
SELECT *
FROM nisan n
WHERE EXISTS 
(SELECT * FROM mart m WHERE urun_isim = 'Volvo') -- Mart ayında Volvo satışı olmadığı için sorgu boş tablo getirir.

-- Senaryo 3: Mart ayında satılan ürünlerin urun_id ve musteri_isim'lerini,
-- eğer urun(urun_isim) Nisan ayında da satılmışsa, listeleyen bir sorgu yazınız 

SELECT urun_id, musteri_isim
FROM mart m 
WHERE EXISTS 
(SELECT * FROM nisan n WHERE m.urun_isim = n.urun_isim)

-- Senaryo 4: Mart ve Nisan aylarında satılan ürünlerin urun_id ve musteri_isim'lerini,
-- eğer urun(urun_isim) hem Mart hem de Nisan ayında da satılmışsa, listeleyen bir sorgu yazınız
 
SELECT urun_id, musteri_isim
FROM mart m 
WHERE EXISTS 
(SELECT * FROM nisan n WHERE m.urun_isim = n.urun_isim)
UNION 
SELECT urun_id, musteri_isim
FROM nisan n 
WHERE EXISTS 
(SELECT * FROM mart m WHERE m.urun_isim = n.urun_isim)


-- Senaryo 5: Her iki ayda da satılan ürünlerin urun_isim’lerini, 
-- bu ürünleri NİSAN ayında satın alan musteri_isim’lerine gore listeleyen bir sorgu yazınız

SELECT urun_isim ,musteri_isim 
FROM nisan n 
WHERE EXISTS (SELECT * FROM mart m WHERE n.urun_isim = m.urun_isim)


-- VIEW Kullanımı
/* 
   Bazı sorguları tekrar tekrar yazmak yerine ilgili kısmı hafızasına alması için CREATE VIEW yapılır 
   ve daha sonra Select ile çağırılır.
   Yaptığımız sorguları hafızaya alır. 
   ve tekrar bizden istenen sorgulama yerine view'e atadığımız ismi SELECT komutuyla çağırırız
*/

-- Her markanin ismini, calisan sayisini ve o markaya ait calisanlarin
-- maksimum ve minimum maaşini listeleyen bir Sorgu yaziniz.

CREATE VIEW max_min_maas -- fonksiyon haline getirdik, left panelden orange_pages/Schemas/public/Tables/Views dan görülebilir
AS 
SELECT 	marka_isim , -- bu örnek Senaryo 9 olarak yukarıda var.
		calisan_sayisi,
		(SELECT max(maas) AS max_maas_alan FROM calisanlar3 c WHERE c.isyeri = m.marka_isim),
		(SELECT min(maas) AS min_maas_alan FROM calisanlar3 c WHERE c.isyeri = m.marka_isim)
FROM markalar m
		
SELECT * FROM max_min_maas 

-- silmek için DROP VIEW max_min_maas / left panelden sağ tıklayarak ta silinebilir.
-- değiştirmek için REPLACE VIEW





































