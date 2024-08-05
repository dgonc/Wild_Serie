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
  name VARCHAR(150) NOT NULL 
);

create table program (
  id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  synopsis TEXT NOT NULL,
  poster VARCHAR(255) NOT NULL,
  country VARCHAR(150) NOT NULL,
  year INT NOT NULL,
  category_id INT NOT NULL,
  FOREIGN KEY(category_id) REFERENCES category(id)
);