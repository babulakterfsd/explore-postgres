-- Active: 1708927108696@@127.0.0.1@5432@test_db
select * from person

ALTER TABLE person
ALTER COLUMN email SET DEFAULT 'default@gmail.com';


  delete from person WHERE 
    id = 4

-- rename COLUMN
 ALTER TABLE person
  RENAME COLUMN person_id TO id

insert into person VALUES(3, 'Monir', 'Hossain', 23, false, '2021-03-12', 'monir@gmail.com')

alter table person
 alter column age set not NULL

 select email, count(email) from person
   GROUP BY email
   HAVING count(email) >= 1