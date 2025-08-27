use statersql;
rename table programmers to karan;
-- change table name to anything 
-- ALTER TABLE KARAN ADD column is_active boolean default true;
-- ALTER TABLE KARAN DROP column is_active;
-- ALTER TABLE KARAN modify column name varchar(100);
ALTER TABLE KARAN modify column email varchar(100) after gender;
ALTER TABLE KARAN modify column date_of_birth date first;
alter table karan modify column email varchar(100) first;
ALTER TABLE KARAN modify column id varchar(100) first;
select * from KARAN;


select * from gaurav;
DROP TABLE gaurav;
ALTER TABLE addresses DROP FOREIGN KEY fk_user;
DROP TABLE gaurav;

CREATE TABLE gaurav (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male','Female','Other') NOT NULL,
    salary DECIMAL(10,2),
    date_of_birth DATE
);

select * from gaurav;


INSERT INTO gaurav (name, email, gender, salary, date_of_birth) VALUES
('Aarav', 'aarav@example.com', 'Male', 60000, '1995-05-14'),
('Ananya', 'ananya@example.com', 'Female', 72000, '1990-11-23'),
('Raj', 'raj@example.com', 'Male', 58000, '1988-02-17'),
('Sneha', 'sneha@example.com', 'Female', 50000, '2000-08-09'),
('Farhan', 'farhan@example.com', 'Male', 61000, '1993-12-30'),
('Priyanka', 'priyanka@example.com', 'Female', 84000, '1985-07-12'),
('Aisha', 'aisha@example.com', 'Female', 56000, '1997-03-25'),
('Aditya', 'aditya@example.com', 'Male', 69000, '1992-06-17'),
('Meera', 'meera@example.com', 'Female', 77000, '1989-09-05'),
('Ishaan', 'ishaan@example.com', 'Male', 45000, '2001-10-02'),
('Tanvi', 'tanvi@example.com', 'Female', 62000, '1994-04-18'),
('Rohan', 'rohan@example.com', 'Male', 75000, '1986-12-01'),
('Zoya', 'zoya@example.com', 'Female', 54000, '1998-01-15'),
('Karan', 'karan@example.com', 'Male', 68000, '1990-08-22'),
('Nikita', 'nikita@example.com', 'Female', 71000, '1987-03-10'),
('Manav', 'manav@example.com', 'Male', 61000, '1996-11-29'),
('Divya', 'divya@example.com', 'Female', 57000, '1991-02-28'),
('Harshit', 'harshit@example.com', 'Male', 65000, '1993-09-09'),
('Ritika', 'ritika@example.com', 'Female', 52000, '1999-05-05'),
('Imran', 'imran@example.com', 'Male', 63000, '1995-07-30'),
('Juhi', 'juhi@example.com', 'Female', 59000, '1992-10-14'),
('Tushar', 'tushar@example.com', 'Male', 73000, '1990-01-08'),
('Lata', 'lata@example.com', 'Female', 78000, '1984-11-11'),
('Yash', 'yash@example.com', 'Male', 64000, '1997-06-06');


CREATE TABLE admin_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male','Female','Other') NOT NULL,
    salary DECIMAL(10,2),
    date_of_birth DATE
);
INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);