-- data base oluşturma 
CREATE DATABASE test 
-- tablo oluşturma
CREATE TABLE
öğrenciler (
öğrenci_no char(7),
isim varchar(20),
soyisim varchar(30),
not_ort REAL, -- ondalıklı sayıları belirtmek için
kayıt_tarihi date
);
 SELECT * FROM öğrenciler
 
-- SQL de tablo oluşturmanın 2 yolu vardır. Birincisi sıfırdan oluşturmaktır
-- diğeri de var olan tablodan belli "field"ları kopyalarak yapmaktır
 
-- varolan tablodan yeni tablo create etmek
 CREATE TABLE öğrenci_notları
 AS 
 SELECT isim,soyisim,not_ort
 FROM öğrenciler
 
 SELECT * FROM öğrenci_notları
 -- veri girişi yapma (insert into)
INSERT INTO öğrenciler VALUES ('1234567', 'Tom', 'Cruise', 85.5,'2024-05-25');
INSERT INTO öğrenciler VALUES('2345678', 'Ali', 'Can', 90.2, now());

-- tablonun bazı fieldlarına data eklemek 
INSERT INTO öğrenciler (isim,soyisim)
VALUES 
('Brad','Pitt');

 SELECT * FROM öğrenciler

 
 -- dbvearda generate sql kullanımına örnek
SELECT öğrenci_no, isim, soyisim, not_ort, kayıt_tarihi
FROM public.öğrenciler;

 

 
 -- ----------------------------------------
/* 
 * çoklu
 * yorum
 * satırı için /* .......*/   arasında yazabiliriz
 */

-----------------------------
  -- Table silme
DROP TABLE öğrenci_notlari 

SELECT * FROM öğrenci_notlari

-----------------------
SELECT * FROM öğrenciler

SELECT 
	isim,soyisim
FROM öğrenciler 

-------CONSTRAINTS/ KISITLAMALAR/BELİRLEYİCİLER
-- UNIQUE and NOT NULL

CREATE TABLE öğrenciler2( 
öğrenci_no char(7)UNIQUE,
isim varchar(20) NOT NULL,
soyisim varchar (30) NOT NULL,
not_ort REAL,
kayit_tarihi date
);

INSERT INTO öğrenciler2 VALUES ('1234567', 'Ali', 'Yilmaz', 80, now())

SELECT * FROM öğrenciler2 
INSERT INTO öğrenciler2 VALUES ('2345678', ' ', 'Yilmaz', 90, now())

INSERT INTO öğrenciler2 (isim, soyisim) VALUES('Veli', 'Han');


-- PRIMARY KEY

-- Primary Key: Eger bir field "primary key" olarak deklare edilmisse, field datalari "unique", "not null" olmali.
--Bir tabloda sadece 1 tane "primary key" olabilir.

--Primary Key atamasi icin 1.yol:

CREATE TABLE öğrenciler3( 
öğrenci_no char(7)PRIMARY KEY,
isim varchar(20) NOT NULL,
soyisim varchar (30) NOT NULL,
not_ort REAL,
kayit_tarihi date
);

SELECT * FROM  öğrenciler3

-- PK ataması için 2. yol

CREATE TABLE öğrenciler4( 
öğrenci_no char(7),
isim varchar(20) NOT NULL,
soyisim varchar (30) NOT NULL,
not_ort REAL,
kayit_tarihi date,
CONSTRAINT öğr_no_pk PRIMARY KEY (öğrenci_no)
);
SELECT * FROM  öğrenciler4
INSERT INTO öğrenciler4 VALUES ('1234568', 'Veli', 'Yilmaz', 80, now())
INSERT INTO öğrenciler4 (isim, soyisim) VALUES('Veli', 'Han'); --hatalı giriş, ogrenci_no NULL olamaz

---------------------------
-- Foreign Key:Tablolar arasında ilişki oluşturmak içindir.
-- Değer olarak "null" kabul eder
-- Tekrarlanan verileri kabul eder
-- Bir tablo birden çok "Foreign Key" alanına sahip olabilir.

CREATE TABLE sirketler(
sirket_id INTEGER, 
sirket varchar(50)PRIMARY KEY,
personel_sayisi INTEGER
)

SELECT * FROM sirketler 

---
CREATE TABLE personel(
id INTEGER,
isim VARCHAR(50),
sehir VARCHAR(50),
maas REAL,
sirket VARCHAR(50),
FOREIGN key(sirket) REFERENCES sirketler(sirket)
)
-- CONSTRAINT per_fk FOREIGN KEY(sirket) REFERENCES sirketler(sirket));  bu yazım şeklinde custom foreign key bağlantı ismi verilmiş olur
------------------------------------------------------------

-- CHECK Constraints
-- Age ve salary için veri giriş şartı oluşturalım:
-- salary 5000 den büyük olmalı, age 0 dan küçük olmamalı

CREATE TABLE person(
id INTEGER,
name varchar(50),
salary REAL CHECK(salary>5000), --5000 den fazla giriş olmalı
age INTEGER CHECK(age>=0)  -- negatif değer olmayacak
);

SELECT * FROM person

INSERT INTO person VALUES(11,'Ali Can',6000,35);
INSERT INTO person VALUES(12,'Veli Can', 5500,-3); --HATA Age ile alakalı hata verir
INSERT INTO person VALUES(13,'Ali Can',4000,45); --HATA: person_salary_check

---------------------

-- DISTINCT komutu
--GREEN PAGES database de gösterilmiştir..


  
  
  