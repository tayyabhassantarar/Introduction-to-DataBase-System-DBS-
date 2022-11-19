drop database WeddingDress;
create database WeddingDress;   -- Task# 1
 
use WeddingDress;
CREATE TABLE Customer(			-- Task# 2
	CustomerId int primary key,
	CName varchar(10) Not null,
	CAge int not null,
	CAddrs varchar(20) NOT NULL,
	CContactNumber varchar(25)
);

insert into Customer(CustomerId,CName,CAge,CAddrs,CContactNumber)  -- Task# 3
values  (1, 'Ayesha', 24, 'Johar Town', '0300-1234567'),
		(4, 'Ahmad', 29, 'Wapda Town', '0333-1234567'),
		(6, 'Rameen', 27, 'DHA',' '),
		(2, 'Amina', 20, 'Model Town', '0321-1234567'),
		(3, 'Kashif', 18, 'Gulberg', '0313-1234567') ;
        

create table Designer(				-- Task# 4
	DesignerID int primary key, 
    DName varchar(15) NOT NULL , 
    DCategory varchar(20) NOT NULL, 
    DContactNumber varchar(25)
);

insert into Designer(DesignerID,DName, DCategory, DContactNumber)  -- Task# 5
values  (100, 'MariaB', 'Unstitched Ladies', '0300-7654321'),
		(101, 'Charcoal', 'Men Dressing', '0333-7654321'),
		(102, 'Sana Safinaz', 'Unstitched Ladies', '0321-7654321'),
		(103, 'Khaadi', 'Unstitched Ladies', '0345-7654321'),
		(104, 'Oxford', 'Warm Cloths', '0310-7654321' );


create table CustomerDesigner(					-- Task# 6
	CDID int AUTO_INCREMENT primary key,
    CustomerID int NOT NULL, 
    DesignerID int NOT NULL,
    DressType varchar(20) NOT NULL,
    Priority varchar(25) Default 'Normal',
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerId)  -- Insert foreign key within a table 
    );  

alter table CustomerDesigner add constraint practice            -- ADD FOEIGN KEY by alter command
foreign key(DesignerID) references Designer (DesignerID);

insert into CustomerDesigner(CDID, CustomerID, DesignerID, DressType, Priority)   	-- Task# 7
values  (1, 1, 103, 'Sari', 'Normal'),
		(2, 1, 102, 'Fancy Suit', 'Normal'),
		(3, 1, 103, 'Fancy Suit', 'Urgent'),
		(4, 4, 101, 'Waistcoat', 'Urgent'),
		(5, 4, 104, 'Sweater', 'Urgent'),
		(6, 6, 100, 'Fancy Suit', 'Normal'),
		(7, 2, 100, 'Winter Suit', 'Normal'),
		(8, 6, 100, 'Winter Suit', 'Urgent'),
		(9, 3, 104, 'Kurta', 'Normal'),
		(10, 3, 104, 'Sweater', 'Normal');


select count(CustomerID) from CustomerDesigner;   -- Task# 8

select CustomerID, count(CDID) from CustomerDesigner group by CustomerID;      -- Task# 9




 