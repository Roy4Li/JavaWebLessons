-- 如果之前存在表格 谨慎运行！！！
DROP TABLE IF EXISTS score;


-- 创建表格
CREATE TABLE score(id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
name varchar(32),
class varchar(32),
English int,
chinese int,
exam_date date);
-- 查看表格
DESC score;
-- 增加一列  
ALTER TABLE score ADD COLUMN math INT;
-- 查看表格
DESC score;
-- 插入数据
INSERT INTO score(name,class,english,chinese,math) VALUES
("李大","三年级二班",59,15,100),
("李二","三年级二班",81,56,60),
("李三","三年级二班",82,78,71),
("李四","三年级二班",83,93,20),
("李五","三年级二班",84,61,98),
("李六","三年级二班",85,20,60),
("李七","三年级二班",86,40,81),
("李八","三年级二班",87,90,83),
("李九","三年级二班",88,31,83),
("李十","三年级二班",89,11,73),
("李十一","三年级二班",90,66,82),
("李十二","三年级二班",91,77,43),
("李十三","三年级二班",92,88,23),
("李十四","三年级二班",93,30,20);
-- 增加考试时间
UPDATE score SET exam_date = "2015-04-13" WHERE id >= 1;
-- 选出总分最高的那个
SELECT name,math,chinese,english,sum(math+chinese+english) as sum FROM score GROUP BY id ORDER BY sum ASC limit 1;
-- 统计多少个学生
SELECT count(*) AS 学生个数 FROM score;
-- 选出英语不及格的人
SELECT name,english FROM score where english < 60;
-- 选出数学不及格的人 
SELECT name,math FROM score WHERE math < 60;
-- 选出语文不及格的人
SELECT name,chinese FROM score WHERE chinese < 60;
-- 统计各科不及格的人数
SELECT sum(CASE WHEN math < 60 THEN 1 ELSE 0 END) '数学不及格',SUM(CASE WHEN english< 60  then 1 else 0 end) '英语不及格',SUM(CASE WHEN chinese<60 then 1 else 0 end) '语文不及格' FROM score;
-- 统计各个分数段的人数
SELECT sum(CASE WHEN math < 60 THEN 1 ELSE 0 END) '数学<60',SUM(CASE WHEN math>= 60 AND math < 80 then 1 else 0 end) '数学:60--70',SUM(CASE WHEN math>= 80  then 1 else 0 end) '数学>80' FROM score;
