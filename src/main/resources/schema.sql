drop schema example;
create schema example;
create table example.CUSTOMERS
(
    id           int primary key auto_increment,
    name         varchar(255) not null,
    surname      varchar(255) not null,
    age          int          not null,
    phone_number long
);
create table example.ORDERS
(
    id           int primary key auto_increment,
    date         date         not null,
    customer_id  int,
    product_name varchar(255) not null,
    amount       int default 0,
    FOREIGN KEY (customer_id) REFERENCES example.CUSTOMERS (id)
);