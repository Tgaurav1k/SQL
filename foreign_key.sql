-- Drop child table first
DROP TABLE IF EXISTS addresses;

-- Drop parent table
DROP TABLE IF EXISTS gaurav;

-- Recreate parent
CREATE TABLE gaurav (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male','Female','Other') NOT NULL,
    salary DECIMAL(10,2),
    date_of_birth DATE
);

-- Insert 24 users (make sure IDs 1 to 24 exist)
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

-- Recreate child table
CREATE TABLE addresses(
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES gaurav(id) ON DELETE CASCADE
);

-- Now insert addresses (1..24)
INSERT INTO addresses (user_id, street, city, state, pincode) VALUES
(1, '221B MG Road', 'Mumbai', 'Maharashtra', '400001'),
(2, '14 Park Street', 'Kolkata', 'West Bengal', '700016'),
(3, '32 Residency Road', 'Bengaluru', 'Karnataka', '560025'),
(4, '5 North Usman Road', 'Chennai', 'Tamil Nadu', '600017'),
(5, '17 Hazratganj', 'Lucknow', 'Uttar Pradesh', '226001'),
(6, '55 Banjara Hills', 'Hyderabad', 'Telangana', '500034'),
(7, '11 Connaught Place', 'New Delhi', 'Delhi', '110001'),
(8, '23 Civil Lines', 'Jaipur', 'Rajasthan', '302006'),
(9, '45 Sector 17', 'Chandigarh', 'Chandigarh', '160017'),
(10, '89 Marine Drive', 'Mumbai', 'Maharashtra', '400020'),
(11, '78 Salt Lake', 'Kolkata', 'West Bengal', '700091'),
(12, '34 Indiranagar', 'Bengaluru', 'Karnataka', '560038'),
(13, '67 Anna Nagar', 'Chennai', 'Tamil Nadu', '600040'),
(14, '21 Aliganj', 'Lucknow', 'Uttar Pradesh', '226024'),
(15, '90 Jubilee Hills', 'Hyderabad', 'Telangana', '500033'),
(16, '12 Karol Bagh', 'New Delhi', 'Delhi', '110005'),
(17, '56 MI Road', 'Jaipur', 'Rajasthan', '302001'),
(18, '44 Panchkula', 'Chandigarh', 'Haryana', '134109'),
(19, '81 Bandra West', 'Mumbai', 'Maharashtra', '400050'),
(20, '77 Gariahat Road', 'Kolkata', 'West Bengal', '700019'),
(21, '26 Whitefield', 'Bengaluru', 'Karnataka', '560066'),
(22, '33 T Nagar', 'Chennai', 'Tamil Nadu', '600017'),
(23, '18 Aminabad', 'Lucknow', 'Uttar Pradesh', '226018'),
(24, '99 Gachibowli', 'Hyderabad', 'Telangana', '500032');

select * from addresses;