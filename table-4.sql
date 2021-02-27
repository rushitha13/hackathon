create table Stocks(
	id int identity(1,1),
	name varchar(50),
)

create table Market(
	opened BIT DEFAULT 0
)

create table Orders(
	custid int,
	stockid int,
	orderedDate date,
	quantity int,
	price float,
	orderType varchar(20),
	executedQty int,
	executedPrice float,
	orderStatus varchar(30),
)
create table customer(
	customerid int identity(1,1) primary key,
	firstname varchar(255),
	lastname varchar(255),
	age int,
	contact_number varchar(255)
);
create table admin(
	adminid int identity(1,1) primary key,
	firstname varchar(255),
	lastname varchar(255),
	role varchar(255),
	contact_number varchar(255)
);
alter table Orders add constraint custRef foreign key(custid) references customer (customerid);
alter table Stocks add primary key(id)
alter table Orders add constraint stockRef foreign key(stockid) references Stocks(id);
insert into customer values('ram','ram',10,'1111111111');
insert into customer values('syam','syam',20,'222222222');
insert into customer values('krishna','krishna',30,'333333333')
insert into admin values('admin1','admin1','admin','1111111111')
insert into stocks values('DBS')
select * from Orders
insert into Orders values(1,1,'2021-2-21',50,150,'Limit',0,0,'PLACED');
insert into Orders values(2,1,'2021-2-21',50,null,'Market',0,0,'PLACED');
insert into Orders values(3,1,'2021-2-21',50,140,'Limit',0,0,'PLACED');