SELECT  * from T_ACCOUNT order by USENUM
;-- -. . -..- - / . -. - .-. -.--
SELECT  * from T_ACCOUNT order by USENUM  ASC
;-- -. . -..- - / . -. - .-. -.--
SELECT * from T_ACCOUNT ORDER BY USENUM DESC
;-- -. . -..- - / . -. - .-. -.--
SELECT  ROWID,t.* from T_AREA t
;-- -. . -..- - / . -. - .-. -.--
select ROWNUM,t.* from T_AREA t
;-- -. . -..- - / . -. - .-. -.--
SELECT  sum(USENUM) from  T_ACCOUNT where YEAR = '2012'
;-- -. . -..- - / . -. - .-. -.--
SELECT avg(USENUM) from T_ACCOUNT WHERE YEAR = '2012'
;-- -. . -..- - / . -. - .-. -.--
SELECT  max(USENUM) FROM T_ACCOUNT WHERE YEAR = '2012'
;-- -. . -..- - / . -. - .-. -.--
SELECT  min(USENUM) from T_ACCOUNT WHERE  YEAR = '2012'
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*) from T_OWNERS
;-- -. . -..- - / . -. - .-. -.--
SELECT count(*) from T_OWNERS WHERE OWNERTYPEID = 1
;-- -. . -..- - / . -. - .-. -.--
SELECT AREAID,sum(money) from T_ACCOUNT GROUP BY AREAID
;-- -. . -..- - / . -. - .-. -.--
SELECT AREAID,sum(money) FROM T_ACCOUNT GROUP BY AREAID
;-- -. . -..- - / . -. - .-. -.--
SELECT AREAID,sum(money) FROM T_ACCOUNT GROUP BY AREAID HAVING sum(MONEY) > 16900
;-- -. . -..- - / . -. - .-. -.--
MONEY
;-- -. . -..- - / . -. - .-. -.--
SELECT AREAID,sum(MONEY) FROM T_ACCOUNT GROUP BY AREAID HAVING sum(MONEY) > 16900
;-- -. . -..- - / . -. - .-. -.--
SELECT AREAID,sum(MONEY) FROM T_ACCOUNT GROUP BY AREAID HAVING sum(MONEY) > 169000
;-- -. . -..- - / . -. - .-. -.--
SELECT ID 业主编号, nam 业主名称, OWNERTYPEID 业主类型的id FROM T_OWNERS
;-- -. . -..- - / . -. - .-. -.--
SELECT ID 业主编号, name 业主名称, OWNERTYPEID 业主类型的id FROM T_OWNERS
;-- -. . -..- - / . -. - .-. -.--
SELECT ID 业主编号, name 业主名称, ot.NAME 业主类型的名称 FROM T_OWNERS  o,T_OWNERTYPE ot WHERE o.OWNERTYPEID = ot.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT o.ID 业主编号, o.name 业主名称, ot.NAME 业主类型的名称 FROM T_OWNERS  o,T_OWNERTYPE ot WHERE o.OWNERTYPEID = ot.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称 from T_OWNERTYPE ot ,T_OWNERS o WHERE o.OWNERTYPEID = ot.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
,ta.name
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
,ta.name 业主居住的地方
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
  ,ta.name 业主居住的地方,ar.name 业主所属区域
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA,T_AREA ar WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID and ar.ID = o.ADDRESSID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
  ,ta.name 业主居住的地方,ar.name 业主所属区域,tr.name 收费员的名称
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA,T_AREA ar WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID and ar.ID = o.ADDRESSID and tr.id =ta.AREAID
;-- -. . -..- - / . -. - .-. -.--
SELECT  o.ID 业主编号, o.NAME 业主名称,ot.name 业主类型的名称
  ,ta.name 业主居住的地方,ar.name 业主所属区域,tr.name 收费员的名称
from T_OWNERTYPE ot ,T_OWNERS o,T_ADDRESS TA,T_AREA ar,T_OPERATOR tr  WHERE o.OWNERTYPEID = ot.ID and ta.ID = o.ADDRESSID and ar.ID = o.ADDRESSID and tr.id =ta.AREAID
;-- -. . -..- - / . -. - .-. -.--
SELECT * FROM T_ACCOUNT
;-- -. . -..- - / . -. - .-. -.--
SELECT OWNERUUIDNK 业主的编号,o.NAME 业主的名字,YEAR 年,MONTH 月,MONEY 金额  FROM T_ACCOUNT t LEFT JOIN T_OWNERS o WHERE t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT OWNERUUIDNK 业主的编号,o.NAME 业主的名字,YEAR 年,MONTH 月,MONEY 金额  FROM T_ACCOUNT t LEFT JOIN T_OWNERS o on t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT o.OWNERUUIDNK 业主的编号,o.NAME 业主的名字,o.YEAR 年,o.MONTH 月,o.MONEY 金额  FROM T_ACCOUNT t LEFT JOIN T_OWNERS o on t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT t.OWNERUUIDNK 业主的编号,o.NAME 业主的名字,t.YEAR 年,t.MONTH 月,t.MONEY 金额  FROM T_ACCOUNT t LEFT JOIN T_OWNERS o on t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT t.OWNERUUID 业主的编号,o.NAME 业主的名字,t.YEAR 年,t.MONTH 月,t.MONEY 金额  FROM T_ACCOUNT t LEFT JOIN T_OWNERS o on t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
SELECT t.OWNERUUID 业主的编号,o.NAME 业主的名字,t.YEAR 年,t.MONTH 月,t.MONEY 金额  FROM T_ACCOUNT t right JOIN T_OWNERS o on t.OWNERUUID =o.ID
;-- -. . -..- - / . -. - .-. -.--
select ow.id,ow.name,ac.year,ac.month,ac.money from T_OWNERS ow right join T_ACCOUNT ac on ow.id=ac.owneruuid