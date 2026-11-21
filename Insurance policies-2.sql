USE cd_hyd_jfs_59;
CREATE TABLE insurance_policies (
    policy_id INT,
    policy_number VARCHAR(14),
    policyholder_name VARCHAR(120),
    policy_type VARCHAR(20),
    coverage_amount DECIMAL(14,2),
    premium_amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    payment_frequency VARCHAR(20),
    payment_time TIME,
    last_payment_at DATETIME,
    nominee_name VARCHAR(120),
    policy_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE insurance_policies;

SHOW CREATE TABLE insurance_policies;

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (1, 'POL00000000001', 'Aditi Rao', 'HEALTH', 1000000.00, 18000.50, '2026-01-01', '2026-12-31', 'ANNUAL', '09:00:00', '2026-01-01 09:05:00', 'Rohan Rao', 'ACTIVE', '2026-11-19 09:00:00'),
    (2, 'POL00000000002', 'Dev Kapoor', 'VEHICLE', 800000.00, 22000.75, '2026-04-15', '2027-04-14', 'QUARTERLY', '10:00:00', '2026-10-15 10:15:00', NULL, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (3, 'POL00000000003', 'Meera Nair', 'LIFE', 5000000.00, 36000.00, '2026-06-01', '2046-05-31', 'ANNUAL', '11:00:00', '2026-06-01 11:05:00', 'Arun Nair', 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (4, 'POL00000000004', 'Kabir Shah', 'TRAVEL', 500000.00, 4500.50, '2026-10-01', '2026-10-31', 'MONTHLY', '08:30:00', '2026-10-01 08:35:00', NULL, 'ACTIVE', '2026-11-19 09:45:00'),
    (5, 'POL00000000005', 'Sara Das', 'HOME', 2000000.00, 15000.25, '2025-01-01', '2025-12-31', 'ANNUAL', '12:00:00', '2025-01-01 12:05:00', NULL, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (6, 'POL00000000006', 'Arjun Mehta', 'HEALTH', 1500000.00, 12500.75, '2026-11-01', '2027-10-31', 'MONTHLY', '13:00:00', '2026-11-01 13:05:00', 'Neha Mehta', 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO
    insurance_policies(policy_id, policy_number, policyholder_name, policy_type, coverage_amount, premium_amount, start_date, end_date, payment_frequency, payment_time, last_payment_at, nominee_name, policy_status, created_at)
VALUES
    (7, 'POL00000000007', 'Priya Menon', 'LIFE', 3000000.00, 27500.50, '2026-11-10', '2046-11-09', 'ANNUAL', '15:30:00', '2026-11-10 15:35:00', 'Rahul Menon', 'ACTIVE', '2026-11-19 10:30:00');

UPDATE insurance_policies
SET
    coverage_amount = 1250000.00
WHERE
    policy_number = 'POL00000000001';

UPDATE insurance_policies
SET
    nominee_name = 'Sara Kapoor'
WHERE
    policy_number = 'POL00000000002';

UPDATE insurance_policies
SET
    premium_amount = ROUND(premium_amount * 1.05, 2)
WHERE
    policy_type = 'VEHICLE' AND policy_status = 'ACTIVE';

UPDATE insurance_policies
SET
    payment_frequency = 'ANNUAL'
WHERE
    policy_number = 'POL00000000004';

UPDATE insurance_policies
SET
    last_payment_at = '2026-11-19 15:00:00'
WHERE
    policy_number = 'POL00000000003';

UPDATE insurance_policies
SET
    end_date = '2027-05-14'
WHERE
    policy_number = 'POL00000000002';

SELECT
    policy_id,
    policy_number,
    policyholder_name,
    policy_type,
    coverage_amount,
    premium_amount,
    start_date,
    end_date,
    payment_frequency,
    payment_time,
    last_payment_at,
    nominee_name,
    policy_status,
    created_at
FROM
    insurance_policies;
