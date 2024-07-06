--03_06_practice

--//Bir kütüphanedeki kitapların bilgilerini depolamak için bir tablo oluşturun. 
--Tablo aşağıdaki sütunlara sahip olmalıdır:

book_id (Integer)
title (Varchar(80))
author (Varchar(50))
published_date (Date)
genre (Varchar(20))


CREATE TABLE books (
book_id INT ,
title Varchar(80),
author Varchar(50),
published_date Date,
genre Varchar(20)
);

--2-"books" tablosuna aşağıdaki kitap bilgilerini ekleyin:
--İd:100
--Başlık: "Savaş ve Barış"
--Yazar: "Lev Tolstoy"
--Yayınlanma Tarihi: "1869-01-01"
--Tür: "Roman"


INSERT INTO books VALUES (100,'Savaş ve Barış','Lev Tolstoy','1869-01-01','Roman');

--3-"books" tablosuna aşağıdaki kitapların bilgilerini ekleyin:

--Kitap 1:
--İd:101
--Başlık: "1984"
--Yazar: "George Orwell"
--Yayınlanma Tarihi: "1949-06-08"
--Tür: "Distopya"

--Kitap 2:
--İd:102
--Başlık: "Bülbülü Öldürmek"
--Yazar: "Harper Lee"
--Yayınlanma Tarihi: "1960-07-11"
--Tür: "Roman"

--Kitap 3:
--İd:103
--Başlık: "Yabancı"
--Yazar: "Albert Camus"
--Yayınlanma Tarihi: "1942-01-01"
--Tür: "Roman"


INSERT INTO books VALUES (101,'1984', 'George Orwell', '1949-06-08', 'Distopya'),
						 (102,'Bülbülü Öldürmek', 'Harper Lee', '1960-07-11', 'Roman'),
						 (103,'Yabancı', 'Albert Camus', '1942-01-01', 'Roman');

/*
4-"books" tablosuna yalnızca 
başlık "Suç ve Ceza" ve yazar "Fyodor Dostoyevski"  
başlık "Martin Eden" , yazar "Jack London" , tür "Roman" 
alanlarını
 içeren yeni kitap bilgileri ekleyin.
 Diğer alanlar için varsayılan değerler kullanılmalıdır.
 */

INSERT INTO books (title,author) VALUES ('Suç ve Ceza','Fyodor Dostoyevski');
INSERT INTO books (title,author,genre) VALUES ('Martin Eden','Jack London','Roman');

SELECT * FROM books

-- Öğrenci bilgileri için bir tablo oluşturun. 

--student_id (Primary Key, Integer, otomatik artan)
--first_name (Metin 50 karakter, Boş olamaz)
--last_name (Metin 30 karakter, Boş olamaz)
--date_of_birth (Tarih, Boş olamaz)
--email (Metin 50 karakter, Boş olamaz, Benzersiz)
--phone_number (Metin 15 karakter)
--gender (Metin 8 karakter, 'male' veya 'female' olmalı)

CREATE TABLE students (
student_id SERIAL PRIMARY KEY ,
first_name varchar(50) NOT NULL,
last_name varchar(30) NOT NULL,
date_of_birth date NOT NULL,
email varchar(50) NOT NULL UNIQUE,
phone_number varchar(15),
gender varchar(8)CHECK (gender IN ('male', 'female'))
);


INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('John', 'Doe', '1998-05-15', 'john@example.com', '555-1234', 'male');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Jane', 'Smith', '2000-08-22', 'jane@example.com', '555-5678', 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Michael', 'Brown', '1999-03-30', 'michael@example.com', '555-9876', 'male');
--INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
--VALUES ('Emily', 'Johnson', NULL, 'emily@example.com', '555-2222', 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('David', 'Lee', '2001-10-18', 'david@example.com', '555-4444', 'male');
--INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
--VALUES ('Maria', 'Garcia', '1997-12-25', NULL, '555-7777', 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Christopher', 'Martinez', '2002-06-05', 'chris@example.com', '555-6666', 'male');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Sarah', 'Wilson', '1998-08-14', 'sarah@example.com', NULL, 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('James', 'Taylor', '2000-04-03', 'james@example.com', '555-3333', 'male');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Jennifer', 'Adams', '1999-09-20', ' ', '555-8888', 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Daniel', 'Hernandez', '2001-07-10', 'daniel@example.com', '555-1111', 'male');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Amanda', 'Thomas', '2000-01-28', 'amanda@example.com', '555-9999', 'female');
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Robert', 'White', '2003-02-14', 'robert@example.com', '555-5555', NULL);
INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
VALUES ('Megan', 'Scott', '1998-11-05', 'megan@example.com', '555-7777', 'female');
--INSERT INTO students(first_name,last_name,date_of_birth,email,phone_number,gender) 
--VALUES ('Kevin', 'Garcia', '1999-05-30', 'kevin@example.com', '555-2222', 'erkek');


SELECT * FROM students 

--INSERT INTO students 
--VALUES(1,'Kevin', 'Garcia', '1999-05-30', 'kevin@example.com', '555-2222', 'male')
--primary key olduğu için id 1 oldğu için tabloya eklemedi 
--serial unique olamsını sağlamaz 

SELECT first_name FROM students s 

SELECT first_name, last_name, date_of_birth 
FROM students;

--7-Bir öğrencinin adres bilgilerini depolayan bir tablo oluşturun. 
--Bu tablo, her öğrenci için yalnızca bir tane adres bilgisine sahip olacak. 
--Tablonun aşağıdaki sütunlara sahip olması gerekiyor:

--address_id (Primary Key, Integer, otomatik artan)
--student_id (Öğrenci tablosuna referans, Boş olamaz)
--city (Varchar(50))
--country (Varchar(15))

CREATE TABLE student_address(
address_id SERIAL PRIMARY KEY,--NOT NULL,UNIQUE,kimlik bilgisi
student_id INTEGER NOT NULL UNIQUE,
city VARCHAR(50),
country VARCHAR(15),
FOREIGN KEY(student_id) REFERENCES students(student_id)
); --FOREIGN KEY UNIQUE ve NOT NULL olmak zorunda değil


SELECT * FROM student_address ;

INSERT INTO student_address (student_id, city, country) 
VALUES (11, 'New York', 'USA');


INSERT INTO student_address (student_id, city, country) 
VALUES (12, 'Paris', 'FR');

--INSERT INTO student_address (student_id, city, country) 
--VALUES (17, 'London', 'UK');

--INSERT INTO student_address (student_id, city, country) 
--VALUES (14, 'Amsterdam', 'NL');

--INSERT INTO student_address (student_id, city, country) 
--VALUES (24, 'New York', 'USA');


SELECT * FROM students s 

--student --PK --parent tablosu
--student_adres --FK --child tablosu-bağımlıdır
--foreign key in referans aldğı tablo parent tablosudur

CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER DEFAULT 0,
    email VARCHAR(100)
);

INSERT INTO teachers (name, age, email) VALUES
('John Doe', 25, 'john.doe@example.com'),
('Jane Smith', 30, 'jane.smith@example.com'),
('Michael Brown', 28, 'michael.brown@example.com'),
('Emily Johnson', 22, 'emily.johnson@example.com'),
('David Lee', 35, 'david.lee@example.com'),
('Maria Garcia', 27, 'maria.garcia@example.com'),
('Christopher Martinez', 29, 'christopher.martinez@example.com'),
('Sarah White', 26, 'white@example.com'),
('James Taylor', 31, 'james.taylor@example.com'),
('Jennifer Adams', 33, 'jennifer.adams@example.com'),
('Daniel Hernandez', 28, 'daniel.hernandez@example.com'),
('Amanda Thomas', 24, 'amanda.thomas@example.com'),
('Robert White', 32, 'white@example.com'),
('Megan Scott', 29, 'scott@example.com'),
('Kevin Scott', 27, 'scott@example.com');

SELECT * FROM teachers;


INSERT INTO teachers(name,email) VALUES('Jack','jack@mail.com')

--teachers tablosundaki kayıtları isimlere göre alfabetik sıralayın

SELECT *
FROM teachers t 
ORDER BY name

SELECT *
FROM teachers t 
ORDER BY age DESC 


SELECT *
FROM teachers t 
ORDER BY email  ASC ,age DESC 

SELECT *
FROM teachers t 
ORDER BY age DESC, email  ASC 


SELECT *
FROM teachers t 
ORDER BY length(name) DESC 


SELECT name,length(name)
FROM teachers t 
ORDER BY length(name) DESC 


SELECT *,length(name)
FROM teachers t 
ORDER BY length(name) DESC 

--------------------------------
---------------------------------
--05_06_practice


 CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    city VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    department VARCHAR(50)
    );

INSERT INTO employees (name, age, city, email, phone_number, department) VALUES
('John Doe', 25, 'New York', 'john.doe@example.com', '555-1234', 'IT'),
('Jane Smith', 30, 'London', 'jane.smith@example.com', '555-5678', 'Finance'),
('Michael Brown', 28, 'Paris', 'michael.brown@mail.com', '555-9876', 'HR'),
('Emily Johnson', 22, 'Berlin', 'emily.johnson@example.com', '555-2222', 'Marketing'),
('David Lee', 35, 'Tokyo', 'david.lee@mail.com', '555-4444', 'IT'),
('Maria Garcia', 27, 'Moscow', 'garcia@mail.com', '555-7777', 'Sales'),
('Christopher Martinez', 29, 'Sydney', 'christopher.martinez@example.com', '555-6666', 'Finance'),
('Sarah White', 26, 'Toronto', 'white@example.com', '555-8888', 'HR'),
('James Taylor', 31, 'Los Angeles', 'james.taylor@example.com', '555-3333', 'IT'),
('Jennifer Adams', 33, 'Rome', 'jennifer.adams@example.com', '555-1111', 'Marketing'),
('Daniel Hernandez', 28, 'Seoul', 'daniel.hernandez@example.com', '555-9999', 'Sales'),
('Amanda Thomas', 24, 'Rio de Janeiro', 'amanda.thomas@example.com', '555-5555', 'Finance'),
('Robert White', 32, 'Mumbai', 'white@example.com', '555-4444', 'IT'),
('Megan Scott', 29, 'Cairo', 'megan.scott@example.com', '555-7777', 'Sales'),
('Kevin Garcia', 27, 'Mexico City', 'garcia@mail.com', '555-2222', 'Marketing');


SELECT *
FROM employees ;

--1-employees tablosundaki farklı emailleri listeleyiniz

SELECT DISTINCT email
FROM employees ;

--2-employees tablosundaki ilk 5 Kaydı görüntüleyin

SELECT *
FROM employees
LIMIT 5;

--3-employees tablosundaki 6. kayıttan itibaren 5 Kaydı  görüntüleyin

SELECT *
FROM employees
OFFSET 5
LIMIT 5;

--4-employees tablosundaki son 3 Kaydı(id ye göre) görüntüleyin

SELECT *
FROM employees
ORDER BY id DESC
LIMIT 3;

--5-employees tablosundaki departmanı 'IT' Olan Çalışanları görüntüleyin

select *
FROM employees e
WHERE department = 'IT'

--6-employees tablosundaki yaşı 30 dan Büyük Olan Çalışanları görüntüleyin

select *
FROM employees e
WHERE age > 30

--7-employees tablosundaki yaşı 30 dan küçük veya
 --şehri 'New York' olan çalışanları görüntüleyin

SELECT * 
FROM employees 
WHERE age < 30 OR city = 'New York';

--8-employees tablosundaki 
--departmanı 'Sales' ve yaşı 30 dan küçük çalışanları görüntüleyin

select *
FROM employees e
WHERE department = 'Sales' and
age < 30

--9-employees tablosundaki 
--departmanı 'Sales','HR' veya 'IT' olan çalışanları görüntüleyin

SELECT * 
FROM employees 
WHERE  department = 'Sales' OR department = 'HR' OR department = 'IT';

--10-employees tablosundaki 
--departmanı 'Sales','HR' ve 'Finance' olmayan çalışanları görüntüleyin

select *
FROM employees e
WHERE department NOT IN('Sales', 'HR', 'Finance')


SELECT *
FROM employees 
WHERE department!='Sales' AND department!='HR' AND department!='Finance';


--11-employees tablosundaki 
--departmanı 'Sales','HR' veya 'IT' olan çalışanların
--isim, yaş, departmanlarını
--yaşlarına göre sıralayarak görüntüleyin

select name, age, department
FROM employees e
WHERE department IN ('Sales', 'HR', 'IT')
ORDER BY age

--12-employees tablosundaki 
--yaşı 25 ve 30 arasında olan çalışanların
--isim ve yaşlarını görüntüleyin

SELECT name, age
FROM employees e
WHERE age BETWEEN 25 AND 30


--2.yol
SELECT name, age
FROM employees
WHERE age>=25 AND age<=30;--[25,30]


----12-b-employees tablosundaki 
--yaşı 25 ten küçük veya 30 dan büyük olan çalışanların
--isim ve yaşlarını görüntüleyin


SELECT name,age  
FROM employees
WHERE  age < 25 OR age > 30;-- -infinite,25) OR (30,infinite

--2.yol
SELECT name, age
FROM employees
WHERE age NOT BETWEEN 25 AND 30;--[25,30]

--13-employees tablosundaki 
--email alanı 'mail.com' ile biten çalışanların
--isim ve emaillerini
--isme göre artan görüntüleyin

SELECT name, email 
FROM employees 
WHERE email LIKE '%@mail.com'
ORDER BY name ;

SELECT name, email 
FROM employees 
WHERE email ILIKE '%@mail.com' --ILİKE büyük küçük harf mail olanları getirir
ORDER BY name ;

--14-employees tablosundaki 
--ismi 'an' hecesini içeren çalışanların
--isimlerini görüntüleyin

SELECT name
FROM employees 
WHERE email LIKE '%an%'

--14-b 2. harf a,  3.harf n olanları

SELECT name
FROM employees 
WHERE email LIKE '_an%'

--15-employees tablosundaki
--yaşları 30 dan büyük olan tüm çalışanları siliniz

DELETE
FROM employees
WHERE  age > 30;

--16-employees tablosundaki
--"Moscow" şehrindeki tüm çalışanları siliniz

DELETE
FROM employees
WHERE city = 'Moscow'

--17-employees tablosundaki e-posta adresi
 --"john" ile başlayan tüm çalışanları siliniz

DELETE
FROM employees
WHERE email LIKE 'john%'

--18-employees tablosundaki
--departmanının 2 .harfi 'R' olan tüm çalışanları siliniz

DELETE 
FROM employees 
WHERE department LIKE '_R%';

--19-employees tablosundaki tüm çalışanları siliniz

DELETE FROM employees ;

SELECT * FROM teachers t 

--20-teachers tablosundaki tüm kayıtlarını boşaltınız

--DELETE FROM teachers; delete where ile bazı satırlarıda silebilrz.DML.satır satır silme işlemi yapar

TRUNCATE TABLE teachers ; --where ile kullanılmaz.DDL.tabloyu tamamen siler sonra boş tablo verir.daha hızlı çalışır.

SELECT * FROM teachers t 

--21-tabloyu oluşturup, kayıtları ekleyin.

CREATE TABLE personal (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    city VARCHAR(50),
    email VARCHAR(100),
    salary NUMERIC(10, 2),
    department VARCHAR(50)
);

INSERT INTO personal (name, age, city, email, salary, department) VALUES
('John Doe', 25, 'New York', 'john.doe@example.com', 60000, 'IT'),
('Jane Smith', 30, 'London', 'jane.smith@example.com', 75000, 'Finance'),
('Michael Brown', 28, 'Paris', 'michael.brown@example.com', 50000, 'HR'),
('Emily Johnson', 22, 'Berlin', 'emily.johnson@example.com', 45000, 'Marketing'),
('David Lee', 35, 'Tokyo', 'david.lee@example.com', 85000, 'IT'),
('Maria Garcia', 27, 'Moscow', 'maria.garcia@example.com', 55000, 'Sales'),
('Christopher Martinez', 29, 'Sydney', 'christopher.martinez@example.com', 65000, 'Finance'),
('Sarah Wilson', 26, 'Tokyo', 'sarah.wilson@example.com', 48000, 'HR'),
('James Taylor', 31, 'London', 'james.taylor@example.com', 70000, 'IT'),
('Jennifer Adams', 33, 'New York', 'jennifer.adams@example.com', 72000, 'Marketing'),
('Maria Darlin', 26, 'Moscow', 'maria.darlin@example.com', 55000, 'Sales'),
('Rod Johnson', 28, 'Berlin', 'rod.johnson@example.com', 45000, 'Marketing');

--22-Tüm çalışanların toplam maaşını bulunuz

SELECT sum(salary) AS total_salary FROM personal p 

--23-Tüm çalışanların ortalama maaşını bulunuz

SELECT ROUND(AVG(salary),2) ort_maas FROM personal;

--24-IT departmanında en yüksek maaşı bulunuz

SELECT MAX(salary) FROM personal WHERE department='IT';

--25-New York, Berlin veya Tokyoda çalışanların sayısını bulunuz

SELECT COUNT(*) FROM personal WHERE city IN ('New York','Berlin','Tokyo');

--26-Tüm çalışanların adlarını büyük harfle görüntüleyiniz.

SELECT UPPER(name) FROM personal;


--27-İsim ve şehir alanlarını aynı sütunda listeleyiniz.

SELECT CONCAT(name,' from ', city) name_city FROM personal;

--28-E-posta adreslerinde '@example.com' alan Adını '@company.com' ile değiştirerek görüntüleyiniz.

SELECT REPLACE(email, '@example.com','@company.com') FROM personal;


--29-Her bir departmandaki ortalama maaşı görüntüleyiniz.

SELECT department ,AVG(salary)
FROM personal
GROUP BY department;

--NOT: gruplama yapıldığında SELECTTEN sonra gruplanan sütun ismi ya da 
--başka bir sütunu sadece AGGREGATE fonk ile kullanabiliriz.

--30- ortalama maaşı 60,000 in üzerindeki departmanları görüntüleyiniz.

SELECT department ,AVG(salary)
FROM personal
GROUP BY department
HAVING AVG(salary)>60000;

--31- yaşı 30 dan küçük olan çalışanların departmanlarını
--eğer departmanın ortalama maaşı 60,000 in üzerinde ise  görüntüleyiniz.

SELECT department ,AVG(salary)
FROM personal
WHERE age<30
GROUP BY department
HAVING AVG(salary)>60000;

--32- John Doe adlı çalışanın maaşını 65000 olarak güncelleyin.

UPDATE personal 
SET salary=65000
WHERE name='John Doe';

SELECT * FROM personal;


