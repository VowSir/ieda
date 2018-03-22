CREATE DATABASE sell
;-- -. . -..- - / . -. - .-. -.--
CREATE TABLE `product_category` (
  `category_id` INT NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(64) NOT NULL COMMENT '类目名字',
  `category_type` INT NOT NULL COMMENT '类目编号',
  `create_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`category_id`)
)
;-- -. . -..- - / . -. - .-. -.--
USE sell
;-- -. . -..- - / . -. - .-. -.--
create table `product_category` (
  `category_id` int not null auto_increment,
  `category_name` varchar(64) not null comment '类目名字',
  `category_type` int not null comment '类目编号',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
  primary key (`category_id`)
)
;-- -. . -..- - / . -. - .-. -.--
SHOW DATABASES