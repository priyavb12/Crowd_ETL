create table contacts(
	contact_id int primary key not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	email varchar(50) not null
				);
select * from contacts;

create table category(
	category_id varchar(20) primary key not null,
	category varchar(50) not null	
	);
select * from category;

create table subcategory(
	subcategory_id varchar(20) primary key not null,
	subcategory varchar(50) not null	
	);
select * from subcategory;

create table campaign(
	cf_id int primary key not null,
	contact_id int not null,   
	company_name varchar(100) not null,
	description text not null,
	goal numeric(10,2) not null,
	pledged numeric(10,2) not null,
	outcome	varchar(50) not null,
	backers_count int not null,
	country varchar(10) not null,	
	currency varchar(10) not null,
	launched_date date not null,
	end_date date not null,
	category_id	varchar(10) not null,
	subcategory_id varchar(10) not null,
	foreign key(contact_id) references contacts(contact_id),
	foreign key(category_id) references category(category_id),
	foreign key(subcategory_id) references subcategory(subcategory_id)
	);
select * from campaign;




