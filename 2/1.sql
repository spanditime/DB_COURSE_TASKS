
SELECT * FROM student;

UPDATE student SET score=3.8 where (id%2=0);
UPDATE student SET score=3.2 where (id%4=0);
UPDATE student SET score=4.3 where (id%3=0 or id=1);
UPDATE student SET score=4.7 where (id%5=0 );

SELECT name,surname FROM student where (score>=4 AND score<=4.5);

SELECT * FROM student where substr((n_group::varchar),1,1) like '2';

SELECT * FROM student WHERE score>=4 ORDER BY score DESC;

SELECT name,risk FROM hobby where id IN (19,21);

SELECT * FROM student WHERE score>=4.5 ORDER BY score DESC;

SELECT * FROM student WHERE score=(SELECT max(score) FROM student) LIMIT 5;



