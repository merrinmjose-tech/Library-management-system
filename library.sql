create database library;
use library;
create table author (author_id int primary key, author_name varchar(30));
create table books (book_id int primary key, book_name varchar(30), author_id int, foreign key(author_id) references author (author_id));
create table customer (customer_id int primary key, custormer_name varchar(30));
create table borrowing (borrow_id int primary key, book_id int, customer_id int, borrow_date date, return_date date, foreign key(book_id) references books(book_id), foreign key (customer_id) references customer(customer_id));
