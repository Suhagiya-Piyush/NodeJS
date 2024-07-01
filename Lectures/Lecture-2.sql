
=> Insert Single Data in The Table : insert into TableName (FildName) Values (FildValue);
-- insert into user(firstname, lastname, age) values ("John", "Peter", 22);
-- insert into user values ("Kuldeep", "Yadav", 23);
=> Insert Data Only Seledted Collums :
-- insert into user (firstname, lastname) values ("Shivam", "Dube");
-- insert into user (firstname, age) values ("Kohli", 35);
	
=> Insert Multiple Data : 
-- insert into user(firstname, lastname, age) values ("Rohit", "Sharma", 34), 
--                                                   ("Surya", "Yadav", 26), 
--                                                   ("Jasprit", "Bumrah", 21), 
--                                                   ("Axar", "Patel", 18);
-- insert into user values ("Rohit", "Sharma", 34), 
--                         ("Surya", "Yadav", 26), 
--                         ("Jasprit", "Bumrah", 21), 
--                         ("Axar", "Patel", 18);
=> Insert Multiple Data But Only Seledted Collums :
-- insert into user(firstname, lastname) values ("Rohit", "Sharma"), 
--                                              ("Surya", "Yadav"), 
--                                              ("Jasprit", "Bumrah"), 
--                                              ("Axar", "Patel");

=> Read Data :
-- select * from user;
-- select firstname from user;
-- select firstname, age from user;
-- select firstname as "FullName", age from user;
-- select firstname "Hello", age from user;
-- select *, age from user;
-- select concat(firstname, " ", lastname) as "FullName", age from user;