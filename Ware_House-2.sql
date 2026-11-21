USE cd_hyd_jfs_59;
CREATE TABLE warehouses (
    warehouse_id INT,
    warehouse_code VARCHAR(10),
    warehouse_name VARCHAR(100),
    city VARCHAR(80),
    state VARCHAR(80),
    capacity_units INT,
    occupied_units INT,
    monthly_rent DECIMAL(12,2),
    temperature_controlled INT,
    operational_status VARCHAR(20),
    opening_time TIME,
    closing_time TIME,
    last_inspection DATE,
    created_at DATETIME
);

DESCRIBE warehouses;

SHOW CREATE TABLE warehouses;

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (101, 'WH-BLR-01', 'Bengaluru Central', 'Bengaluru', 'Karnataka', 10000, 6400, 125000.50, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-01', '2026-11-19 09:00:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (102, 'WH-HYD-02', 'Hyderabad North', 'Hyderabad', 'Telangana', 8000, 7900, 98000.00, 1, 'ACTIVE', '07:00:00', '22:00:00', '2026-09-15', '2026-11-19 09:15:00'),
    (103, 'WH-MUM-03', 'Mumbai Port Store', 'Mumbai', 'Maharashtra', 15000, 9000, 175500.75, 0, 'MAINTENANCE', '09:00:00', '18:00:00', '2026-08-20', '2026-11-19 09:30:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (104, 'WH-KOC-04', 'Kochi Cold Hub', 'Kochi', 'Kerala', 6000, 3200, 85000.25, 1, 'ACTIVE', '06:00:00', '21:00:00', '2026-10-10', '2026-11-19 09:45:00'),
    (105, 'WH-PUN-05', 'Pune Distribution Hub', 'Pune', 'Maharashtra', 5000, 2500, 75000.00, 0, 'ACTIVE', '08:30:00', '19:30:00', '2026-10-25', '2026-11-19 10:00:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (106, 'WH-CHN-06', 'Chennai Storage Hub', 'Chennai', 'Tamil Nadu', 12000, 5500, 115750.85, 0, 'ACTIVE', '08:00:00', '20:00:00', '2026-10-15', '2026-11-19 10:15:00');

INSERT INTO
    warehouses(warehouse_id, warehouse_code, warehouse_name, city, state, capacity_units, occupied_units, monthly_rent, temperature_controlled, operational_status, opening_time, closing_time, last_inspection, created_at)
VALUES
    (107, 'WH-DEL-07', 'Delhi Cold Storage', 'Delhi', 'Delhi', 9000, 4200, 95000.75, 1, 'ACTIVE', '06:30:00', '20:30:00', '2026-10-20', '2026-11-19 10:30:00');

UPDATE warehouses
SET
    occupied_units = occupied_units + 500
WHERE
    warehouse_code = 'WH-BLR-01';

UPDATE warehouses
SET
    occupied_units = occupied_units - 1000
WHERE
    warehouse_code = 'WH-HYD-02';

UPDATE warehouses
SET
    operational_status = 'ACTIVE'
WHERE
    warehouse_code = 'WH-MUM-03';

UPDATE warehouses
SET
    monthly_rent = ROUND(monthly_rent * 1.055, 2)
WHERE
    temperature_controlled = 1;

UPDATE warehouses
SET
    last_inspection = '2026-11-15'
WHERE
    warehouse_code = 'WH-KOC-04';

UPDATE warehouses
SET
    opening_time = '07:00:00',
    closing_time = '21:00:00'
WHERE
    operational_status = 'ACTIVE';

SELECT
    warehouse_id,
    warehouse_code,
    warehouse_name,
    city,
    state,
    capacity_units,
    occupied_units,
    monthly_rent,
    temperature_controlled,
    operational_status,
    opening_time,
    closing_time,
    last_inspection,
    created_at
FROM
    warehouses;