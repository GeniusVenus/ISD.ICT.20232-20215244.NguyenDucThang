#show databases;
#create database aims;
use aims;

create table product (
	id int not null,
    title varchar(100) not null,
    price int not null,
    category varchar(50) not null,
    imageURL varchar(50),
    quantity int,
    primary key (id)
);

create table cart (
	id int not null,
    product_id int not null,
    quantity int not null,
    price int not null,
    primary key (id),
    foreign key (product_id) references product(id)
);

create table OrderMedia (
	id int not null,
    cart_id int,
    shipping_fees int not null,
    primary key (id),
    foreign key (cart_id) references cart(id)
);

create table invoice (
	id int not null,
    order_id int,
    VAT int,
    totalAmount float,
    primary key (id),
    foreign key (order_id) references OrderMedia(id)
);

create table transactionInfo (
	id int not null,
    invoice_id int,
    total_fee float, 
    stt varchar(50),
    pay_method varchar(50),
    tm time,
    dt date,
    content varchar(300),
    primary key (id),
    foreign key (invoice_id) references invoice(id)
)
