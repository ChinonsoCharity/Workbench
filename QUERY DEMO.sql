-- select * from human;
-- select * from games;
 -- select * from gamepurchase;
 select * from persons;
 
 -- update Human
-- set  =23, name ='Shawn Micheal'
-- where humanId = 03;

-- to drop a column to an existing table
alter table games
drop column gameGenre;

-- to delete a row
delete from gamepurchase
where humanId = 2;

-- delete all in a table
delete from human;

-- to add a column t0 existing table
-- alter table games
-- add gameGenre varchar(45) default('None');

-- add the primary key
alter table Persons
add constraint PK_Person primary key (ID, LastName);

-- for SQLServer
alter table persons
Add primary key (ID);

-- remove primary key constraint from a table 
alter table persons
drop primary key;

-- for SQLserver
alter table persons
drop constraint PK_Person;



