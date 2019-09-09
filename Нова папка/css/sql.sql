        
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
        
        
INSERT INTO shops (Trading_Point, Address, Name_shop, phone_number)
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
        
        
INSERT INTO Trainer (company_id, first_name, last_name, middle_name, qualification, tel_namber, Email)
VALUES	('1', 'Monica', 'Landry', 'Curtis', 'молодший тренер','+380662210002', 'wenzlaff@sbcglobal.net'),
		('3', 'Іван', 'Пупкін', 'Baxter', 'тренер консультант','+380662210003', 'rnelson@msn.com'),
		('5', 'Sandra', 'Hicks', 'Cortez', 'тренер консультант','+380662210004', 'sokol@msn.com'),
		('7', 'Fiona', 'Rose', 'Bonilla', 'тренер продавець', '+380662210005', 'roamer@outlook.com'),
		('2', 'Paul', 'Ochoa', 'Mullen', 'тренер майстер', '+380662210006', 'bigmauler@yahoo.ca'),
		('4', 'Jaqueline', 'Watson', 'Page', 'тренер старший майстер', '+380662210007', 'sassen@gmail.com'),
		('6', 'Mira', 'Bradshaw', 'Adams', 'тренер консультант', '+380662210008', 'zwood@aol.com'),
		('9', 'Baylee', 'Harmon', 'Leblanc', 'тренер спеціаліст' ,'+380662210009', 'jhardin@gmail.com'),
		('8', 'Caden', 'Wolfe', 'Gentry', ' тренерпродавець', '+380662210010', 'heidrich@live.com'),
		('10', 'Jimena', 'Perry', 'Price', 'старший майстер', '+380662210011', 'jdhedden@yahoo.ca');


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
        
        
INSERT INTO Workers (shops_id, first_name, last_name, middle_name, Post, skills, Seller_of_the_month, tel_namber, Email,Start_date,Date_of_birth)
VALUES	('1', 'Monica', 'Landry', 'Curtis', 'молодший спеціаліст', 'ремонт не складних телефонів', 'Ні','+380662210002', 'wenzlaff@sbcglobal.net','2017-02-24', '2017-03-29'),
		('3', 'Luke', 'Hebert', 'Baxter', 'продавець консультант', 'продаж, консультація', 'Так','+380662210003', 'rnelson@msn.com','2017-07-23', '2017-08-28'),
		('5', 'Sandra', 'Hicks', 'Cortez', 'консультант', 'консультація', 'Ні','+380662210004', 'sokol@msn.com','2017-08-04', '2017-09-09'),
		('7', 'Fiona', 'Rose', 'Bonilla', 'продавець', 'продаж', 'Ні','+380662210005', 'roamer@outlook.com','2017-11-11', '2017-11-16'),
		('2', 'Paul', 'Ochoa', 'Mullen', 'майстер', 'ремонт складних телефонів ', 'Ні','+380662210006', 'bigmauler@yahoo.ca','2018-02-13', '2018-03-18'),
		('4', 'Jaqueline', 'Watson', 'Page', 'старший майстер', 'ремонт телефонів любої складності', 'Так','+380662210007', 'sassen@gmail.com','2018-05-11', '2018-06-16'),
		('6', 'Mira', 'Bradshaw', 'Adams', 'продавець консультант', 'продаж, консультація', 'Так','+380662210008', 'zwood@aol.com','2018-06-02', '2018-07-07'),
		('9', 'Baylee', 'Harmon', 'Leblanc', 'молодший спеціаліст', 'ремонт, продаж, консультація', 'Ні','+380662210009', 'jhardin@gmail.com','2018-07-07 07:20:27', '2018-08-12'),
		('8', 'Caden', 'Wolfe', 'Gentry', 'продавець', 'продаж', 'Ні','+380662210010', 'heidrich@live.com','2018-09-13', '2018-10-18'),
		('10', 'Jimena', 'Perry', 'Price', 'старший майстер', 'ремонт телефонів любої складності', 'Так','+380662210011', 'jdhedden@yahoo.ca','2018-10-23', '2018-10-28');
        
        
        
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
              
        
INSERT INTO Applications (company_id, Workers_id, Trading_point, Chain_of_Shops, Data_time)
VALUES	('5', '9', 'some request 1','Алло', 'Гіпермаркет', '2017-01-26'),
		('1', '1', 'some request 2', 'Розетка', 'Гіпермаркет', '2017-06-25'),
		('2', '3', 'some request 3', 'Мобілочка', 'Гіпермартоп', '2017-07-06'),
		('3', '4', 'some request 4', 'Xhiomi', 'Гіпермармега', '2017-11-13'),
		('8', '5', 'some request 5', 'Яблуко', 'Гіпермарточка', '2018-01-15'),
		('9', '8', 'some request 6', 'Samsung', 'Гіпермарлінія', '2018-04-13'),
		('10', '10', 'some request 7', 'Ельдорадо', 'Гіпермармега', '2018-05-04'),
		('4', '6', 'some request 8', 'Смарт', 'Гіпермарсіч', '2018-06-09'),
		('6', '7', 'some request 9', 'Жук', 'Гіпермарнет', '2018-08-15'),
		('7', '2', 'some request 10', 'Фокстрот', 'Гіпермарфон', '2018-08-25');    
        
        
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
                
        
INSERT INTO Test (Course_id, Completion_date_of, tests, Data_time, theme)
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

        
        
        