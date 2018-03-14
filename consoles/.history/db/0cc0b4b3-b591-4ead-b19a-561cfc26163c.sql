CREATE DATABASE hibernateTest
;-- -. . -..- - / . -. - .-. -.--
USE hibernateTest
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE t_customer(
  id int PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20),
  addres VARCHAR(50)
)
;-- -. . -..- - / . -. - .-. -.--
drop TABLE t_customer
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE t_customer(
  id int PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20),
  address VARCHAR(50)
)