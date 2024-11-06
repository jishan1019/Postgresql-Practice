-- Active: 1730831490547@@127.0.0.1@5432@ph
SELECT * FROM persion

INSERT INTO persion (id, user_name, age) VALUES (1, 'Jishan', 22);

ALTER TABLE persion ADD COLUMN email VARCHAR(50) DEFAULT 'test@gmail.com' NOT NULL

INSERT INTO persion VALUES(2,'Rakib', 21)


ALTER TABLE persion DROP COLUMN email

ALTER TABLE persion RENAME COLUMN age to user_age


ALTER TABLE persion ALTER COLUMN user_name TYPE VARCHAR(50)

-- null filed make not null --> contant add
ALTER TABLE persion ALTER COLUMN user_age set NOT NULL


-- remove constatn 
ALTER TABLE persion ALTER COLUMN user_age drop NOT NULL


-- add unique field
ALTER TABLE persion ADD constraint unique_persion_user_age UNIQUE(user_age)

-- create primary key
ALTER TABLE persion ADD constraint pk_persion_id PRIMARY KEY(id)




ALTER TABLE persion DROP constraint pk_persion_id




-- DATABASE TABLE ALL DATA REMOVE\
TRUNCATE TABLE persion


-- Delete table
DROP TABLE persion 