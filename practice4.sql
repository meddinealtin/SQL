drop table ogrenciler;
create table ogrenciler(
ogr_no int PRIMARY key,
ogr_isim VARCHAR(30),
sinif int,
ders_id int)

insert into ogrenciler values(12,'Enes Erdem', 10, 1);
insert into ogrenciler values(33,'Melek Maden', 9, 3);
insert into ogrenciler values(54,'Burcu Deniz', 10, 8);
insert into ogrenciler values(18,'Polat Yildirim', 11, 2);
insert into ogrenciler values(42,'Defne Gumus', 12, 1);
insert into ogrenciler values(23,'Serpil Ates', 11, 4);
insert into ogrenciler values(45,'Mehmet Gunes', 9, 7);
insert into ogrenciler values(32,'Demet Bulut', 12, 6);
insert into ogrenciler values(68,'Fikret Yavuz', 10, 9);

create table ogretmenler(
ogrt_id int PRIMARY key,
ogrt_isim VARCHAR(30),
ders_id int
)

insert into ogretmenler values(101,'Adem Alan',6);
insert into ogretmenler values(102,'Filiz Denge',2);
insert into ogretmenler values(103,'Gulsen Basar',3);
insert into ogretmenler values(104,'Osman Kok',4);
insert into ogretmenler values(105,'Mustafa Altin',8);
insert into ogretmenler values(106,'Mine Mutlu',1);
insert into ogretmenler values(107,'Hale Haktan',5);

create table dersler(
ders_id int PRIMARY key,
ders_isim VARCHAR(30),
ders_saati INT)


insert into dersler values(1, 'Matemateik', 8);
insert into dersler values(2, 'Fizik', 6);
insert into dersler values(3, 'Kimya', 6);
insert into dersler values(4, 'Biyoloji', 4);
insert into dersler values(5, 'Edebiyat', 4);
insert into dersler values(6, 'Cografya', 2);
insert into dersler values(7, 'Tarih', 2);


--SORU1: tum dersleri ve varsa bu dersleri alan ogrencilerın isimlerini listeleyiniz

SELECT * FROM dersler d 

SELECT * FROM ogrenciler o 

SELECT d.ders_isim , o.ogr_isim  FROM 
ogrenciler o 
JOIN  dersler d  ON  o.ders_id = d.ders_id

--SORU2: tum ogrencileri ve varsa bu ogrencilerin aldıkları dersleri listeleyiniz

SELECT d.ders_isim , o.ogr_isim  FROM 
ogrenciler o 
LEFT JOIN  dersler d  ON  o.ders_id = d.ders_id

--SORU3: tum ogretmenleri ve varsa bu ogretmenlerin derslerini listeleyiniz
SELECT * FROM ogretmenler o 

SELECT o.ogrt_isim, d.ders_isim  FROM ogretmenler o 
LEFT JOIN dersler d ON o.ders_id = d.ders_id 

--SORU4: tum dersleri ve varsa bu derslerin ogretmenlerini listeleyiniz

SELECT  d.ders_isim,o.ogrt_isim FROM ogretmenler o 
RIGHT JOIN dersler d ON o.ders_id = d.ders_id 

SELECT  d.ders_isim,o.ogrt_isim FROM dersler d 
left JOIN ogretmenler o ON o.ders_id = d.ders_id 

--SORU5: tum ogretmenleri ve varsa  bu ogretmenlerin
--verdiği dersi alan ogrencilerin isimlerini listeleyiniz

SELECT * FROM dersler d 

SELECT * FROM ogrenciler o 

SELECT * FROM ogretmenler o2

SELECT o2.ogrt_isim,o.ogr_isim ,d.ders_isim FROM ogretmenler o2
LEFT JOIN dersler d ON d.ders_id = o2.ders_id 
LEFT JOIN ogrenciler o ON d.ders_id =o.ders_id 


--SORU6: ogrenciler tablosundaki ogrencilerden sadece
--dersler tablosundaki derslerden herhangi birini
--alan ogrenci isimlerini listeleyiniz

SELECT o.ogr_isim ,d.ders_isim FROM ogrenciler o
INNER JOIN dersler d ON d.ders_id = o.ders_id 


--SORU7: tum dersleri ve tum ogrenci isimlerini listeleyiniz

SELECT o.ogr_isim ,d.ders_isim FROM ogrenciler o
FULL  JOIN dersler d ON d.ders_id = o.ders_id 




