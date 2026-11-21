USE cd_hyd_jfs_59;
CREATE TABLE subscriptions (
    subscription_id INT,
    subscription_code VARCHAR(16),
    subscriber_name VARCHAR(120),
    subscriber_email VARCHAR(120),
    plan_name VARCHAR(60),
    billing_cycle VARCHAR(20),
    amount DECIMAL(10,2),
    start_date DATE,
    end_date DATE,
    renewal_time TIME,
    last_payment_at DATETIME,
    auto_renew INT,
    subscription_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE subscriptions;

SHOW CREATE TABLE subscriptions;

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (101, 'SUB260001', 'Aarav Nair', 'aarav.nair@gmail.com', 'Standard', 'MONTHLY', 499.00, '2026-11-01', '2026-11-30', '01:00:00', '2026-11-01 01:05:00', 1, 'ACTIVE', '2026-11-19 09:00:00'),
    (102, 'SUB260002', 'Diya Shah', 'diya.shah@gmail.com', 'Premium', 'YEARLY', 4999.50, '2026-01-15', '2027-01-14', '02:00:00', '2026-11-15 02:10:00', 1, 'ACTIVE', '2026-11-19 09:15:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (103, 'SUB260003', 'Kabir Rao', 'kabir.rao@gmail.com', 'Basic', 'MONTHLY', 199.00, '2026-11-10', '2026-12-09', '03:00:00', '2026-11-10 03:05:00', 1, 'ACTIVE', '2026-11-19 09:30:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (104, 'SUB260004', 'Meera Bose', 'meera.bose@gmail.com', 'Premium', 'QUARTERLY', 1399.75, '2026-10-01', '2026-12-31', '04:00:00', '2026-10-01 04:15:00', 0, 'PAUSED', '2026-11-19 09:45:00'),
    (105, 'SUB260005', 'Rohan Das', 'rohan.das@gmail.com', 'Standard', 'MONTHLY', 499.00, '2026-08-01', '2026-08-31', '01:30:00', '2026-08-01 01:35:00', 0, 'CANCELLED', '2026-11-19 10:00:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (106, 'SUB260006', 'Ananya Reddy', 'ananya.reddy@gmail.com', 'Basic', 'MONTHLY', 349.75, '2026-11-15', '2026-12-14', '05:00:00', '2026-11-15 05:10:00', 1, 'ACTIVE', '2026-11-19 10:15:00');

INSERT INTO
    subscriptions(subscription_id, subscription_code, subscriber_name, subscriber_email, plan_name, billing_cycle, amount, start_date, end_date, renewal_time, last_payment_at, auto_renew, subscription_status, created_at)
VALUES
    (107, 'SUB260007', 'Vikram Rao', 'vikram.rao@gmail.com', 'Premium', 'YEARLY', 5999.50, '2026-11-19', '2027-11-18', '05:30:00', '2026-11-19 05:35:00', 1, 'ACTIVE', '2026-11-19 10:30:00');

UPDATE subscriptions
SET
    plan_name = 'Premium',
    amount = 799.50
WHERE
    subscription_code = 'SUB260001';

UPDATE subscriptions
SET
    subscription_status = 'ACTIVE',
    auto_renew = 1
WHERE
    subscription_code = 'SUB260004';

UPDATE subscriptions
SET
    amount = ROUND(amount * 1.05, 2)
WHERE
    billing_cycle = 'MONTHLY' AND subscription_status = 'ACTIVE';

UPDATE subscriptions
SET
    subscription_status = 'CANCELLED',
    auto_renew = 0,
    end_date = '2026-11-19'
WHERE
    subscription_code = 'SUB260003';

UPDATE subscriptions
SET
    renewal_time = '02:30:00'
WHERE
    billing_cycle = 'YEARLY';

UPDATE subscriptions
SET
    last_payment_at = '2026-11-19 11:00:00'
WHERE
    subscription_code = 'SUB260002';

SELECT
    subscription_id,
    subscription_code,
    subscriber_name,
    subscriber_email,
    plan_name,
    billing_cycle,
    amount,
    start_date,
    end_date,
    renewal_time,
    last_payment_at,
    auto_renew,
    subscription_status,
    created_at
FROM
    subscriptions;