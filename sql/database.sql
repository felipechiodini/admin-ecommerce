DROP DATABASE ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE `group`(
    id int unsigned auto_increment,
    name VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE user(
    id int unsigned auto_increment,
    id_group int unsigned,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    login VARCHAR(255),
    password VARCHAR(225),
    PRIMARY KEY(id),
    FOREIGN KEY(id_group) REFERENCES `group`(id)
);

CREATE TABLE `group_has_permission`(
    id int unsigned auto_increment,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    password VARCHAR(225),
    PRIMARY KEY(id)
);

CREATE TABLE permission(
    id int unsigned auto_increment,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    password VARCHAR(225),
    PRIMARY KEY(id)
);

CREATE TABLE address(
    id int unsigned auto_increment,
    id_user int unsigned,
    complement VARCHAR(255),
    street VARCHAR(255),
    cep VARCHAR(255),
    number int,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user) REFERENCES user(id)
);

CREATE TABLE telephone(
    id int unsigned auto_increment,
    id_user int unsigned,
    number int unsigned,
    ddd int unsigned,
    code int unsigned,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user) REFERENCES user(id)
);

CREATE TABLE coupon(
    id int unsigned auto_increment,
    active int,
    name VARCHAR(255),
    code VARCHAR(255),
    discount int,
    PRIMARY KEY(id)
);

CREATE TABLE user_has_coupon(
    id int unsigned auto_increment,
    id_user int unsigned,
    id_coupon int unsigned,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user) REFERENCES user(id)
);

CREATE TABLE product(
    id int unsigned auto_increment,
    name VARCHAR(255),
    price int,
    PRIMARY KEY(id)
);

CREATE TABLE image(
    id int unsigned not null auto_increment,
    id_product int unsigned,
    base_64 text,
    PRIMARY KEY(id),
    FOREIGN KEY(id_product) REFERENCES product(id)
);

CREATE TABLE role(
    id int unsigned not null auto_increment,
    name varchar(255),
    PRIMARY KEY(id)
);

CREATE TABLE job(
    id int unsigned not null auto_increment,
    id_address int unsigned not null,
    id_role int unsigned not null,
    active int,
    name VARCHAR(255),
    requirements varchar(255),
    activities varchar(255),
    differential varchar(255),
    PRIMARY KEY(id),
    FOREIGN KEY(id_address) REFERENCES address(id),
    FOREIGN KEY(id_role) REFERENCES role(id)
);

CREATE TABLE curriculum(
    id int unsigned not null auto_increment,
    id_job int unsigned not null,
    name varchar(255),
    email varchar(255),
    phone varchar(255),
    city varchar(255),
    state varchar(255),
    curriculum_file varchar(255),
    PRIMARY KEY(id),
    FOREIGN KEY(id_job) REFERENCES job(id)
);

CREATE TABLE benefits(
    id int unsigned not null auto_increment,
    name varchar(255),
    PRIMARY KEY(id)
);
