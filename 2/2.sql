SELECT n_group, COUNT(n_group) AS count FROM student GROUP BY n_group ORDER BY n_group DESC;

SELECT n_group, MAX(score) as max_score FROM student GROUP BY n_group ORDER BY n_group DESC;

SELECT surname, COUNT(surname) AS count FROM student GROUP BY surname;

SELECT substr(n_group::varchar,1,1) AS term, AVG(score) AS avg_score FROM student GROUP BY term ORDER BY term;

SELECT n_group FROM student where (substr(n_group::varchar,1,1) like '2') GROUP BY n_group ORDER BY AVG(score) DESC LIMIT 1;

SELECT * FROM (SELECT n_group, AVG(score) AS score from student GROUP BY n_group) AS groups where score<=3.5 ORDER BY score;

SELECT n_group, COUNT(n_group),MAX(score),AVG(score),MIN(score) from student GROUP BY n_group;

SELECT id,name,surname,score from student where score=(SELECT MAX(score) from student where n_group=2255 GROUP BY n_group) and n_group=2255;

SELECT n_group,score,id,name,surname FROM student s1 where score=(SELECT MAX(score) from student s2 where s2.n_group=s1.n_group) ORDER BY n_group;
