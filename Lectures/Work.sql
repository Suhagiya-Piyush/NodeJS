=> Create CLIENT_MASTER :  
-- create table client_master(clientno varchar(6), name varchar(20), address1 varchar(30), address2 varchar(30), city varchar(15), pincode int, state varchar(15), baldue int);
=> Insert Data :
-- insert into client_master values("C00001", "Ivan Bayross", "A/14", "Worli", "Mumbai", 400054, "Maharashtra", 15000), ("C00002", "Mamta Muzumdar", "A/14", "Worli", "Madras", 780001, "Tamil Nadu", 0), ("C00003", "Chhaya Bankar", "A/14", "Worli", "Mumbai", 400057, "Maharashtra", 5000), ("C00004", "Ashwini Joshi", "A/14", "Worli", "Bangalore", 560001, "Karnataka", 0), ("C00005", "Hansel Colaco", "A/14", "Worli", "Mumbai", 400060, "Maharashtra", 2000), ("C00006", "Deepak Sharma", "A/14", "Worli", "Mangalore", 560050, "Karnataka", 0);



=> Create Product_master :
-- create table product_master(productno varchar(6), description varchar(15), profitpercent int, unitmeasure varchar(10), qtyonhand int, reorderlvl int, sellprice int, costprice int);
=> Insert Data : 
--  insert into product_master values("P00001", "T-Shirts", 5, "Piece", 200, 50, 350, 250), ("P0345", "Shirts", 6, "Piece", 150, 50, 500, 350), ("P06734", "Cotton Jeans", 6, "Piece", 100, 20, 600, 450), ("P07865", "Jeans", 5, "Piece", 100, 20, 750, 500), ("P07868", "Trousers", 2, "Piece", 150, 50, 850, 550), ("P07885", "Pull Overs", 2.5, "Piece", 80, 30, 700, 450), ("P07965", "Denim Shirts", 4, "Piece", 100, 40, 350, 250), ("P07975", "Lycra Tops", 5, "Piece", 70, 30, 300, 175), ("P08865", "Skirts", 5, "Piece", 75, 30, 450, 300);


=> Create Salesman_master : 
-- create table salesman_master(salesmanno varchar(6), salesmanname varchar(20), address1 varchar(30), address2 varchar(30), city varchar(20), pincode int, state varchar(20), salant int, tgttoget int, ytdsales int, remarks varchar(60));
=> Insert Data :
-- insert into salesman_master values("S00001", "Aman", "A/14", "Worli", "Mumbai", "400002", "Maharashtra", 3000, 100, 50, "Good"), ("S00002", "Omkat", "65", "Nariman", "Mumbai", "400001", "Maharashtra", 3000, 200, 100, "Good"), ("S00003", "Raj", "P-7", "Bandra", "Mumbai", "400032", "Maharashtra", 3000, 200, 100, "Good"),
-- ("S00004", "Ashish", "A/5", "Juhu", "Mumbai", "400044", "Maharashtra", 3500, 200, 150, "Good");


* Exercise on retrieving records from a table :

a. Find out the names of all the clients.
b. Retrieve the entire contents of the Client_master table.
c. Retrieve the list of names, city and the state of all the clients.
d. List the various products available from the Product_master table.
e. List all the clients who are located in Mumbai.
f. Find the names of salesmen who have a salary equal to Rs.3000.


* Exercise on updating records in a table :

a. Change the city of ClientNo 'C00005' to 'Bangalore'.
b. Change the BalDue of ClientNo 'C00001' to Rs.1000.
c. Change the cost price of 'Trousers' to Rs.950.00.
d. Change the city of the salesman to Pune.