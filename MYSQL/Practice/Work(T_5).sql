create database intractive_sql;
create table client_master(clientno varchar(6) primary key, name varchar(20) not null, address1 varchar(30), address2 varchar(30), city varchar(15), pincode int, state varchar(15), baldue int);
insert into client_master values("C00001", "Ivan Bayross", "A/14", "Worli", "Mumbai", 400054, "Maharashtra", 15000), ("C00002", "Mamta Muzumdar", "A/14", "Worli", "Madras", 780001, "Tamil Nadu", 0), ("C00003", "Chhaya Bankar", "A/14", "Worli", "Mumbai", 400057, "Maharashtra", 5000), ("C00004", "Ashwini Joshi", "A/14", "Worli", "Bangalore", 560001, "Karnataka", 0), ("C00005", "Hansel Colaco", "A/14", "Worli", "Mumbai", 400060, "Maharashtra", 2000), ("C00006", "Deepak Sharma", "A/14", "Worli", "Mangalore", 560050, "Karnataka", 0);
select * from client_master;

create table product_master(productno varchar(6) primary key, description varchar(15) not null, profitpercent int not null, unitmeasure varchar(10) not null, qtyonhand int not null, reorderlvl int not null, sellprice int not null, costprice int not null);
insert into product_master values("P00001", "T-Shirts", 5, "Piece", 200, 50, 350, 250), ("P0345", "Shirts", 6, "Piece", 150, 50, 500, 350), ("P06734", "Cotton Jeans", 6, "Piece", 100, 20, 600, 450), ("P07865", "Jeans", 5, "Piece", 100, 20, 750, 500), ("P07868", "Trousers", 2, "Piece", 150, 50, 850, 550), ("P07885", "Pull Overs", 2.5, "Piece", 80, 30, 700, 450), ("P07965", "Denim Shirts", 4, "Piece", 100, 40, 350, 250), ("P07975", "Lycra Tops", 5, "Piece", 70, 30, 300, 175), ("P08865", "Skirts", 5, "Piece", 75, 30, 450, 300);
select * from product_master;

create table salesman_master(salesmanno varchar(6) primary key, salesmanname varchar(20) not null, address1 varchar(30) not null, address2 varchar(30), city varchar(20), pincode int, state varchar(20), salant int not null, tgttoget int not null, ytdsales int not null, remarks varchar(60));
insert into salesman_master values("S00001", "Aman", "A/14", "Worli", "Mumbai", "400002", "Maharashtra", 3000, 100, 50, "Good"), ("S00002", "Omkat", "65", "Nariman", "Mumbai", "400001", "Maharashtra", 3000, 200, 100, "Good"), ("S00003", "Raj", "P-7", "Bandra", "Mumbai", "400032", "Maharashtra", 3000, 200, 100, "Good"),("S00004", "Ashish", "A/5", "Juhu", "Mumbai", "400044", "Maharashtra", 3500, 200, 150, "Good");
select * from salesman_master;

create table sales_order(orderno varchar(6) primary key, clientno varchar(6), orderdate date not null, delyaddr varchar(25), salesmanno varchar(6), delytype char(1) default "f", billyn char(1), delydate date, orderststud varchar(10), foreign key (clientno) references client_master(clientno), foreign key (salesmanno) references salesman_master(salesmanno));
desc sales_order;
insert into sales_order (orderno, clientno, orderdate, salesmanno, delytype, billyn, delydate, orderststud) values("O19001", "C00001", "2004-06-12", "S00001", "F", "N", "2004-07-20", "In Process"), ("O19002", "C00002", "2004-06-25", "S00002", "P", "N", "2004-06-27", "Cancelled"), ("O46865", "C00003", "2004-02-18", "S00003", "F", "Y", "2004-02-20", "Fulfilled"), ("O19003", "C00001", "2004-04-03", "S00001", "F", "Y", "2004-04-07", "Fulfilled"), ("O46866", "C00004", "2004-05-20", "S00002", "P", "N", "2004-05-22", "Cancelled"), ("O19008", "C00005", "2004-05-24", "S00004", "F", "N", "2004-07-26", "In Process");
select * from sales_order;

create table sales_order_details(orderno varchar(6), productno varchar(6), qtyordered int, qtydisp int, productrate int, foreign key (orderno) references sales_order(orderno), foreign key (productno) references product_master(productno));
desc sales_order_details;