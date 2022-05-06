/* What does the app's SQL look like? */

create table students(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    First_name text,
    Last_name text,
    Major text);
    
insert into students(First_name, Last_name, Major) values
('Chau', 'Tran', 'Bioinformatics'),('Lan Anh', 'Pham', 'Business Inofrmatics'), ('Wade', 'William', 'Computer Science') ,('Dave', 'Harris', 'Biochemistry'), ('Thomas', 'Robinson' , 'Artificial Intelligennce');

select * from students;

-----------------After Updating information


update students set Major = 'AI' 
where Major like '%Artificial Intelligennce%';

select * from students;



--------After deleting the chosen row
delete from students where id = 2;

select * from students;
