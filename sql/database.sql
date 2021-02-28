DROP DATABASE ecommerce;
CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE `group`(
    id int UNSIGNED AUTO_INCREMENT,
    name VARCHAR(255),
    PRIMARY KEY(id)
);

CREATE TABLE user(
    id int UNSIGNED AUTO_INCREMENT,
    id_group int UNSIGNED,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    login VARCHAR(255),
    password VARCHAR(225),
    PRIMARY KEY(id),
    FOREIGN KEY(id_group) REFERENCES `group`(id)
);

CREATE TABLE `group_has_permission`(
    id int UNSIGNED AUTO_INCREMENT,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    password VARCHAR(225),
    PRIMARY KEY(id)
);

CREATE TABLE permission(
    id int UNSIGNED AUTO_INCREMENT,
    name VARCHAR(255),
    type enum('customer', 'admin'),
    password VARCHAR(225),
    PRIMARY KEY(id)
);

CREATE TABLE address(
    `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
    country VARCHAR(255),
    street VARCHAR(255),
    complement VARCHAR(255),
    cep VARCHAR(255),
    number int,
    PRIMARY KEY(`id`)
);

CREATE TABLE telephone(
    id int UNSIGNED AUTO_INCREMENT,
    id_user int UNSIGNED,
    number int UNSIGNED,
    ddd int UNSIGNED,
    code int UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user) REFERENCES user(id)
);

CREATE TABLE coupon(
    id int UNSIGNED AUTO_INCREMENT,
    active int,
    name VARCHAR(255),
    code VARCHAR(255),
    discount int,
    PRIMARY KEY(id)
);

CREATE TABLE user_has_coupon(
    id int UNSIGNED AUTO_INCREMENT,
    id_user int UNSIGNED,
    id_coupon int UNSIGNED,
    PRIMARY KEY(id),
    FOREIGN KEY(id_user) REFERENCES user(id)
);

CREATE TABLE product(
    id int UNSIGNED AUTO_INCREMENT,
    name VARCHAR(255),
    price int,
    PRIMARY KEY(id)
);

CREATE TABLE image(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    id_product int UNSIGNED,
    base_64 text,
    PRIMARY KEY(id),
    FOREIGN KEY(id_product) REFERENCES product(id)
);

CREATE TABLE role(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY(id)
);

CREATE TABLE job(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    id_address int UNSIGNED NOT NULL,
    id_role int UNSIGNED NOT NULL,
    active int,
    name VARCHAR(255),
    requirements varchar(255),
    activities varchar(255),
    differential varchar(255),
    PRIMARY KEY(id),
    FOREIGN KEY(id_address) REFERENCES address(id),
    FOREIGN KEY(id_role) REFERENCES role(id)
);

CREATE TABLE job_has_address(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    id_address int UNSIGNED NOT NULL,
    id_job int UNSIGNED NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(id_address) REFERENCES address(id),
    FOREIGN KEY(id_job) REFERENCES job(id)
);

CREATE TABLE curriculum(
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    id_job int UNSIGNED NOT NULL,
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
    id int UNSIGNED NOT NULL AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY(id)
);
