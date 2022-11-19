drop database compny;
create database compny;
use compny;


create table Products (Product_ID int primary key,
					   Product_Name varchar(40) not null,
					   Product_Type varchar(40) not null,
			           Quantity int not null);

insert into Products(Product_ID, Product_Name,Product_Type, Quantity)
values (1231, 'Watch','Electric',50),
	   (1232, 'Mobile','Electric',100),
       (1233, 'Cream','beauty',150),
       (1234, 'Chargers','Electric',77),
       (1235, 'Shirts','clothes',85),
       (1236, 'Jogers','shoes',34),
       (1237, 'Bags','uniforms',71),
       (1238, 'Perfumes','beauty',334);

select * from compny.Products;


create table Customers (C_ID int primary key,
						Contact int not null,
                        Email_Address varchar(45) not null,
                        Location varchar(45) not null,
                        F_Name varchar(45) not null,
						L_Name varchar(45) not null);

insert into Customers (C_ID,Contact, Email_Address, Location, F_Name,L_Name)
values (0070, 682, 'tht@gmail.com','Lahore','Tayyab','Hassan'),
	   (0071, 683, 'dgfas@gmail.com','Hafizabad','Ali','khan'),
       (0072, 541, 'vxcesr@gmail.com','Karachi','Ahmad','razaq'),
       (0073, 378, 'yujf@gmail.com','Lahore','thakur','khan'),
       (0074, 451, 'nhtdg@gmail.com','Quetta','parizad','drame wala'),
       (0075, 321, 'qwerafd@gmail.com','Islamabad','shoki','yar'),
       (0076, 145, 'mgffsd@gmail.com','Lahore','paa','razaq'),
       (0077, 987, 'qwre@gmail.com','Hafizabad','faheema','charsi');
select * from compny.Customers;


create table sale (sale_ID int primary key,
				   sale_qty int not null,
                   sale_date varchar(45) not null);

insert into sale (sale_ID,sale_qty,sale_date)
values (12345,10,'Jan'),
	   (12346,20,'Feb'),
       (52315,30,'Mar'),
       (12326,40,'Apr'),
       (12347,50,'May'),
       (12348,60,'Jun'),
       (12349,70,'July'),
       (12340,80,'Aug');
select * from compny.sale;  


create table Manufacturers (M_ID int primary key,
							M_Name varchar(45) not null,
                            M_Location char(30) not null,
                            M_Contact int not null);

insert into Manufacturers(M_ID,M_Name, M_Location, M_Contact)
values (963,'THT','Lahore',1234),
	   (953,'TDFST','HFD',1235),
       (923,'ASDFDF','Lahore',1236),
       (913,'CVXB','KARACHI',1237),
       (943,'TERTT','PESHAWAR',1238),
       (463,'KUF','Lahore',1239),
       (263,'SGF','MULTAN',1230),
       (969,'VCXB','HAFIZABAD',1211);

select * from compny.Manufacturers;



alter table Customers add Gender char(10) not null;
select * from compny.Customers;

# alter table Customers modify Product_ID rename to ID;












                