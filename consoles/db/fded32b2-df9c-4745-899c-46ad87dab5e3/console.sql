-- 创建数据库并创建表测试编码问题
CREATE DATABASE dbgirl;
USE dbgirl;
CREATE TABLE test(
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(22)
);
INSERT test VALUES (null,"你好啊");
INSERT test VALUES (null,"heelo");
DROP DATABASE db;