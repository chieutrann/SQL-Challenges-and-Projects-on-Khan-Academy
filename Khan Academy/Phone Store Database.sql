Create table Store(Id integer, Items text, price integer, size integer, color text);

Insert into Store values(100, 'Galaxy S21', 550, 15, 'Blue');
Insert into Store values(101, 'Galaxy S21 Ultra ', 650, 17, 'White');
Insert into Store values(110, 'Galaxy S22', 99.99, 16, 'Green');
Insert into Store values(111, 'Galaxy S22+', 299.9, 18, 'Sky-Blue');
Insert into Store values(112, 'Galaxy S22 Ultra', 349.9, 19, 'Red');
Insert into Store values(108, 'Galaxy S21 FE',199, 15,'White');
Insert into Store values(120, 'Galaxy Z',349, 15, 'Blue');
Insert into Store values(121, 'Galaxy Z Flip3', 369,15 , 'Blue');
Insert into Store values(091, 'Galaxy S20', 599.99,15 , 'Blue');
Insert into Store values(081, 'Galaxy A53', 349.5, 16, 'Black');
Insert into Store values(085, 'Galaxy A32', 249.15, 15.5, 'Black');
Insert into Store values(071, 'Galaxy A13', 189.15, 14.5, 'Green');
Insert into Store values(061, 'Galaxy A03s', 159.99, 13, 'Black');
Insert into Store values(093, 'Galaxy S20 Ultra', 600, 18, 'Black');
Insert into Store values(051, 'Galaxy Note10', 225.15, 15.5, 'Black');

select *from Store
order by price;
select count(id) as total_items from Store;

select  min(price) as Minimum_price, round(avg(price),2) as average_price, max(price) as Maximum_price from Store;

-- Which Color occur the most in the table

SELECT       color
    FROM    Store
    GROUP BY color
    ORDER BY COUNT(*)  desc
    LIMIT   1;
-- Which Color occur the least in the table
SELECT       color
    FROM    Store
    GROUP BY color
    ORDER BY COUNT(*) 
    LIMIT   2;
    


