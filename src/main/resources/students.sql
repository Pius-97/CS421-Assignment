-- Clear existing data
TRUNCATE TABLE students RESTART IDENTITY CASCADE;

-- Insert sample students for Software Engineering program
INSERT INTO students (first_name, last_name, registration_number, email, phone_number, date_of_birth, gender, nationality, enrolled_program, current_year, current_semester, enrollment_date, created_at, updated_at)
VALUES
    ('John', 'Doe', 'T21-03-00001', 'john.doe@udom.ac.tz', '+255712345678', '2000-05-15', 'MALE', 'Tanzanian', 'Software Engineering', 1, 1, '2025-09-01', NOW(), NOW()),
    ('Jane', 'Smith', 'T21-03-00002', 'jane.smith@udom.ac.tz', '+255712345679', '2001-07-20', 'FEMALE', 'Kenyan', 'Software Engineering', 1, 1, '2025-09-01', NOW(), NOW()),
    ('Michael', 'Johnson', 'T21-03-00003', 'michael.j@udom.ac.tz', '+255712345680', '2000-11-30', 'MALE', 'Ugandan', 'Software Engineering', 1, 1, '2025-09-01', NOW(), NOW()),
    ('Sarah', 'Williams', 'T21-03-00004', 'sarah.w@udom.ac.tz', '+255712345681', '1999-03-25', 'FEMALE', 'Tanzanian', 'Software Engineering', 2, 1, '2024-09-01', NOW(), NOW()),
    ('David', 'Brown', 'T21-03-00005', 'david.b@udom.ac.tz', '+255712345682', '1999-08-12', 'MALE', 'Rwandan', 'Software Engineering', 2, 1, '2024-09-01', NOW(), NOW()),
    ('Emily', 'Davis', 'T21-03-00006', 'emily.d@udom.ac.tz', '+255712345683', '1998-04-05', 'FEMALE', 'Burundian', 'Software Engineering', 3, 1, '2023-09-01', NOW(), NOW()),
    ('Robert', 'Miller', 'T21-03-00007', 'robert.m@udom.ac.tz', '+255712345684', '1998-09-18', 'MALE', 'Tanzanian', 'Software Engineering', 3, 1, '2023-09-01', NOW(), NOW()),
    ('Jennifer', 'Wilson', 'T21-03-00008', 'jennifer.w@udom.ac.tz', '+255712345685', '1997-01-22', 'FEMALE', 'Kenyan', 'Software Engineering', 4, 1, '2022-09-01', NOW(), NOW()),
    ('Thomas', 'Moore', 'T21-03-00009', 'thomas.m@udom.ac.tz', '+255712345686', '1997-06-15', 'MALE', 'Tanzanian', 'Software Engineering', 4, 1, '2022-09-01', NOW(), NOW()),
    ('Lisa', 'Taylor', 'T21-03-00010', 'lisa.t@udom.ac.tz', '+255712345687', '1997-12-08', 'FEMALE', 'Ugandan', 'Software Engineering', 4, 1, '2022-09-01', NOW(), NOW());