/* Create table about the people and what they do here */
/* Create table about the people and what they do here */
CREATE TABLE Celebrity (id INTEGER PRIMARY KEY,
    Nick_name Text,
    Real_name Text,
    Nationality TEXT
    );
    
Create table Life(
id INTEGER PRIMARY KEY,
Ceb_id integer,
occupation TEXT null,
most_famous_products TEXT

);




CREATE table Marriage(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    person_id1 INTEGER,
    person_id2 Integer);



INSERT INTO Celebrity values
(1, 'Katty Perry', 'Katheryn Hudson', 'American'), (2, 'Natalie Portman', 'Neta-Lee Hershlag', 'American') ,(3, 'Demi Moore' ,'Demi Gene Guynes ', 'American'), (4,'Joaquin Phoenix' , 'Joaquín Rafael Bottom', 'American'), (5, 'Kit Harington' , 'Christopher Catesby Harington' , 'English') , (6, 'Julianne Moore', 'Julie Anne Smith', 'English'), (10, 'Meghan Markle' , 'Rachel Meghan Markle' ,'American'), (7, 'Emma Stone', 'Emily Jean Stone', 'American'), (8, 'Jamie Foxx', 'Eric Marlon Bishop', 'American') , (9,'Prince Harry' , 'Henry Charles Albert David' , 'English'), (11, 'Russell Brand' , 'Russell Edward Brand', 'English'), (12, 'Benjamin Millepied', 'Benjamin Millepied ' , 'French'),(13,'Ashton Kutcher','Christopher Ashton Kutcher', 'American'),(14,'Rooney Mara', 'Patricia Rooney Mara', 'American'), (15, 'Rose Leslie', 'Rose Eleanor Arbuthnot-Leslie', 'Scottish');


INSERT INTO Life values

(001, 1, 'Singer', 'Teenage Dream' ), (002, 2, 'Actress', 'Annihilation'), (003, 3 , 'Actress', 'G.I. Jane' ), (004, 4, 'ACtor', 'Joker'),(005, 5 , 'Actor' , 'Game of Thrones' ), (006, 6, 'Actress', 'The Woman in the Window' ), (007,7, 'Actress', 'Cruella'), (008, 8, 'Actor' ,'Project Power'), (009,9, 'Officer',null), (010, 10,'Actress', null), (011,  11, 'Actor','Get Him to the Greek'), (012, 12, 'Dancer', null), (013,13, 'Actor','The Guardian'), (014, 14, 'Actress', 'The Girl with the Dragon Tattoo'),(015, 15, 'Actress', 'The Last Witch Hunter');


INSERT INTO marriage(person_id1,person_id2) values

(1,11),(2,12),(3,13), (4,14), (5,15);

------------Showing Marriage of Celebrity

SELECT a.Real_name,a.Nick_name, b.Real_name , b.Nick_name FROM Marriage
    JOIN Celebrity a
    ON Marriage.person_id1 = a.id
    JOIN Celebrity b
    ON Marriage.person_id2 = b.id;
    
    
-----------Showing the Occupation of Celeb


select Cel.Nick_name,Cel.Real_name, l.occupation, l.most_famous_products 
from life l 
left outer join  Celebrity Cel on Cel.id = l.Ceb_id
