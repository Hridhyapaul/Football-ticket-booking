-------------------------------------------------------
-- Create Users Table and Insert data to the User Table
-------------------------------------------------------
CREATE TABLE
    Users (
        user_id INT PRIMARY KEY,
        full_name VARCHAR(100) NOT NULL,
        email VARCHAR(100) UNIQUE NOT NULL,
        role VARCHAR(20) NOT NULL CHECK (role IN ('Ticket Manager', 'Football Fan')),
        phone_number VARCHAR(20)
    );

INSERT INTO
    Users (user_id, full_name, email, role, phone_number)
VALUES
    (
        1,
        'Tanvir Rahman',
        'tanvir@mail.com',
        'Football Fan',
        '+8801711111111'
    ),
    (
        2,
        'Asif Haque',
        'asif@mail.com',
        'Football Fan',
        '+8801722222222'
    ),
    (
        3,
        'Sajjad Rahman',
        'sajjad@mail.com',
        'Ticket Manager',
        '+8801733333333'
    ),
    (
        4,
        'Jannat Ara',
        'jannat@mail.com',
        'Football Fan',
        NULL
    );

