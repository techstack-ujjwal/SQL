CREATE TABLE students (
    student_id SERIAL PRIMARY KEY, -- primary key is unique  and non null
    first_name VARCHAR(50), NOT NULL   -- 50 letter can be added // or it will consuming 50 bytes
    last_name VARCHAR(50),  50 * 8 bit
    email VARCHAR(322), UNIQUE NOT NULL,
    phone_number VARCHAR(10), UNIQUE, -- 4000 bytes vs 10 bytes
    country_code VARCHAR(4),
    age INT CHECK (age>18),

    current_status VARCHAR(20) DEFAULT 'active' CHECK (current_status IN ('active', 'gardaute', 'dropout')),
    masterji_handle VARCHAR(50) BOOLEAN DEFAULT FALSE,
    current_score INT DEFAULT 0 CHECK (current_score>= 0 AND current-score <=100),
    enrollment_date DATETIME DEFAULT CURRENT_DATE, ---This is UTC
)

