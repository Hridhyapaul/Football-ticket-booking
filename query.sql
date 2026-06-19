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


------------------------------------------------------------
-- Create Matches Table and Insert data to the Matches Table
------------------------------------------------------------
CREATE TABLE
    Matches (
        match_id INT PRIMARY KEY,
        fixture VARCHAR(150) NOT NULL,
        tournament_category VARCHAR(100) NOT NULL,
        base_ticket_price DECIMAL(10, 2) NOT NULL CHECK (base_ticket_price >= 0),
        match_status VARCHAR(20) NOT NULL CHECK (
            match_status IN (
                'Available',
                'Selling Fast',
                'Sold Out',
                'Postponed'
            )
        )
    );

INSERT INTO
    Matches (
        match_id,
        fixture,
        tournament_category,
        base_ticket_price,
        match_status
    )
VALUES
    (
        101,
        'Real Madrid vs Barcelona',
        'Champions League',
        150.00,
        'Available'
    ),
    (
        102,
        'Man City vs Liverpool',
        'Premier League',
        120.00,
        'Selling Fast'
    ),
    (
        103,
        'Bayern Munich vs PSG',
        'Champions League',
        130.00,
        'Available'
    ),
    (
        104,
        'AC Milan vs Inter Milan',
        'Serie A',
        90.00,
        'Sold Out'
    ),
    (
        105,
        'Juventus vs Roma',
        'Serie A',
        80.00,
        'Available'
    );



