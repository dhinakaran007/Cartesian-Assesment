create database customers;

use customers;

#creating tables

create table Customer(Customer_Id varchar(10));

create table Voucher(Voucher_Id varchar(10));

insert into Customer(Customer_Id)
values('Abhinash'), ('Vipin'), ('Mahesh'), ('Bijoy'), ('Bhabani'),('Ashutosh');

insert into Voucher(Voucher_Id)
values('ABXFH'), ('SDFGH'), ('ERTYY'), ('PPLKM');

show tables;

select * from Customer;

select * from Voucher;

with unique_id_1
as(select *,row_number() over(order by Customer_Id) rr from Customer),
unique_id_2 as(select *,row_number() over(order by Voucher_Id) rr from Voucher)
    
select Customer_Id Customer_Key,Voucher_Id Gift_Voucher_Key
from unique_id_1 c1
join unique_id_2 c2 on c1.rr=c2.rr









