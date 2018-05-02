    
CREATE TABLE people (
  name VARCHAR(30) NOT NULL,
  has_pet BOOLEAN NOT NULL,
  pet_name VARCHAR(30),
  pet_age INTEGER(10)
);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", TRUE, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Ahmed", TRUE, "Rockington", 100);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jacob", TRUE, "Misty", 10);

INSERT INTO people (name, has_pet)
VALUES ("Peter", false);

UPDATE people
SET has_pet = true, pet_name = "Franklin", pet_age = 2
WHERE name = "Peter";

DROP DATABASE IF EXISTS favorite_db;
-- Creates the "favorite_db" database --
CREATE DATABASE favorite_db;

USE favorite_db;

CREATE TABLE favorite_foods (
  -- Make a string column called "food" which cannot contain null --
  food varchar(30) NOT NULL,
  -- Make an numeric column called "score" --
  score integer(10) 
);

CREATE TABLE favorite_songs (
  -- Make a string column called "song" which cannot contain null --
  song varchar(45) NOT NULL,
  -- Make a string column called "artist" --
  artist varchar(80),
  -- Make an integer column called "score" --
  score INTEGER(10)
);


CREATE TABLE favorite_movies (
  -- Create a numeric column called "id" which automatically increments and cannot be null --
  id INTEGER NOT NULL AUTO_INCREMENT,
  -- Create a string column called "movie" which cannot be null --
  movie varchar(100) NOT NULL, 
  -- Create a boolean column called "five_times" that sets the default value to false if nothing is entered --
  five_times BOOLEAN DEFAULT false,
  -- Make an integer column called "score" --
  score INTEGER(10),
  -- Set the primary key of the table to id --
  PRIMARY KEY(id)
);

use favorite_db;

select * from favorite_foods;

INSERT INTO favorite_foods (food, score)
VALUES ("pizza", 8);

insert into favorite_foods (food, score)
values ("cheesesteaks", 10),
("watermelon", 10);

select * from favorite_movies;

insert into favorite_movies (movie, five_times, score)
values ("Pride and Prejudice", 1, 10),
("Shawshank Redemption", 1, 8),
("Titanic", 1, 10);

insert into favorite_songs (song, artist, score)
values ("Can't Take My Eyes Off of You", "Frankie Valli", 10),
("Adventure of a lifetime", "Coldplay", 8),
("Magic", "Coldplay", 9);

select * from favorite_songs;


create database programming_db;

use programming_db;

create table programming_languages (
  id INTEGER NOT NULL AUTO_INCREMENT,
  languages varchar(100) NOT NULL, 
  rating INTEGER(10),
  PRIMARY KEY(id)
);

insert into programming_languages (languages, rating)
values ("javascript", 10),
("css", 6),
("html", 10);

update programming_languages 
set languages = "Javascript" where id = 2;

update programming_languages 
set languages = "css" where id = 1;
	
select * from programming_languages;


create database music_db;

use music_db;

create table songs (
	id integer NOT NULL AUTO_INCREMENT,
    title varchar(500) NOT NULL,
    artist varchar(500),
    genre varchar(200),
    primary key (id));

Insert into songs (title, artist, genre)
Values ("And I", "Whitney Houston", "Pop"),
("Humble", "Kendrick Lamar", "Hip Hop"),
("DNA", "Kendrick Lamar", "Hip Hop"),
("New Rules", "Dua Lipa", "Pop"),
("Yellow", "Coldplay", "Pop"),
("Hello", "Adele", "Pop");
select * from songs;


Create database top_songsDB;


create table Top5000 (
	position integer NOT NULL, 
    artist varchar(200)  Null,
	title varchar(200)  Null, 
    year int null, 
    total_popularity decimal(5,3) null,
    US_popularity decimal(5,3) null ,
    UK_popularity decimal(5,3) null,
    eur_popularity decimal(5,3) null,
    world_popularity decimal(5,3) null,
    primary key(position));
    
    drop table Top5000;
    
    select * from Top5000;
    
create table TopAlbums (
	position integer NOT NULL, 
    artist varchar(200)  Null,
	title varchar(200)  Null, 
    year int null, 
    total_popularity decimal(5,3) null,
    US_popularity decimal(5,3) null ,
    UK_popularity decimal(5,3) null,
    eur_popularity decimal(5,3) null,
    world_popularity decimal(5,3) null,
    primary key(position));
    
    create database bamazon;
    
    use bamazon;
    
    create table products (
    item_id integer not null auto_increment,
    product_name varchar(120) not null,
    department_name varchar(120), 
    price decimal(19,2),
    stock_quantity integer,
    primary key(item_id));
    
    insert into products (product_name, department_name, price, stock_quantity)
    values ("Blue lame mini", "bottoms", 45.00, 3),
    ("70's Prada billow top", "vintage designer", 140.00, 1),
    ("60's Pucci one-piece swimsuit w. cover", "vintage designer", 180.00, 1),
    ("70's hoop skirt and shirt set", "vintage set", 60.00, 1),
    ("black pencil skirt", "bottoms", 60.00, 3),
    ("black halter", "tops", 28.00, 6),
    ("black-tie Jessica McCintock red skirt", "vintage designer", 90.00, 1),
    ("red and gold brocade floor length skirt", "vintage bottoms", 70.00, 1),
    ("80's Dolce & Gabanna LBD", "vintage designer", 200.00, 1),
    ("80's Nicole Miller LBD", "vintage designer", 180.00, 1);
    

    
CREATE DATABASE wizard_schools_db;
USE wizard_schools_db;

-- Created the table "schools" 
CREATE TABLE schools (
  id int AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY(id)
);

-- Inserted a set of records into the table
INSERT INTO schools (name) VALUES ("Hogwarts School of Witchcraft");
INSERT INTO schools (name) VALUES ("Castelobruxo");
INSERT INTO schools (name) VALUES ("Durmstrang Institute");
INSERT INTO schools (name) VALUES ("Beauxbatons Academy of Magic");

    
    
    
CREATE DATABASE seinfeld_db;
USE seinfeld_db;

-- Created the table "schools" 
CREATE TABLE actors (
  id int AUTO_INCREMENT,
  name varchar(30) NOT NULL,
  PRIMARY KEY(id)
);

-- Inserted a set of records into the table
INSERT INTO actors (name) VALUES ("elaine");
INSERT INTO actors (name) VALUES ("seinfeld");
INSERT INTO actors (name) VALUES ("george");
INSERT INTO actors (name) VALUES ("kramer");
    
alter table actors add column (
coolnessPoints int not null, 
attitude varchar(50) not null);
    
    
    
    
    
    