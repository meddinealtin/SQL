--------------------------------------------------------------------
---------------------------------------------------------------------
--29_05 dersi


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


/* Senaryo 1: developers tablosundan ekleme sırasına göre 
 * ilk 3 kaydı getiriniz*/

SELECT *
FROM developers
LIMIT 3

/*Senaryo 2: developers tablosundan ekleme sırasına göre 
 * ilk 2 kayıttan sonraki ilk 3 kaydı getiriniz.*/

SELECT *
FROM developers
OFFSET 2
LIMIT 3

/*Senaryo 3: developers tablosundan
 *  maaşı en düşük ilk 3 kaydı getiriniz.*/
SELECT *
FROM developers
ORDER BY salary --aynı maaş değerlerini kendi arasında sıralamak için name eklenebilir
LIMIT 3;

/*Senaryo 4: developers tablosundan 
 * maaşı en yüksek 2. developerın tüm bilgilerini getiriniz.*/

SELECT * 
FROM developers 
ORDER BY salary DESC ,-- "name" ASC -- aynı değerler için başka bir sıralama
OFFSET 1
LIMIT 1

SELECT * 
FROM employees e 


SELECT salary
FROM employees e 


SELECT salary , salary*0.1 AS bonus 
FROM employees e 

-- where komutu 
SELECT *
FROM customers1 c 
WHERE country = 'Germany' ;

SELECT *
FROM customers1 c 
WHERE score > 500 ;


SELECT *
FROM customers1 c 
WHERE score <= 500 ;


SELECT *
FROM customers1 c 
WHERE country != 'Germany' ; --eşit değil

SELECT *
FROM customers1 c 
WHERE country <> 'Germany' ; --eşit değil

------------
--and operatörü

SELECT *
FROM customers1
WHERE score < 400 
AND country = 'Germany'




------------------------------------------------
-------------------------------------------------
---30_05_ders

--and or not betweeen 

-- ülkesi 'Germany' veya score < 500 olan kayıtlar 

SELECT * FROM customers1 c
WHERE country = 'Germany' 
OR score < 500

-- score < 400 den küçük OLMAYAN kayıtlar 
SELECT * FROM customers1 c
WHERE NOT score < 400

SELECT *
FROM customers1 c
WHERE score
BETWEEN 100 AND 500 
--between de değerler dahildir

SELECT *
FROM customers1 c
WHERE first_name 
BETWEEN 'A' AND 'Z' 

--in
--id değeri 1,2,5 olan customerları getir

SELECT * FROM customers1 c 
WHERE customer_id IN (1,2,5)


-- like

--n harfi ile biten ad ları değerlerini  getir 
SELECT * 
FROM customers1 c 
WHERE c.first_name 
LIKE '%n'

 --3.harfi r olan 
SELECT * 
FROM customers1 c 
WHERE c.first_name 
LIKE '__r%'

--içinde r harfi geçen

SELECT * 
FROM customers1 c 
WHERE c.first_name 
LIKE '%r%'

--m harfi ile başlayanları

SELECT * 
FROM customers1 c 
WHERE c.first_name 
LIKE 'M%' --küçük harf büyük harf duyarlı

--group by 

--herbir ülke için total customer sayılarını getir

SELECT 
COUNT (*) AS total_customers, --country i önde görmek için öne alabilrsn
country
FROM customers1 c 
GROUP BY country 
ORDER BY COUNT(*) 

-- agg -- count

SELECT count(*) AS total_customers --satırları saydı
FROM customers1 c 


SELECT count(score) AS total_score --NULL olduğu için satır sayısı 4
FROM customers1 c 

SELECT count(DISTINCT country) AS dict_country ,country 
FROM customers1 c 
group BY country 

---------------------------------------
-----------------------------------------
--31_05_ders

--sum

--orderların toplam miktarı

SELECT sum(quantity) AS total_quantity 
FROM orders o 

--average 

SELECT * FROM customers1 c 

SELECT AVG(score)AS avg_score
FROM customers1 c 

--eğer null değere bir değer verip ortalmaya dahil etmek istersek

SELECT AVG(COALESCE (score,0))AS avg_score
FROM customers1 c 

-- min max 

--en yüksek score

SELECT max(score)AS max_score
FROM customers1 c 

--en düşük score

SELECT min(score) AS min_score
FROM customers1 c 

--ilk ve son sipariş tarihi
 SELECT min(order_date)
 FROM orders
 
 SELECT max(order_date)
 FROM orders
 
 -------------------
 -- string function 
/*
TRIM(Sütun parametresi) string ifadenin başındaki ve sonundaki boşluk karakterlerini siler
LTRIM sadece soldan boşluk siler
RTRIM sadece sağdan boşluk siler
REPLACE(sütun,'değişecek ifade','yeni ifade') belirtilen ifadeyi o sütunda bulursa, belirlediğiniz yeni ifade ile değiştirir
bir değişiklik yaptığı için UPDATE ile kullanılır
CONCAT(sütunadı, 'string') iki veya daha fazla dizeyi birleştirme işlemi için kullanılır
SUBSTRING(sütun adı,başlangıç index,bitiş index) o sütunda belirtilen index aralığındaki string değerini verir
istediğimiz bir sütunda stringlerin istediğimiz kısımlarını değiştirebiliriz. Tek index ilede çalışır belirtilen kısımdan 
en sona kadar alır
UPPER (sütun adı) o sütundaki strng değerleri büyük harfle getirir 
LOWER (sütun adı) o sütundaki strn değerleri küçük harfle getirir 
INITCAP(sütun adı) o sütundaki her bir satırdaki stringlerin baş harfini büyük harf yapar
LENGTH(sütun adı) belirtilen sütundaki her satır içinde bulunan stringlerin uzunluklarını alır 
REVERSE(sütun adı) sütunu ters çevirir
LEFT() / RIGHT() (Başlangıç ve Son Karakterler): Bir dizinin başlangıç veya sonundaki belirli karakterleri alır.
LEFT(sütun, 3) ilk 3 karakteri alır RIGHT olsa son 3 karakteri alırdı
--FETCH NEXT n ROW ONLY: sadece sıradaki ilk n satırı getirir
--LIMIT n : sadece sıradaki ilk n satırı getirir
--OFFSET n : n satırı atlayıp sonrakileri getirir
*/ 
 
--concat 
 --customers ta isim ve soyisimi araya - koyarak birleştir 
SELECT 
concat(first_name, '-', last_name) AS cust_name_surname
FROM customers1 c 

--upper lower
--customersta isimleri büyük soyisimler küçük harfli yap

SELECT 
upper(first_name),
lower(last_name)
FROM customers1 c 

--length(karakterleri sayar)

SELECT last_name ,
length(last_name)
FROM customers1 c 

--trim
--öncesi ve sonrası  uzunlklarla birlkte gösteren karşlaştrma

SELECT last_name ,
length(last_name), --TRİM ÖNCESİ UZUNLK
trim(last_name) AS CLEAN_LASTNAME,
length(trim(last_name)) AS CLEAN_LEN_LASTNAME --TRİM SONRASI UZUNLK
FROM customers1 c 

--SUBSTRİNG
--KELİMENİN BELLİ BİR BÖLÜMÜNÜ ALMAK İÇİN

SELECT last_name,
substring(last_name,2,3)
FROM customers1 c

---------------------------------------
----------------------------------------

--10_06_sql
-- ALTER TABLE 

--tablonun yapısını değiştrmek için 
--sütun eklemek
--silmek için
--sütun veri tipini değiştirmek
--tablonun adını değiştrmek
--sütunun adını değiştrmek

/* ALTER TABLE  tabloda ADD, MODIFY, veya DROP/DELETE COLUMNS 
 * islemleri icin kullanilir.
   ALTER TABLE ifadesi tablolari yeniden isimlendirmek 
   (RENAME) icin de kullanilir. /
   */
 
CREATE TABLE public.persons (
id SERIAL PRIMARY KEY,
person_name VARCHAR(50) NOT NULL,
birth_date DATE,
phone VARCHAR(15) NOT NULL UNIQUE
);

SELECT * FROM persons p 


--persons tablosuna 15 karakterlik email field ekle

ALTER TABLE persons 
ADD email varchar(15) NOT NULL 

SELECT * FROM persons p 

--persons tablosuna adres sütunu ekle

ALTER TABLE persons  
ADD COLUMN  adress varchar(50); --COLUMN yazılmasada olur

--persons tablosuna adres sütunu kaldır

ALTER TABLE persons  
DROP COLUMN adress; --COLUMN demesekte olur

--persons tablosuna phone fieldın veri tipini varchar(20)yap

ALTER TABLE persons  
ALTER COLUMN phone  TYPE varchar(20);

--persons tablosunun adını "contacts" olarak değiştir

ALTER TABLE persons  
RENAME TO contacts

SELECT * FROM contacts 

--contacts tablosunda phone field adını contact_number olarak değiştr


ALTER TABLE contacts 
RENAME COLUMN phone TO contact_number; --COLUMN yazmasanda olur


--JOİN konusu 

SELECT * FROM customers1 c 

SELECT * FROM orders o 

SELECT 
c.customer_id, 
c.first_name, 
o.order_id, 
o.quantity 
FROM customers1 c
INNER JOIN orders o 
ON c.customer_id = o.customer_id

------------------------------------------------
-----------------------------------------------------

--11_06_SQL

--LEFT JOİN 

--customer tablosundan customer_id,first_name,
--orders tablosundan order_id,quantity fieldlarını left join birleştr


SELECT 
c.customer_id,
c.first_name,
o.order_id,
o.quantity
FROM customers1 c 
LEFT JOIN orders o 
ON c.customer_id = o.customer_id 

-- RIGHT JOIN
-- Soru: customer tablosundan customer_id, first_name
-- ve orders tablosundan orderid, quantity field larını
-- right join tarzında birleştirerek getiriniz

SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers1 c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- FULL JOIN
-- Soru: customer tablosundan customer_id, first_name
-- ve orders tablosundan orderid, quantity field larını
-- FULL join tarzında birleştirerek getiriniz

SELECT
	c.customer_id,
	c.first_name,
	o.order_id,
	o.quantity
FROM customers1 c
FULL JOIN orders o
ON c.customer_id = o.customer_id;

--UNION
-- UNİON ALL (tekrar edenleride tekrar yazar)
-- UNİON (tekrar edenleri 1 kere yazar)
--alt alta ekliyor

--Müşterilerden ve çalışanlardan 
--tüm kişilerin adını soyadını ve ülkesini listeleyin

SELECT *FROM customers1 c 
UNION all
SELECT * FROM employees e 

SELECT 
first_name,
last_name,
country
FROM customers1 c 
UNION 
SELECT 
first_name,
last_name,
emp_country
FROM employees e 


SELECT 
first_name,
last_name,
country
FROM customers1 c 
UNION ALL 
SELECT 
first_name,
last_name,
emp_country
FROM employees e 

/*PostgreSQL'de UNION operatörünü kullanabilmek için, birleştirmek istediğiniz sorgu sonuçlarının
şu koşulları karşılaması gerekir:
1. Aynı sayıda sütun: UNION işlemini uygulayabilmeniz için 
her iki sorgu da aynı sayıda sütuna sahip olmalıdır.
2. Uyumlu veri türleri: Sütunların aynı veri türünde olması gerekir.
 Örneğin, bir sorgu integer türünde bir sütun döndürürken, 
 diğer sorgu text türünde bir sütun döndürüyorsa, 
 UNION işlemini uygulayamazsınız.
3. Uyumlu sıralı sütunlar: Her iki sorgunun 
aynı sırada aynı veri türündeki sütunları döndürmesi gerekir. 
Yani, ilk sorgunun ilk sütunu integer türünde ise, 
ikinci sorgunun ilk sütunu da integer türünde olmalıdır.
4. Uyumlu sıralama kuralları: UNION işlemi sonuçları, 
her iki sorgudan gelen verileri aynı sıralama kurallarına göre birleştirir. 
Bu, her iki sorguda da aynı ORDER BY ifadesinin kullanılması gerektiği anlamına gelir.
5. Aynı sütun adları (isteğe bağlı): Her iki sorgunun aynı sütun adlarını kullanması gerekmez, 
ancak sütun adları farklıysa, sonuç kümesinde sütun adları ilk sorgudaki adlara göre belirlenir. 
/
 */

-----------------------------------------------
----------------------------------------------

--12_06_SQL

--subquery-nested query 
--customer ID yi kullanrak score u 500 den büyük olan
-- customer ların order larını getir..

SELECT * FROM orders o 

SELECT *FROM customers1 c 

SELECT customer_id
FROM customers1 c 
WHERE score > 500

SELECT * 
FROM orders 
WHERE customer_id IN (
						SELECT customer_id
						FROM customers1 c 
						WHERE score > 500
						);



-- 13.06.2024

-- EXIST
-- customer ID yi kullanarak score u 500 den büyük olan
-- customer ların order larını EXIST kullanarak getir..
SELECT * FROM customers1 c 

SELECT * FROM orders o 

SELECT *
FROM orders o 
WHERE EXISTS (
SELECT 1 -- herhangi bir fonksiyonu yok! 
FROM customers1 c
WHERE c.customer_id = o.customer_id  AND score > 500






































