USE cd_hyd_jfs_59;
CREATE TABLE job_postings (
    job_id INT,
    job_code VARCHAR(15),
    job_title VARCHAR(150),
    department VARCHAR(100),
    location VARCHAR(100),
    employment_type VARCHAR(20),
    minimum_salary DECIMAL(12,2),
    maximum_salary DECIMAL(12,2),
    vacancies INT,
    posted_date DATE,
    closing_date DATE,
    interview_start_time TIME,
    interview_end_time TIME,
    last_updated_at DATETIME,
    job_status VARCHAR(20)
);

DESCRIBE job_postings;

SHOW CREATE TABLE job_postings;

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (1, 'JOB-JAVA-001', 'Java Developer', 'Engineering', 'Bengaluru', 'FULL_TIME', 700000.00, 1200000.00, 3, '2026-11-01', '2026-12-01', '10:00:00', '12:00:00', '2026-11-19 09:00:00', 'OPEN'),
    (2, 'JOB-QA-002', 'QA Automation Engineer', 'Quality Assurance', 'Hyderabad', 'CONTRACT', 600000.50, 900000.00, 2, '2026-11-02', '2026-11-25', '14:00:00', '16:00:00', '2026-11-19 09:15:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (3, 'JOB-INT-003', 'Software Intern', 'Engineering', 'Chennai', 'INTERNSHIP', 180000.00, 240000.00, 5, '2026-11-03', '2026-11-20', '09:00:00', '11:00:00', '2026-11-19 09:30:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (4, 'JOB-HR-004', 'HR Coordinator', 'Human Resources', 'Mumbai', 'PART_TIME', 300000.00, 450000.75, 1, '2026-11-04', '2026-11-28', '11:00:00', '13:00:00', '2026-11-19 09:45:00', 'DRAFT'),
    (5, 'JOB-OLD-005', 'Cancelled Test Role', 'Training', 'Pune', 'FULL_TIME', 250000.00, 350000.00, 1, '2026-10-01', '2026-10-15', '15:00:00', '17:00:00', '2026-11-19 10:00:00', 'CANCELLED');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (6, 'JOB-PY-006', 'Python Developer', 'Engineering', 'Hyderabad', 'FULL_TIME', 550000.75, 850000.50, 2, '2026-11-05', '2026-12-05', '09:30:00', '11:30:00', '2026-11-19 10:15:00', 'OPEN');

INSERT INTO
    job_postings(job_id, job_code, job_title, department, location, employment_type, minimum_salary, maximum_salary, vacancies, posted_date, closing_date, interview_start_time, interview_end_time, last_updated_at, job_status)
VALUES
    (7, 'JOB-DATA-007', 'Data Analyst', 'Analytics', 'Bengaluru', 'FULL_TIME', 450000.50, 750000.75, 3, '2026-11-06', '2026-12-10', '09:30:00', '11:30:00', '2026-11-19 10:30:00', 'OPEN');

UPDATE job_postings
SET
    maximum_salary = 1300000.00
WHERE
    job_code = 'JOB-JAVA-001';

UPDATE job_postings
SET
    vacancies = 4
WHERE
    job_code = 'JOB-QA-002';

UPDATE job_postings
SET
    job_status = 'OPEN'
WHERE
    job_code = 'JOB-HR-004';

UPDATE job_postings
SET
    minimum_salary = ROUND(minimum_salary * 1.08, 2),
    maximum_salary = ROUND(maximum_salary * 1.08, 2)
WHERE
    department = 'Engineering' AND job_status = 'OPEN';

UPDATE job_postings
SET
    closing_date = '2026-11-30'
WHERE
    job_code = 'JOB-INT-003';

UPDATE job_postings
SET
    interview_start_time = '14:00:00',
    interview_end_time = '16:00:00'
WHERE
    job_code = 'JOB-JAVA-001';

UPDATE job_postings
SET
    last_updated_at = '2026-11-19 15:00:00'
WHERE
    job_code = 'JOB-JAVA-001';

SELECT
    job_id,
    job_code,
    job_title,
    department,
    location,
    employment_type,
    minimum_salary,
    maximum_salary,
    vacancies,
    posted_date,
    closing_date,
    interview_start_time,
    interview_end_time,
    last_updated_at,
    job_status
FROM
    job_postings;