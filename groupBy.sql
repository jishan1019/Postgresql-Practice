SELECT * FROM students


SELECT country, count(*), avg(age) FROM students
      GROUP BY country


SELECT country, count(*), avg(age) FROM students
      GROUP BY country
            HAVING avg(age) > 19


SELECT extract(year from dob) as birth_year , count(*) FROM students 
            GROUP BY birth_year