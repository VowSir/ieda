CREATE DATABASE sell;
USE sell;
-- 类目
create table `product_category` (
  `category_id` int not null auto_increment,
  `category_name` varchar(64) not null comment '类目名字',
  `category_type` int not null comment '类目编号',
  `create_time` timestamp not null default current_timestamp comment '创建时间',
  `update_time` timestamp not null default current_timestamp on update current_timestamp comment '修改时间',
  primary key (`category_id`)
);
SHOW DATABASES ;


