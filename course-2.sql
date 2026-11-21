USE cd_hyd_jfs_59;
DROP TABLE courses;

CREATE TABLE courses (
    course_id INT,
    course_code VARCHAR(15),
    course_title VARCHAR(150),
    category VARCHAR(60),
    duration_hours INT,
    fee DECIMAL(10,2),
    discount_percentage DECIMAL(5,2),
    delivery_mode VARCHAR(20),
    start_date DATE,
    class_start_time TIME,
    class_end_time TIME,
    created_at DATETIME
);

DESCRIBE courses;

SHOW CREATE TABLE courses;

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (101, 'CRS-JAVA-101', 'Java Fundamentals', 'Programming', 40, 6500.00, 10.00, 'CLASSROOM', '2026-12-01', '09:00:00', '11:00:00', '2026-11-19 09:00:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (102, 'CRS-SQL-102', 'MySQL Essentials', 'Database', 32, 4500.50, 5.00, 'ONLINE', '2026-12-05', '10:00:00', '12:00:00', '2026-11-19 09:15:00'),
    (103, 'CRS-WEB-103', 'Web Development', 'Web Development', 60, 8500.00, 12.50, 'HYBRID', '2027-01-10', '14:00:00', '16:00:00', '2026-11-19 09:30:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (104, 'CRS-TST-104', 'Software Testing', 'Testing', 24, 3500.75, 0.00, 'ONLINE', '2026-12-15', '15:00:00', '17:00:00', '2026-11-19 09:45:00'),
    (105, 'CRS-PYT-105', 'Python Basics', 'Programming', 36, 5500.25, 7.50, 'CLASSROOM', '2027-01-05', '09:30:00', '11:30:00', '2026-11-19 10:00:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (106, 'CRS-DSA-106', 'Data Structures', 'Programming', 45, 6250.75, 8.25, 'ONLINE', '2027-02-01', '13:00:00', '15:00:00', '2026-11-19 10:15:00');

INSERT INTO
    courses(course_id, course_code, course_title, category, duration_hours, fee, discount_percentage, delivery_mode, start_date, class_start_time, class_end_time, created_at)
VALUES
    (107, 'CRS-CLD-107', 'Cloud Computing', 'Technology', 30, 7500.50, 6.50, 'HYBRID', '2027-02-10', '08:30:00', '10:30:00', '2026-11-19 10:30:00');

UPDATE courses
SET
    fee = 7000.00
WHERE
    course_code = 'CRS-JAVA-101';

UPDATE courses
SET
    fee = ROUND(fee * 1.085, 2)
WHERE
    delivery_mode = 'ONLINE';

UPDATE courses
SET
    delivery_mode = 'ONLINE'
WHERE
    course_code = 'CRS-WEB-103';

UPDATE courses
SET
    start_date = '2027-01-15'
WHERE
    course_code = 'CRS-PYT-105';

UPDATE courses
SET
    class_start_time = '10:00:00',
    class_end_time = '12:00:00'
WHERE
    delivery_mode = 'CLASSROOM';

UPDATE courses
SET
    created_at = '2026-11-19 11:00:00'
WHERE
    course_code = 'CRS-JAVA-101';

SELECT
    course_id,
    course_code,
    course_title,
    category,
    duration_hours,
    fee,
    discount_percentage,
    delivery_mode,
    start_date,
    class_start_time,
    class_end_time,
    created_at
FROM
    courses;