create DATABASE web;
use web;
create table user(
  id int PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(20),
  password VARCHAR(20)
);
INSERT into user VALUES (null,'zs','zs'),(null,'ls','ls'),(null,'ww','ww');
SELECT * from user;
select * from user where username = 'zs' and password = 'zs';
