--需求：对T_ACCOUNT表按使用量进行升序排序  默认的是asc的升序查询
SELECT  * from T_ACCOUNT order by USENUM ;
SELECT  * from T_ACCOUNT order by USENUM  ASC ;
--对T_ACCOUNT表按使用量进行降序排序
SELECT * from T_ACCOUNT ORDER BY USENUM DESC ;
--rowid 伪列返回时该行的物理地址
SELECT  ROWID,t.* from T_AREA t;
--rownum 在查询的结果集中,rownum为每一行标识一个行号
select ROWNUM,t.* from T_AREA t;
--统计2012年所有用户的用水量总和
SELECT  sum(USENUM) from  T_ACCOUNT where YEAR = '2012';
--需求：统计2012年所有用水量（字数）的平均值
SELECT avg(USENUM) from T_ACCOUNT WHERE YEAR = '2012';
--需求：统计2012年最高用水量（字数）
SELECT  max(USENUM) FROM T_ACCOUNT WHERE YEAR = '2012';
--需求：统计2012年最低用水量（字数）
SELECT  min(USENUM) from T_ACCOUNT WHERE  YEAR = '2012';
--需求：统计业主类型ID为1的业主数量
SELECT count(*) from T_OWNERS WHERE OWNERTYPEID = 1;
--需求：按区域分组统计水费合计数
SELECT AREAID,sum(money) from T_ACCOUNT GROUP BY AREAID;
--需求：查询水费合计大于16900的区域及水费合计
SELECT AREAID,sum(MONEY) FROM T_ACCOUNT GROUP BY AREAID HAVING sum(MONEY) > 169000;
--（1）需求：查询显示业主编号，业主名称，业主类型名称，
SELECT o.ID 业主编号, o.name 业主名称, ot.NAME 业主类型的名称 FROM T_OWNERS  o,T_OWNERTYPE ot WHERE o.OWNERTYPEID = ot.ID;
--需求：查询显示业主编号，业主名称、地址和业主类型
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
,ta.name 业主居住的地方
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID;
--需求：查询显示业主编号、业主名称、地址、所属区域、业主分类
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
  ,ta.name 业主居住的地方,ar.name 业主所属区域
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA,T_AREA ar WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID and ar.ID = o.ADDRESSID;
--）需求：查询显示业主编号、业主名称、地址、所属区域、收费员、业主分类
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
  ,ta.name 业主居住的地方,ar.name 业主所属区域,tr.name 收费员的名称
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA,T_AREA ar,T_OPERATOR tr  WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID and ar.ID = o.ADDRESSID and tr.id =ta.AREAID ;
--：查询业主的账务记录，显示业主编号、名称、年、月、金额。如果此业主没有账务记录也要列出姓名。
