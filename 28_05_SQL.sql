-- green page
-- order by konusu
-- customer tablosunu score değerlerini küçükten büyüğe göre sıralayarak getir
SELECT * FROM customers1 
ORDER BY score ASC --DEFAULT ASC yazmasanda olur
--postgreSQLde null değerler en sonda , mySQL de en üstte
--null üste görmek istersek
SELECT * FROM customers1 
ORDER BY score ASC NULLS FIRST 
-- customer tablosunu score değerlerini  büyükten küçüğe göre sıralayarak getir
SELECT * FROM customers1 
ORDER BY score DESC 
--null altta görmek istersek
SELECT * FROM customers1 
ORDER BY score DESC  NULLS LAST 
-- countryi alfabetik olarak sırala score u büyükten küçüğe sırala
-- countryi alfabetik sıraladı daha sonra score göre contryleri kendi arasnda sıraladı
SELECT * 
FROM customers1
ORDER BY country ASC, score DESC 
-- tavsiye edilmez ama kullanılabiilir field yerine sıradaki numarası yazılabilir
SELECT * 
FROM customers1
ORDER BY 4 ASC, 5 DESC 


--limit
-- belirttiğmz liimit kadar satır getirir
SELECT * 
FROM customers1 
LIMIT 2

-- offset ve limit kullanımı 
--offset yazılan rakam kadar satırı atlayıp sonrakileri getirmeyi sağlar
-- ilk 2 satırı atlayıp sonraki 2 satırı döndür
SELECT * 
FROM customers1 
OFFSET 2
LIMIT 2















