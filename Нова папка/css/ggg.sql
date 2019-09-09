CREATE TABLE Company
(
  company_id int IDENTITY (1,1),
  name_company varchar(50) ,
  owner varchar(50) ,
  affiliates varchar(50) 

  CONSTRAINT [PK_company_id] PRIMARY KEY CLUSTERED (company_id ASC)
);

INSERT INTO Company (affiliates, name_company, owner)
VALUES	('вул. Хотинську 3', 'Просвіта', 'Landry'),
		('вул. Кам''янську 5', 'Техно', 'Hebert'),
		('вул. Юрія Поправки 12', 'Soft-Jorn',  'Hicks'),
		('вул. Августина Волошина 7', 'Soft-Serve', 'Rose'),
		('вул. Новокодацьку 17', 'Microsoft',  'Ochoa'),
		('вул. Кучмин Яр 9', 'Смарт', 'Watson'),
		('вул. Миколи Голего 23', 'Mobile', 'radshaw'),
		('вул. Левка Мацієвича 10', 'Блендер', 'Harmon'),
		('вул. Парково-Сирецьку 13', 'Softvel',  'Wolfe'),
		('вул. Антона Цедіка 15', 'XoboTech',  'Perry');   

CREATE TABLE Product
(
  Product_id int IDENTITY (1,1),
  prise int ,
  type varchar(50) ,
  company_id int ,

  CONSTRAINT PK_Product_id PRIMARY KEY CLUSTERED (Product_id ASC),
  CONSTRAINT FK_company_id FOREIGN KEY (company_id)  REFERENCES Company (company_id)
);

INSERT INTO Product (company_id, prise, type)
VALUES	('4', '3','айфон'),
		('5', '8','куфон'),
		('8', '1','пифон'),
		('9', '10','мафон'),
		('10', '6','лофон'),
		('6', '7','дафон'),
		('7', '9','тифон'),
		('3', '2','тефон'),
		('2', '4','нефон'),
		('1', '5','рофон'); 

CREATE TABLE shops
(
  shops_id int IDENTITY (1,1),
  Address varchar(50) ,
  Name_shop varchar(50) ,
  Chain_of_Shops varchar(100) ,
  Trading_Point varchar(100) ,
  
  CONSTRAINT PK_shops_id PRIMARY KEY CLUSTERED (shops_id ASC)
);

INSERT INTO shops (Trading_Point, Address, Name_shop, Chain_of_Shops)
VALUES	('ТРЦ', 'вул. Тичини 8', 'Алло', 'Гіпермаркет'), 
		('Киоск', 'вул. Гетьмана Петра Дорошенка 6', 'Розетка', 'Гіпермаркет'),
		('Магазин', 'вул. Марійки Підгірянки 13', 'Мобілочка', 'Гіпермартоп'),
		('Киоск', 'вул. Крайківського 41', 'Xhiomi', 'Гіпермармега'),
		('Киоск', 'вул. Б.Хмельницького 2', 'Яблуко', 'Гіпермарточка'),
		('ТРЦ', 'вул. Ленкавського 12', 'Samsung', 'Гіпермарлінія'),
		('Магазин', 'вул. І. Макуха 23', 'Ельдорадо', 'Гіпермармега'),
		('Киоск', 'вул. Слави Стецько 11', 'Смарт', 'Гіпермарсіч'),
		('Магазин', 'вул. Княгинин 7', 'Жук', 'Гіпермарнет'),
		('ТРЦ', 'вул. Кармелюка 8', 'Фокстрот', 'Гіпермарфон');  

CREATE TABLE Trainer
(
  trainer_id int IDENTITY (1,1),
  last_name varchar(50) ,
  first_name varchar(50) ,
  middle_name varchar(50) ,
  tel_namber int ,
  Email varchar(50) ,
  qualification varchar(100) ,
  company_id int ,
  
  CONSTRAINT PK_trainer_id PRIMARY KEY CLUSTERED (trainer_id ASC),
  CONSTRAINT FK_companyn_id FOREIGN KEY (company_id)  REFERENCES Company (company_id)
);

INSERT INTO Trainer (company_id, first_name, last_name, middle_name, qualification, tel_namber, Email)
VALUES	('1', 'Monica', 'Landry', 'Curtis', 'молодший тренер','0662210002', 'wenzlaff@sbcglobal.net'),
		('3', 'Іван', 'Пупкін', 'Baxter', 'тренер консультант','0662210003', 'rnelson@msn.com'),
		('5', 'Sandra', 'Hicks', 'Cortez', 'тренер консультант','0662210004', 'sokol@msn.com'),
		('7', 'Fiona', 'Rose', 'Bonilla', 'тренер продавець', '0662210005', 'roamer@outlook.com'),
		('2', 'Paul', 'Ochoa', 'Mullen', 'тренер майстер', '0662210006', 'bigmauler@yahoo.ca'),
		('4', 'Jaqueline', 'Watson', 'Page', 'тренер старший майстер', '0662210007', 'sassen@gmail.com'),
		('6', 'Mira', 'Bradshaw', 'Adams', 'тренер консультант', '0662210008', 'zwood@aol.com'),
		('9', 'Baylee', 'Harmon', 'Leblanc', 'тренер спеціаліст' ,'0662210009', 'jhardin@gmail.com'),
		('8', 'Caden', 'Wolfe', 'Gentry', ' тренерпродавець', '0662210010', 'heidrich@live.com'),
		('10', 'Jimena', 'Perry', 'Price', 'старший майстер', '0662210011', 'jdhedden@yahoo.ca');

CREATE TABLE Deliveries
(
  deliveries_id int IDENTITY (1,1),
  shops_id int ,
  Product_id int ,
  
  CONSTRAINT PK_deliveries_id PRIMARY KEY CLUSTERED (deliveries_id ASC),
  CONSTRAINT FK_shops_id FOREIGN KEY (shops_id)  REFERENCES shops (shops_id),
  CONSTRAINT FK_Product_id FOREIGN KEY (Product_id)  REFERENCES Product (Product_id)
);

INSERT INTO deliveries (Product_id, shops_id)
VALUES	('4', '3'),
		('5', '8'),
		('8', '1'),
		('9', '10'),
		('10', '6'),
		('6', '7'),
		('7', '9'),
		('3', '2'),
		('2', '4'),
		('1', '5'); 

CREATE TABLE Worcers
(
  Workers_id int IDENTITY (1,1),
  last_name varchar(50) ,
  first_name varchar(50) ,
  middle_name varchar(50) ,
  tel_namber varchar(50) ,
  Email varchar(50) ,
  Date_of_birth date ,
  Post varchar(50) ,
  Seller_of_the_month varchar(50) ,
  Start_date date ,
  shops_id int ,
  
  CONSTRAINT PK_Workers_id PRIMARY KEY CLUSTERED (Workers_id ASC),
  CONSTRAINT FK_shopsn_id FOREIGN KEY (shops_id)  REFERENCES shops (shops_id)
);

INSERT INTO Worcers (shops_id, first_name, last_name, middle_name, Post, Seller_of_the_month, tel_namber, Email, Start_date, Date_of_birth)
VALUES	('1', 'Monica', 'Landry', 'Curtis', 'молодший спеціаліст',  'Ні','+380662210002', 'wenzlaff@sbcglobal.net','2017-02-24', '2017-03-29'),
		('3', 'Luke', 'Hebert', 'Baxter', 'продавець консультант',  'Так','+380662210003', 'rnelson@msn.com','2017-07-23', '2017-08-28'),
		('5', 'Sandra', 'Hicks', 'Cortez', 'консультант',  'Ні','+380662210004', 'sokol@msn.com','2017-08-04', '2017-09-09'),
		('7', 'Fiona', 'Rose', 'Bonilla', 'продавець',  'Ні','+380662210005', 'roamer@outlook.com','2017-11-11', '2017-11-16'),
		('2', 'Paul', 'Ochoa', 'Mullen', 'майстер',  'Ні','+380662210006', 'bigmauler@yahoo.ca','2018-02-13', '2018-03-18'),
		('4', 'Jaqueline', 'Watson', 'Page', 'старший майстер',  'Так','+380662210007', 'sassen@gmail.com','2018-05-11', '2018-06-16'),
		('6', 'Mira', 'Bradshaw', 'Adams', 'продавець консультант', 'Так','+380662210008', 'zwood@aol.com','2018-06-02', '2018-07-07'),
		('9', 'Baylee', 'Harmon', 'Leblanc', 'молодший спеціаліст', 'Ні','+380662210009', 'jhardin@gmail.com','2018-07-07 07:20:27', '2018-08-12'),
		('8', 'Caden', 'Wolfe', 'Gentry', 'продавець', 'Ні','+380662210010', 'heidrich@live.com','2018-09-13', '2018-10-18'),
		('10', 'Jimena', 'Perry', 'Price', 'старший майстер', 'Так','+380662210011', 'jdhedden@yahoo.ca','2018-10-23', '2018-10-28');
 

CREATE TABLE Course
(
  Course_id int IDENTITY (1,1),
  trainer_id int ,
  
  CONSTRAINT PK_Course_id PRIMARY KEY CLUSTERED (Course_id ASC),
  CONSTRAINT FK_trainern_id FOREIGN KEY (trainer_id)  REFERENCES Trainer (trainer_id)
);

INSERT INTO Course (trainer_id)
VALUES	('5'),
		('6'),
		('1'),
		('2'),
		('3'),
		('8'),
		('4'),
		('9'),
		('10'),
		('7');

CREATE TABLE Application
(
  Applications_id int IDENTITY (1,1),
  Knowledge_and_skills varchar(50) ,
  Chain_of_Shops varchar(100) ,
  Trading_point varchar(100) ,
  Data_time date ,
  company_id int ,
  Workers_id int ,
  
  CONSTRAINT PK_Applications_id PRIMARY KEY CLUSTERED (Applications_id ASC),
  CONSTRAINT FK_companyns_id FOREIGN KEY (company_id)  REFERENCES Company (company_id),
  CONSTRAINT FK_Workersns_id FOREIGN KEY (Workers_id)  REFERENCES Worcers (Workers_id)
);

INSERT INTO Application (company_id, Workers_id, Trading_point, Chain_of_Shops, Data_time, Knowledge_and_skills)
VALUES	('5', '9', 'Алло', 'Гіпермаркет', '2017-01-26', 'ремонт не складних телефонів'),
		('1', '1',  'Розетка', 'Гіпермаркет', '2017-06-25', 'продаж, консультація'),
		('2', '3', 'Мобілочка', 'Гіпермартоп', '2017-07-06', 'консультація'),
		('3', '4', 'Xhiomi', 'Гіпермармега', '2017-11-13', 'продаж'),
		('8', '5', 'Яблуко', 'Гіпермарточка', '2018-01-15', 'ремонт складних телефонів '),
		('9', '8', 'Samsung', 'Гіпермарлінія', '2018-04-13', 'ремонт телефонів любої складності'),
		('10', '10', 'Ельдорадо', 'Гіпермармега', '2018-05-04', 'продаж, консультація'),
		('4', '6', 'Смарт', 'Гіпермарсіч', '2018-06-09', 'ремонт, продаж, консультація'),
		('6', '7', 'Жук', 'Гіпермарнет', '2018-08-15', 'продаж'),
		('7', '2', 'Фокстрот', 'Гіпермарфон', '2018-08-25', 'ремонт телефонів любої складності');    

CREATE TABLE Articles
(
  articles_id int IDENTITY (1,1),
  Temes varchar(500) ,
  Not_obligatory_lit varchar(500) ,
  trainer_id int ,
  Course_id int ,

  CONSTRAINT PK_articles_id PRIMARY KEY CLUSTERED (articles_id ASC),
  CONSTRAINT FK_trainerm_id FOREIGN KEY (trainer_id)  REFERENCES Trainer (trainer_id),
  CONSTRAINT FK_Coursen_id FOREIGN KEY (Course_id)  REFERENCES Course (Course_id)
);

INSERT INTO Articles (trainer_id, Course_id, Temes, Not_obligatory_lit)
VALUES	('7', '1', 'загальні мобільні технології', 'специфікації телефонів'),         
		('8', '3', 'специфікації телефонів', 'навички продажу'),                
		('6', '8', 'навички продажу', 'загальні мобільні технології'),              
		('2', '10', 'навички продажу', 'специфікації телефонів'),              
		('1', '9', 'загальні мобільні технології', 'специфікації телефонів'),             
		('3', '6', 'специфікації телефонів', 'навички продажу'),                      
		('4', '7', 'специфікації телефонів', 'загальні мобільні технології'),               
		('5', '4', 'загальні мобільні технології', 'специфікації телефонів'),              
		('9', '5', 'навички продажу', 'загальні мобільні технології'),                 
		('10', '2', 'специфікації телефонів', 'навички продажу');  

CREATE TABLE Visiting_the_tests
(
  Visiting_the_tests_id int IDENTITY (1,1),
  Course_id int ,
  Workers_id int ,
  
  CONSTRAINT PK_Visiting_the_tests_id PRIMARY KEY CLUSTERED (Visiting_the_tests_id ASC),
  CONSTRAINT FK_Coursem_id FOREIGN KEY (Course_id)  REFERENCES Course (Course_id),
  CONSTRAINT FK_Workersm_id FOREIGN KEY (Workers_id)  REFERENCES Worcers (Workers_id)
);

INSERT INTO Visiting_the_tests (Course_id, Workers_id)
VALUES	('4', '3'),
		('5', '8'),
		('8', '1'),
		('9', '10'),
		('10', '6'),
		('6', '7'),
		('7', '9'),
		('3', '2'),
		('2', '4'),
		('1', '5');    

CREATE TABLE Test
(
  tests_id int IDENTITY (1,1),
  theme varchar(50) ,
  Data_time date,
  Completion_date_of_tests date ,
  Course_id int ,
  
  CONSTRAINT PK_tests_id PRIMARY KEY CLUSTERED (tests_id ASC),
  CONSTRAINT FK_Courses_id FOREIGN KEY (Course_id)  REFERENCES Course (Course_id)
);

INSERT INTO Test (Course_id, Completion_date_of_tests, Data_time, theme)
VALUES	('2', '2017-03-29', '2017-03-29', 'специфікації телефонів'),    
		('4', '2017-08-28', '2017-08-28', 'навички продажу'),           
		('2', '2017-09-09', '2017-09-09', 'загальні мобільні технології'),
		('4', '2017-11-16', '2017-11-17', 'специфікації телефонів'),    
		('5', '2018-03-18', '2018-03-18', 'специфікації телефонів'),    
		('2', '2018-06-16', '2018-06-16', 'навички продажу'),           
		('4', '2018-07-07', '2018-07-07', 'загальні мобільні технології'),
		('3', '2018-08-12', '2018-08-12', 'специфікації телефонів'),    
		('6', '2018-10-18', '2018-10-18', 'загальні мобільні технології'),
		('3', '2018-10-28', '2018-10-28', 'навички продажу');      

CREATE TABLE Results_test
(
  Results_test_id int IDENTITY (1,1),
  points int ,
  Rating varchar(50) ,
  Maximum_rating int ,
  Workers_id int ,
  tests_id int ,
  
  CONSTRAINT PK_Results_test_id PRIMARY KEY CLUSTERED (Results_test_id ASC),
  CONSTRAINT FK_Workerss_id FOREIGN KEY (Workers_id)  REFERENCES Worcers (Workers_id),
  CONSTRAINT FK_tests_id FOREIGN KEY (tests_id)  REFERENCES Test (tests_id)
  );        

INSERT INTO Results_test (tests_id, Workers_id, Rating, points, Maximum_rating)
VALUES	('10', '8', '4', '9', '15'),
		('8', '2', '2', '12', '15'),
		('1', '4', '9', '2', '15'),
		('2', '6', '5', '13', '15'),
		('4', '3', '6', '7', '15'),
		('5', '5', '7', '6', '15'),
		('6', '7', '8', '4', '15'),
		('7', '9', '1', '15', '15'),
		('9', '10', '10', '2', '15'),
		('3', '1', '3', '10', '15');  