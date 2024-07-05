-- blue page database DESİGN 
CREATE TABLE personel (
id SERIAL PRIMARY KEY,
departman_id INTEGER NOT NULL,
ulke_id VARCHAR(50) NOT NULL,
ad VARCHAR(50) NOT NULL,
soyad VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
dogum DATE NOT NULL,
maas NUMERIC(10, 2) NOT NULL
);

INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (1, 4, 'TR', 'Mehmet', 'Ozman', 'grafiker@yahoo.com', '1976-11-01', 2500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (2, 5, 'TR', 'Güray', 'Oskay', 'gurayoskay@gmail.com', '1979-02-03', 1500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (3, 5, 'TR', 'Serkan', 'Çiftçi', 'kizilsakal@trumpet.sk', '1982-12-04', 850);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (4, 8, 'TR', 'Emre', 'Büyükkalfa', 'emrebuyukkalfa@hotmail.com', '1978-07-13', 2000);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (5, 4, 'TR', 'Ali', 'Polat', 'hasanali@hotmail.com', '1978-09-05', 3500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (6, 5, 'TR', 'Özgür', 'Şengül', 'ozgursengul@yahoo.com', '1981-11-16', 900);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (7, 5, 'TR', 'Can', 'Göksun', 'cangoksun@gmail.com', '1980-05-19', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (8, 5, 'TR', 'Dara', 'Ganjiavi', 'daragan@yahoo.com', '1975-02-14', 1500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (9, 5, 'TR', 'Elif', 'Akşar', 'elifeel@hotmail.com', '1975-12-26', 750);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (10, 3, 'TR', 'Azade', 'Çerkezoğlu', 'info@azade.info', '1979-09-05', 2200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (11, 3, 'TR', 'Asude', 'Çerkezoğlu', 'asude@gmail.com', '1973-09-05', 1100);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (12, 8, 'TR', 'Cengiz', 'Çerkezoğlu', 'cengiz@gmail.com', '1950-01-01', 2600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (13, 1, 'TR', 'Seval', 'Çerkezoğlu', 'sevalc@gmail.com', '1962-05-01', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (14, 1, 'TR', 'Aytek', 'Karadeniz', 'aytek@hotmail.com', '1983-10-11', 950);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (15, 2, 'TR', 'Eralp', 'Görgün', 'eralpgorgun@yahoo.com', '1982-04-24', 1600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (16, 2, 'TR', 'Çağrı', 'Singör', 'cagri.singor@hotmail.com', '1978-02-05', 850);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (17, 2, 'TR', 'Peyman', 'Köseoğlu', 'pudi@yahoo.com', '1952-07-24', 2600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (18, 8, 'TR', 'Yaman', 'Köseoğlu', 'yamank@superonline.com', '1945-07-06', 3300);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (19, 4, 'TR', 'Doğan', 'Tacikayan', 'dogant@yahoo.com', '1985-03-02', 1500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (20, 3, 'TR', 'Sema', 'Özkul', 'semai@hotmail.com', '1976-10-19', 1400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (21, 8, 'TR', 'Hakan', 'Çolak', 'hakancolak@yahoo.com', '1972-06-18', 1600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (22, 9, 'TR', 'Dilek', 'Çolak', 'dilekcolak@gmail.com', '1973-06-16', 1600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (23, 8, 'TR', 'Gürkan', 'Engin', 'gurkanengin@gmail.com', '1970-07-11', 1600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (24, 1, 'TR', 'Alperen', 'Canıdemir', 'alperenc@hotmail.com', '1978-11-01', 1400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (25, 1, 'TR', 'Yavuz', 'Akbaş', 'yavak@gmail.com', '1969-12-05', 1500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (26, 2, 'TR', 'Bülent', 'Çavuş', 'bulentc@msn.com', '1981-11-04', 1900);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (27, 2, 'TR', 'Cüneyt', 'Değertekin', 'cucu@msn.com', '1979-12-28', 1450);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (28, 9, 'TR', 'Ersin', 'Ergen', 'ersinergen@yahoo.com', '1973-01-28', 2000);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (29, 9, 'TR', 'Fatih', 'Zenginer', 'fatihz@gmail.com', '1978-12-27', 1650);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (30, 9, 'TR', 'Mehmet', 'Ergül', 'malier@hotmail.com', '1970-07-25', 1450);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (31, 9, 'TR', 'Mehmet', 'Ün', 'mehmet_un@yahoo.com', '1980-07-20', 1500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (32, 1, 'TR', 'Ramazan', 'Salman', 'ramazansalman@yahoo.com', '1978-06-18', 1300);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (33, 3, 'TR', 'Yeşim', 'Kantar', 'yesim21@yahoo.com', '1972-06-16', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (34, 1, 'TR', 'İlkay', 'Yalçın', 'ilkayal@gmail.com', '1982-07-15', 900);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (35, 2, 'TR', 'Cenker', 'Uçan', 'cenker@gmail.com', '1969-05-15', 3400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (36, 3, 'TR', 'Okan', 'Metin', 'okaniko@hotmail.com', '1982-03-14', 1400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (37, 4, 'TR', 'Ercan', 'Paksoylu', 'ercanpak@hotmail.com', '1975-07-11', 1800);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (38, 5, 'TR', 'Ercüment', 'Paksoylu', 'ercupak@hotmail.com', '1978-05-01', 2400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (39, 2, 'TR', 'Ahu', 'Akar', 'ahuakar@yahoo.com', '1978-11-01', 4500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (40, 8, 'TR', 'Cemal', 'Akar', 'cemalakar@yahoo.com', '1972-01-01', 3500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (41, 8, 'TR', 'Kemal', 'Akar', 'kemalakar@yahoo.com', '1950-10-03', 2400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (42, 3, 'TR', 'Gülten', 'Akar', 'gultenakar@yahoo.com', '1960-09-20', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (43, 6, 'TR', 'Suna', 'Yaşar', 'suna.yasar@gmail.com', '1970-10-20', 650);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (44, 6, 'TR', 'Mehmet', 'Yaşar', 'mehmet.yasar@gmail.com', '1968-10-22', 900);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (45, 9, 'TR', 'Dilek', 'Ergen', 'dileker@msn.com', '1975-12-12', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (46, 2, 'TR', 'Hasan', 'Çerkezköylü', 'hasanc@msn.com', '1970-12-31', 1200);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (47, 0, 'TR', 'Ekin', 'Boylan', 'ekinboylan@hotmail.com', '1970-04-04', 400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (48, 4, 'DE', 'Hans', 'Müller', 'hansm@libero.id', '1976-12-13', 2500);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (49, 1, 'DE', 'Lisa', 'Schaudi', 'lisas@gmx.de', '1970-10-19', 3600);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (50, 2, 'UK', 'Gabriel', 'Franklin', 'gabriel_franklin@yahoo.com', '1980-09-01', 2250);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (51, 5, 'JP', 'Yoshi', 'Mitsu', 'yoshimitsu@tekken.com', '1976-10-12', 1000);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (55, 7, 'TR', 'İhsan', 'Taşdemir', 'itasdemir@msn.com', '1960-12-15', 400);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (56, 7, 'TR', 'Reha', 'Engin', 'rehaengin@yahoo.com', '1978-12-12', 450);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (57, 1, 'TR', 'Reha', 'Engin', 'reha.engin@gmail.com', '1945-01-01', 800);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (58, 5, 'JP', 'Jin', 'Kazama', 'jinkazama@tekken.com', '1978-12-27', 950);
INSERT INTO personel (id, departman_id, ulke_id, ad, soyad, email, dogum, maas) VALUES (59, 4, 'DE', 'Kerem', 'Köseoğlu', 'kerem@doublekey.org', '1978-12-27', 4100);

SELECT * FROM personel

CREATE TABLE departman (
    id SERIAL PRIMARY KEY,
    ad VARCHAR(50) NOT NULL,
    odano VARCHAR(20) NULL
);

INSERT INTO departman (id, ad) VALUES
(1, 'Muhasebe'),
(2, 'İnsan Kaynakları'),
(3, 'Pazarlama'),
(4, 'IT'),
(5, 'Üretim'),
(6, 'Temizlik'),
(7, 'Güvenlik'),
(8, 'Yönetim'),
(9, 'Lojistik');


SELECT * FROM personel

CREATE TABLE musteri (
  id SERIAL PRIMARY KEY,
  ulke_id VARCHAR(2) NOT NULL,
  ad VARCHAR(50) NOT NULL,
  soyad VARCHAR(50) NOT NULL,
  email VARCHAR(50) NOT NULL UNIQUE,
  dogum DATE,
  kullaniciadi VARCHAR(50) NOT NULL UNIQUE,
  sifre VARCHAR(50) NOT NULL,
  bgcolor VARCHAR(7)
);
INSERT INTO musteri (ulke_id, ad, soyad, email, dogum, kullaniciadi, sifre, bgcolor) VALUES
('TR', 'Bülent', 'Muska', 'bulentmuska@msn.com', '1980-10-13', 'bulent', 'b0e75b7691b253f27451b953001b0fda', '#ffffff'),
('TR', 'Nuri', 'Çolak', 'nuric@hotmail.com', '1976-06-02', 'sap', '2d1b2a5ff364606ff041650887723470', '#ffcc00'),
('TR', 'Mete', 'Çağlayan', 'mete.caglayan@sap.com', '1976-01-05', 'sivribiber', 'c7d9950f607ee6574109a9fc8ebe4c0e', '#cccccc'),
('TR', 'Begüm', 'Güven', 'begum77@yahoo.com', '1977-11-08', 'wookie', '7eb8844fd48cc40732ef5ff47a1e6378', '#000000'),
('TR', 'Buket', 'Akçetin', 'buket.akcetin@klueber.de', '1978-06-22', 'bukle', '8128bb905f44b01f31bdce5052f7168b', '#000000'),
('TR', 'Cemal', 'Çinkılıç', 'cemal@doublekey.org', '1978-12-27', 'cemal', '35393c24384b8862798716628f7bc6f4', '#ffffff'),
('TR', 'Burak', 'Göreli', 'burak.goreli@diss.com', '1972-10-15', 'hummer', 'd6e4c2f87ffb3d1ea114d4dcc024b40d', '#000000'),
('TR', 'Okay', 'Alp', 'okay@gmail.com', '1974-07-02', 'okayalp', '8a21299df04e5d0d2666a1bac264f3bf', '#ffffff'),
('TR', 'Azra', 'Yalnız', 'azra@gmail.com', '1972-10-15', 'azrael', '827ccb0eea8a706c4c34a16891f84e7b', '#ffcc00'),
('TR', 'Oya', 'Başar', 'oyabas@hotmail.com', '1973-02-02', 'oyab', '243e1dab25756ff5371f2159ed435f47', '#000000'),
('TR', 'Kayıhan', 'Onuk', 'kayihano@hotmail.com', '1978-03-22', 'kaykay', '24e279a2b9cefd0ff8410f3d310d4524', '#000000'),
('TR', 'Tolga', 'Ader', 'tolgader@hotmail.com', '1972-10-15', 'tolgader', 'f094b3ba050b9686eb8e557eacfd01e6', '#cccccc'),
('TR', 'Tolga', 'Çavuşoğlu', 'tolga.cavusoglu@eczacibasi.com.tr', '1972-07-09', 'tolgac', '18cf6b1fcc6f34a15b7b553860ad705a', '#000000'),
('TR', 'Volkan', 'Özkoçak', 'master@gmail.com', '1970-10-18', 'volki', '089ac4682a780fd36a19a6279c977758', '#ffcc00'),
('UK', 'Melissa', 'Crawford', 'melcraw@mirc.co.uk', '1983-10-19', 'melcraw', '25d55ad283aa400af464c76d713c07ad', '#000000'),
('TR', 'Barış', 'Çekiç', 'baris.cekic@t-systems.com.tr', '1970-10-22', 'peace', 'd35a02eb49149450fb2fffc6e467eb37', '#cccccc'),
('DE', 'Horst', 'Müller', 'horst@gmail.com', '1970-07-07', 'horst', 'fb46aed9b51e53a33a2714a13a371c9a', '#ffcc00'),
('DE', 'Kurt', 'Frankfurter', 'kurtfrank@yahoo.com', '1971-05-13', 'kurtf', '9dca5e87630b9185169af2d17f5c11f4', '#ffffff'),
('TR', 'Yavuz', 'Çetin', 'yavuz.cetin@otherside.com', '1970-05-12', 'yavuz', '5195dacabbea185567e62b2bcdd6de7c', '#cccccc'),
('TR', 'Kerim', 'Çaplı', 'kerim.capli@otherside.com', '1960-08-01', 'kerimcapli', '5195dacabbea185567e62b2bcdd6de7c', '#ffffff');

SELECT * FROM musteri
CREATE TABLE siparis (
   id SERIAL PRIMARY KEY,
   tarih DATE,
   musteri_id INTEGER
);
INSERT INTO siparis (id, tarih, musteri_id) VALUES
(1, '2005-01-01', 18),
(2, '2005-01-01', 2),
(3, '2005-01-03', 2),
(4, '2005-01-04', 7),
(5, '2005-01-05', 9),
(6, '2005-01-05', 15),
(7, '2005-01-12', 20),
(8, '2005-04-04', 2),
(9, '2005-04-10', 1);
SELECT * FROM siparis
CREATE TABLE ulke (
    id SERIAL PRIMARY KEY,
    ad VARCHAR(2),
    orjinalad VARCHAR(50)
);
INSERT INTO ulke (ad, orjinalad) VALUES
('TR', 'Türkiye'),
('DE', 'Almanya'),
('UK', 'İngiltere'),
('JP', 'Japonya');

SELECT * FROM ulke 

 --ilk sipariş veren müşteriyi getir

SELECT * FROM siparis

SELECT musteri_id AS musteri
FROM siparis 
ORDER BY tarih
LIMIT 1;

--------------------------------------------------------
--------------------------------------------------------

--29_05 dersi

SELECT *
FROM personel p 

/* Çocuklar; elemanların adını, soyadını ve maaşını listelediğiniz ekranda 
küçük bir değişiklik istiyorum. Ad sütunununbaşlığı 'A', 
soyad sütununun başlığı ise 'S' olsun. Maaş sütununun başlığı 
yine 'MAAŞ' olarak kalabilir. 
*/
 SELECT 
  ad AS "A", -- tırnak içinde olunca büyük harfli olarak yazıyor
  soyad AS "S",
  maas
 FROM personel p 

--where
 SELECT * FROM personel p 
 WHERE ad = 'Mehmet' ;

SELECT ad , soyad , dogum
FROM personel p 
 WHERE dogum = '1978-11-01'

 SELECT * 
FROM personel p 
WHERE ad = 'Mehmet' 
AND   soyad= 'Ozman';

----------------------------------
----------------------------------------------
--30_05_dersi

--OR--

SELECT *
FROM personel
WHERE ad = 'Dilek'
OR ad = 'Mehmet';

-- Adı Mehmet veya Dilek olan ve
-- maaş 1400 TL'nin üzerinde olan çalışanların listesini istiyorum.
SELECT *
FROM personel
WHERE maas > 1400
AND (ad = 'Dilek'
OR ad = 'Mehmet');


-- Maaş 1000 TL ile 2000 TL arasında olan bütün çalışanların
-- id, ad, soyad ve maaş bilgilerini istiyorum. 
--Liste maaş tutarına göre sıralanmış olsun.
 
SELECT id,ad,soyad,maas
FROM personel
WHERE maas BETWEEN 1000 AND 2000
ORDER BY maas;

--1978de doğanlar

SELECT ad,soyad,dogum
FROM personel
WHERE dogum BETWEEN '1978-01-01' AND '1978-12-31'


/* ortalıkta 21 Aralık 2012 tarihinde Marduk gezegeninin gelip
dünyaya çarpacağına dair bazı söylentiler dolaşıyor. Bu konuda kendi
çapımda bir analiz yapmak istiyorum. Bu yüzden bana her bir çalışanın
ID'sini, adını, soyadını ve Marduk geldiğinde kaç gündür yaşıyor
olacağını içeren bir liste hazırlar mısınız?*/

SELECT id,ad,soyad,
('2012-12-21'-dogum)
AS gün_farkı
FROM personel

--in

-- İsmi Mehmet, Dilek veya Cengiz olan bütün çalışanları listeleyin. 
--Liste ad ve soyada göre sıralanmış olsun.

SELECT * 
FROM personel p 
WHERE ad IN ('Mehmet', 'Dilek', 'Cengiz')
ORDER BY ad,soyad

--like
SELECT * 
FROM personel p 
WHERE soyad LIKE '%oğlu'

SELECT * 
FROM personel p 
ORDER BY ad

SELECT * 
FROM personel p 
ORDER BY ad DESC 

SELECT ad, soyad, maas
FROM personel
ORDER BY ad DESC ,soyad DESC, maas ASC ;

--count


SELECT count(*) AS toplam
FROM personel p

--toplam maaş ödemesi ne kadar
--sum

SELECT sum(maas) AS toplam_maas
FROM personel


SELECT sum(maas) AS toplam_maas
FROM personel
WHERE ad = 'Mehmet'

-- Muhasebe departmanının maaşı

-- Muhasebe departmanının idsi
SELECT * FROM departman d
WHERE ad = 'Muhasebe' -- bu sorgu 1 verir

SELECT * FROM personel p


SELECT sum(maas) AS muhasebe_toplam_maas 
FROM personel p 
WHERE departman_id  = 1

SELECT sum(maas) AS muhasebe_toplam_maas 
FROM personel 
LEFT JOIN departman  ON personel.departman_id  = departman.id
WHERE ad = 'Muhasebe'

SELECT *
FROM personel 
LEFT JOIN departman  ON personel.departman_id  = departman.id
WHERE ad = ''

--------------------------------------
----------------------------------
--31_05_ders 

--sum 
--  her bir departmana nekadar maaş ödenecek
SELECT * FROM personel p

SELECT departman_id,
sum(maas) AS toplam_dep_maas
FROM personel 
GROUP BY departman_id 
ORDER BY departman_id 

--avg
--  her bir departmana ortalama nekadar maaş ödenecek

SELECT departman_id,
avg(maas) AS avg_dep_maas
FROM personel 
GROUP BY departman_id 
ORDER BY departman_id 

--round

SELECT departman_id,
round(avg(maas)) AS avg_dep_maas --round küsüratları yuvarla
FROM personel 
GROUP BY departman_id 
ORDER BY departman_id 


SELECT departman_id,
round(avg(maas),2) AS avg_dep_maas --virgülden sonra 2 hane
FROM personel 
GROUP BY departman_id 
ORDER BY departman_id 

--min max

--en yüksek maaş 

SELECT max(maas) AS max_maas
FROM personel

----en yüksek maaş alanın adı soyadı maaşı

SELECT ad, soyad, maas
FROM personel p
WHERE maas = (SELECT MAX(maas) FROM personel);

--en yüksek ile en düşük maaş farkı

SELECT (max(maas)-min(maas))
FROM personel

-----------------------------------------
-------------------------------------------
--10_06_sql

--59 ID’li personeli Almanya ya gönderip maaşına da
-- 100 Birim zam yapıldı. Veritabanındaki gerekli modifikasyonu yapalım


SELECT *FROM personel 

UPDATE personel 
SET 
	maas = maas + 100 ,
	ulke_id = 'DE'
WHERE id = 59 --NOT: eğer where koşulu olmadan yazılırsa tüm tablo SET 
-- ifadesindeki gibi değişmiş olurdu


CREATE TABLE haber (
   id SERIAL PRIMARY KEY,
   tarih DATE,
   baslik CHAR(50),
   metin TEXT,
   goruntu INTEGER
);

SELECT * FROM haber

--ozet field oluştur
ALTER TABLE haber 
ADD ozet char(100);

--ozet field tipini değiştir
ALTER TABLE haber
ALTER COLUMN ozet TYPE varchar(250) ;

--ozet field silmek için
--ALTER TABLE haber
--DROP COLUMN ozet;

--İNNER JOİN 
-- Bana her bir personelin ID’sini, adını ve soyadını; bunun yanı sıra 
--çalıştığı departmanın ID’sini ve adını bir arada listeleyip getirin.

SELECT *FROM personel p

SELECT *FROM departman d 


SELECT 
p.id,
p.ad,
p.soyad,
p.departman_id,
d.ad
FROM personel p 
INNER JOIN departman d 
ON p.departman_id = d.id 


---------------------------------------
----------------------------------------

--11_06_SQL
-- ÖNEMLİ nOT:
--Pratikte; COUNT,SUM gibi matematiksel komutlar söz konusu
--olduğunda,sayılan alan haricindeki (ÖRNE. COUNT(*))
--bütün alanları GROUP BY listesine dahil etmemiz gerekecektir.

-- İNNER JOİN

--Her bir personelin adını, soyadını ve ülkesinin ismini listeleyin. 
--Liste; ülke adı, personel adı ve personel soyadına göre sıralanmış olsun.

SELECT * FROM personel p 

SELECT * FROM ulke u  

SELECT 
u.ad AS ülke_adı,
p.ad,
p.soyad
FROM personel p 
INNER JOIN ulke u
ON u.ad= p.ulke_id
ORDER BY u.ad,p.ad,p.soyad

--Bana öyle bir liste hazırlayın ki, içinde her bir 
--ülkenin ID’si, ismi ve o ülkeden gelen personelin sayısı olsun.

SELECT 
u.id,
p.ulke_id ,
count(p.ulke_id)
FROM personel p 
INNER JOIN ulke u
ON u.ad= p.ulke_id
GROUP BY p.ulke_id ,u.id



SELECT
u.id AS ID,
u.ad AS ULKE,
count(p.id) AS top_calisan
FROM ulke u
INNER JOIN personel p
ON u.ad = p.ulke_id
GROUP BY u.id, u.ad


--Herbir departmanın ID’sini, adını ve o departmana ödenen 
--toplam maaşı tek bir liste içinde görmek istiyorum

SELECT * FROM departman d

SELECT * FROM personel p 


SELECT 
d.id,
d.ad,
sum(p.maas)
FROM departman d 
INNER JOIN personel p 
ON d.id = p.departman_id 
GROUP BY d.id ,d.ad

--maaş toplamına göre sırala

SELECT 
d.id,
d.ad,
sum(p.maas)
FROM departman d 
INNER JOIN personel p 
ON d.id = p.departman_id 
GROUP BY d.id ,d.ad
ORDER BY sum(p.maas) 

--Personele ödenen maaşları ülke bazında toplayıp listeleminizi istiyorum. 
--Çıktılar ülke ismine göre sıralanmış olsun

SELECT 
u.id,
u.ad,
sum(p.maas)
FROM
personel p 
INNER JOIN ulke u 
ON u.ad = p.ulke_id 
GROUP BY u.id,u.ad
ORDER BY u.ad

--Aylık maaşı 2.000 den fazla olan kişilerin
-- maaşlarının toplamını ülke bazında görmek istiyorum.
--Çıktı listesinde ülkenin ID si, adı ve maaş toplamı yer alsın.

SELECT 
u.id,
u.ad,
sum(p.maas)
FROM personel p 
INNER JOIN ulke u
ON u.ad = p.ulke_id 
WHERE maas  > 2000
GROUP BY u.id,u.ad

-- Departmanlara ödenecek toplam maaşları departman ID si
--ve ad bazında listelemenizi istiyorum. Ancak, bu listede
--sadece, toplam ödenecek maaş tutarı 10.000 in üzerinde
-- olan departmanlar yer alsın.

 SELECT * FROM departman d 
 SELECT * FROM personel p 
 
SELECT 
d.id,
d.ad,
sum(p.maas)
FROM personel p 
INNER JOIN departman d 
ON d.id = p.departman_id 
GROUP BY d.id, d.ad
HAVING sum(p.maas)> 10000



/*SELECT 
d.id,
d.ad,
sum(p.maas)
FROM personel p 
INNER JOIN departman d 
ON d.id = p.departman_id 
WHERE  maas > 2000
GROUP BY d.id, d.ad

SELECT 
d.id,
d.ad,
sum(p.maas)
FROM personel p 
INNER JOIN departman d 
ON d.id = p.departman_id 
GROUP BY d.id, d.ad
HAVING sum(p.maas)> 2000 
*/

--UNION

--Şirketimizde çalışan bütün personelin ve bütün müşterilerimizin 
--ad, soyad, E-Posta ve doğum günü bilgilerini 
--tek bir liste içinde görmek istiyorum.

SELECT 
ad,
soyad,
email,
dogum 
FROM personel p 
UNION 
SELECT 
ad,
soyad,
email,
dogum 
FROM musteri m 

--eğer müsteri tablosunda email değilde eposta fieldı olsaydı
--ozaman select müsteri kısmında eposta AS email yazarak devam ederiz

-----------------------------------------------
----------------------------------------------

--12_06_SQL

--Şirketimze ilk sipariş vermiş olan 
--müşterimizin özlük bilgilerini alabilir miyim?


SELECT * FROM musteri m 

SELECT * FROM siparis s 

SELECT *
FROM musteri m
WHERE id = (
			SELECT musteri_id AS Musteri
			FROM siparis s
			ORDER BY id
			LIMIT 1
			);

		
		
SELECT *
FROM musteri m
WHERE id = (
			SELECT musteri_id AS Musteri
			FROM siparis s
			ORDER BY tarih
			LIMIT 1
			);

		
		
 /*SELECT * 
FROM musteri m 
WHERE id IN (
    SELECT musteri_id
    FROM siparis
    WHERE tarih = (SELECT MIN(tarih) FROM siparis)
);
*/

--Şirketimize son sipariş vermiş olan müşterimizin 
--özlük bilgilerini alabilir miyim?

SELECT *
FROM musteri m
WHERE id = (
			SELECT musteri_id AS Musteri
			FROM siparis s
			ORDER BY id DESC 
			LIMIT 1
			);

--Şirketimze en yüksek maaşı alan kişinin özlük bilgilerini öğrenebilir miyim?
		
SELECT *FROM personel p 

SELECT max(maas) AS max_maas 
FROM personel 

SELECT * FROM personel 
WHERE maas = (SELECT max(maas) AS max_maas 
FROM personel)



--------------------------------------
------------------------------------------
--13_06_SQL

-- Şimdiye kadar en az 1 kez sipariş vermiş olan müşterilerin özlük bilgilerini
-- IN ve EXISTS kullanarak vermeni istiyorum

SELECT * FROM siparis s 

SELECT * FROM musteri m 

-- IN
SELECT *
FROM musteri m 
WHERE id IN 
    (SELECT DISTINCT musteri_id 
    FROM siparis)

--EXISTS
SELECT *
FROM musteri m
WHERE EXISTS 
    (SELECT 1 
    FROM siparis s
    WHERE m.id = s.musteri_id
    )






