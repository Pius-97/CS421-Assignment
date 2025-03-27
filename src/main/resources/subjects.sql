-- Clear existing data
TRUNCATE TABLE subjects RESTART IDENTITY CASCADE;

-- Year 1 Semester 1 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, created_at, updated_at)
VALUES
    ('CP 111', 'Principles of Programming Languages', 'Fundamentals of programming concepts', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('DS 102', 'Development Perspectives', 'Introduction to development studies', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('IA 112', 'Mathematical Foundations of Information Security', 'Mathematical concepts for information security', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('IT 111', 'Introduction to Information Technology', 'Basic IT concepts and applications', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('LG 102', 'Communication Skills', 'Developing effective communication skills', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('MT 1111', 'Discrete Mathematics for ICT', 'Discrete mathematical concepts for computing', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('MT 1112', 'Calculus', 'Fundamental calculus concepts', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW()),
    ('MT 1117', 'Linear Algebra for ICT', 'Linear algebra applications in computing', 9, 1, 1, 'Software Engineering', true, false, NOW(), NOW());

-- Year 1 Semester 2 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CN 121', 'Introduction to Computer Networking', 'Fundamentals of computer networks', 9, 1, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 121', 'Introduction to Database systems', 'Basic database concepts and SQL', 9, 1, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 123', 'Introduction to High Level Programming', 'Programming concepts using high-level languages', 9, 1, 2, 'Software Engineering', true, true, 'CP 111', NOW(), NOW()),
    ('CS 123', 'Introduction to Software Engineering', 'Software development lifecycle and methodologies', 9, 1, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('IA 124', 'Introduction to IT Security', 'Basic concepts of information security', 9, 1, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('MT 1211', 'Numerical Analysis for ICT', 'Numerical methods for computing', 9, 1, 2, 'Software Engineering', true, true, 'MT 1112', NOW(), NOW()),
    ('ST 1210', 'Introduction to Probability and Statistics', 'Basic probability and statistical concepts', 9, 1, 2, 'Software Engineering', true, false, NULL, NOW(), NOW());

-- Year 2 Semester 1 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CN 211', 'Computer Networking Protocols', 'Network protocols and architectures', 9, 2, 1, 'Software Engineering', true, true, 'CN 121', NOW(), NOW()),
    ('CP 211', 'Introduction To Linux/Unix Systems', 'Linux/Unix operating system fundamentals', 9, 2, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 212', 'Systems Analysis and Design', 'System development methodologies', 9, 2, 1, 'Software Engineering', true, true, 'CS 123', NOW(), NOW()),
    ('CP 213', 'Data Structures and Algorithms Analysis', 'Advanced data structures and algorithm analysis', 9, 2, 1, 'Software Engineering', true, true, 'CP 123', NOW(), NOW()),
    ('CP 214', 'Computational Theory', 'Theoretical foundations of computation', 9, 2, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 215', 'Object Oriented Programming in Java', 'OOP concepts using Java', 9, 2, 1, 'Software Engineering', true, true, 'CP 123', NOW(), NOW()),
    ('CS 131', 'Industrial Practical Training I', 'First industrial attachment', 9, 2, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CT 211', 'Computer Organization and Architecture I', 'Computer hardware and architecture', 9, 2, 1, 'Software Engineering', true, false, NULL, NOW(), NOW());

-- Year 2 Semester 2 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 221', 'Internet Programming And Application I', 'Web development fundamentals', 9, 2, 2, 'Software Engineering', true, true, 'CP 215', NOW(), NOW()),
    ('CP 222', 'Open Source Technologies', 'Open source software development', 9, 2, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 223', 'Object-Oriented Systems Design', 'Design patterns and OO system design', 9, 2, 2, 'Software Engineering', true, true, 'CP 215', NOW(), NOW()),
    ('CP 224', 'Database Management Systems', 'Advanced database concepts', 9, 2, 2, 'Software Engineering', true, true, 'CP 121', NOW(), NOW()),
    ('CP 225', 'Software Testing and Quality Assurance', 'Software testing methodologies', 9, 2, 2, 'Software Engineering', true, true, 'CS 123', NOW(), NOW()),
    ('CP 226', 'Operating Systems', 'OS concepts and principles', 9, 2, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('IS 221', 'ICT Research Methods', 'Research methodologies in ICT', 9, 2, 2, 'Software Engineering', true, false, NULL, NOW(), NOW());

-- Year 3 Semester 1 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 311', 'Internet Programming and Applications II', 'Advanced web development', 9, 3, 1, 'Software Engineering', true, true, 'CP 221', NOW(), NOW()),
    ('CP 312', 'Python Programming', 'Python language and applications', 9, 3, 1, 'Software Engineering', true, true, 'CP 123', NOW(), NOW()),
    ('CP 313', 'Mobile Applications Development', 'Mobile app development fundamentals', 9, 3, 1, 'Software Engineering', true, true, 'CP 215', NOW(), NOW()),
    ('CP 318', 'Computer Graphics', 'Computer graphics principles', 9, 3, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CS 231', 'Industrial Practical Training II', 'Second industrial attachment', 9, 3, 1, 'Software Engineering', true, true, 'CS 131', NOW(), NOW()),
    ('EME 314', 'ICT Entrepreneurship', 'Entrepreneurship in ICT sector', 9, 3, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('MT 3111', 'Mathematical Logic and Formal Semantics', 'Mathematical logic for computing', 9, 3, 1, 'Software Engineering', true, true, 'MT 1111', NOW(), NOW());

-- Year 3 Semester 1 - Elective Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 316', 'Selected Topics in Software Engineering', 'Advanced topics in software engineering', 7.5, 3, 1, 'Software Engineering', false, true, 'CS 123', NOW(), NOW());

-- Year 3 Semester 2 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 321', 'Distributed Database Systems', 'Distributed database architectures', 9, 3, 2, 'Software Engineering', true, true, 'CP 224', NOW(), NOW()),
    ('CP 322', 'Data Mining and Warehousing', 'Data mining techniques and applications', 9, 3, 2, 'Software Engineering', true, true, 'CP 224', NOW(), NOW()),
    ('CP 323', 'Web Framework Development Using Javascript', 'Modern JavaScript frameworks', 9, 3, 2, 'Software Engineering', true, true, 'CP 311', NOW(), NOW()),
    ('CS 321', 'Advanced Java Programming', 'Advanced Java concepts', 9, 3, 2, 'Software Engineering', true, true, 'CP 215', NOW(), NOW()),
    ('IA 321', 'Information and Communication Systems Security', 'Advanced information security', 9, 3, 2, 'Software Engineering', true, true, 'IA 124', NOW(), NOW());

-- Year 3 Semester 2 - Elective Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 324', 'Compiler Technology', 'Compiler design and implementation', 7.5, 3, 2, 'Software Engineering', false, true, 'CP 214', NOW(), NOW());

-- Year 4 Semester 1 - Core Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('BT 413', 'ICT Project Management', 'Project management in ICT context', 9, 4, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 412', 'C# Programming', 'C# language and .NET framework', 9, 4, 1, 'Software Engineering', true, true, 'CP 215', NOW(), NOW()),
    ('CS 332', 'Industrial Practical Training III', 'Third industrial attachment', 9, 4, 1, 'Software Engineering', true, true, 'CS 231', NOW(), NOW()),
    ('CS 411', 'Software Reverse Engineering', 'Reverse engineering techniques', 9, 4, 1, 'Software Engineering', true, true, 'CS 321', NOW(), NOW()),
    ('CS 431', 'Software Engineering Project I', 'First part of final year project', 9, 4, 1, 'Software Engineering', true, true, 'CP 223', NOW(), NOW()),
    ('CT 312', 'Computer Maintenance', 'Computer hardware maintenance', 9, 4, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('IM 411', 'Human Computer Interaction', 'HCI principles and design', 9, 4, 1, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('SI 311', 'Professional Ethics and Conduct', 'Professional ethics in computing', 9, 4, 1, 'Software Engineering', true, false, NULL, NOW(), NOW());

-- Year 4 Semester 1 - Elective Subjects
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CP 314', 'Distributed Computing', 'Distributed systems concepts', 7.5, 4, 1, 'Software Engineering', false, true, 'CP 214', NOW(), NOW());

-- Year 4 Semester 2 - Core Subjects (from the image)
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CS 421', 'Software Deployment and Management', 'Software deployment strategies and management', 9, 4, 2, 'Software Engineering', true, true, 'CS 431', NOW(), NOW()),
    ('CS 329', 'Big Data Analysis', 'Big data processing and analysis', 9, 4, 2, 'Software Engineering', true, true, 'CP 322', NOW(), NOW()),
    ('CS 432', 'Software Engineering Project II', 'Second part of final year project', 9, 4, 2, 'Software Engineering', true, true, 'CS 431', NOW(), NOW()),
    ('CP 422', 'Artificial Intelligence', 'AI fundamentals and applications', 9, 4, 2, 'Software Engineering', true, false, NULL, NOW(), NOW()),
    ('CP 423', 'System Administration and Management', 'System administration techniques', 9, 4, 2, 'Software Engineering', true, true, 'CP 211', NOW(), NOW()),
    ('CP 424', 'Cloud Computing', 'Cloud computing architectures', 7.5, 4, 2, 'Software Engineering', true, true, 'CP 321', NOW(), NOW());

-- Year 4 Semester 2 - Elective Subjects (from the image)
INSERT INTO subjects (code, name, description, credit_hours, academic_year, semester, program, is_core, has_prerequisite, prerequisite_code, created_at, updated_at)
VALUES
    ('CG 222', 'Foundations of Data Science', 'Data science fundamentals', 7.5, 4, 2, 'Software Engineering', false, true, 'ST 1210', NOW(), NOW()),
    ('CP 421', 'Digital Image Processing', 'Image processing techniques', 7.5, 4, 2, 'Software Engineering', false, true, 'CP 318', NOW(), NOW()),
    ('CS 427', 'Semantic Web and Social Networks', 'Semantic web technologies', 7.5, 4, 2, 'Software Engineering', false, true, 'CP 323', NOW(), NOW());