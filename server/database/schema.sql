create table user (
  id int unsigned primary key auto_increment not null,
  email varchar(255) not null unique,
  password varchar(255) not null
);

create table item (
  id int unsigned primary key auto_increment not null,
  title varchar(255) not null,
  user_id int unsigned not null,
  foreign key(user_id) references user(id)
);

create table category (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  name VARCHAR NOT NULL 
)

CREATE TABLE program (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR NOT NULL,
  synopsis VARCHAR NOT NULL,
  poster VARCHAR NOT NULL,
  country VARCHAR NOT NULL,
  year INT NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY(category_id) REFERENCES category(id)
)