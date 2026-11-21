USE cd_hyd_jfs_59;
CREATE TABLE instructors (
    instructor_id INT,
    instructor_code VARCHAR(12),
    first_name VARCHAR(60),
    last_name VARCHAR(60),
    email VARCHAR(120),
    specialization VARCHAR(100),
    years_experience INT,
    hourly_rate DECIMAL(8,2),
    employment_type VARCHAR(20),
    joined_on DATE,
    work_start_time TIME,
    work_end_time TIME,
    created_at DATETIME
);

DESCRIBE instructors;

SHOW CREATE TABLE instructors;

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (101, 'INS-JV-001', 'Kavya', 'Menon', 'kavya.menon@gmail.com', 'Java', 8, 1500.50, 'FULL_TIME', '2021-06-14', '09:00:00', '18:00:00', '2026-11-19 09:00:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (102, 'INS-DB-002', 'Ritesh', 'Kumar', 'ritesh.kumar@gmail.com', 'Databases', 12, 1800.75, 'CONTRACT', '2019-02-01', '10:00:00', '19:00:00', '2026-11-19 09:15:00'),
    (103, 'INS-WB-003', 'Farah', 'Ali', 'farah.ali@gmail.com', 'Web Development', 5, 1200.00, 'PART_TIME', '2023-08-21', '14:00:00', '18:00:00', '2026-11-19 09:30:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (104, 'INS-QA-004', 'Nitin', 'Bose', 'nitin.bose@gmail.com', 'Software Testing', 7, 1350.25, 'PART_TIME', '2022-01-10', '09:30:00', '13:30:00', '2026-11-19 09:45:00'),
    (105, 'INS-PY-005', 'Leela', 'Shah', 'leela.shah@gmail.com', 'Python', 10, 1650.00, 'FULL_TIME', '2020-05-17', '09:00:00', '18:00:00', '2026-11-19 10:00:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (106, 'INS-JS-006', 'Arjun', 'Reddy', 'arjun.reddy@gmail.com', 'JavaScript', 0, 800.50, 'PART_TIME', '2026-10-01', '10:00:00', '14:00:00', '2026-11-19 10:15:00');

INSERT INTO
    instructors(instructor_id, instructor_code, first_name, last_name, email, specialization, years_experience, hourly_rate, employment_type, joined_on, work_start_time, work_end_time, created_at)
VALUES
    (107, 'INS-CL-007', 'Meera', 'Rao', 'meera.rao@gmail.com', 'Cloud Computing', 6, 1750.85, 'CONTRACT', '2022-07-15', '08:30:00', '17:30:00', '2026-11-19 10:30:00');

UPDATE instructors
SET
    hourly_rate = 1500.75
WHERE
    instructor_code = 'INS-QA-004';

UPDATE instructors
SET
    hourly_rate = ROUND(hourly_rate * 1.10, 2)
WHERE
    employment_type = 'FULL_TIME';

UPDATE instructors
SET
    specialization = 'Full-Stack Web Development'
WHERE
    instructor_code = 'INS-WB-003';

UPDATE instructors
SET
    joined_on = '2020-06-01'
WHERE
    instructor_code = 'INS-PY-005';

UPDATE instructors
SET
    work_start_time = '10:00:00',
    work_end_time = '14:00:00'
WHERE
    employment_type = 'PART_TIME';

UPDATE instructors
SET
    created_at = '2026-11-19 11:00:00'
WHERE
    instructor_code = 'INS-JV-001';

SELECT
    instructor_id,
    instructor_code,
    first_name,
    last_name,
    email,
    specialization,
    years_experience,
    hourly_rate,
    employment_type,
    joined_on,
    work_start_time,
    work_end_time,
    created_at
FROM
    instructors;