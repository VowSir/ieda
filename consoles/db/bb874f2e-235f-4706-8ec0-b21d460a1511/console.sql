-- 创建一个数据库 和表
CREATE DATABASE hibernateTest;
use hibernateTest;
CREATE TABLE t_customer (
  id   INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(20),
  address VARCHAR(50)
);
