USE cd_hyd_jfs_59;
CREATE TABLE devices (
    device_id INT,
    asset_tag VARCHAR(20),
    serial_number VARCHAR(50),
    device_name VARCHAR(120),
    device_type VARCHAR(20),
    manufacturer VARCHAR(80),
    model VARCHAR(100),
    purchase_date DATE,
    purchase_price DECIMAL(12,2),
    warranty_expiry DATE,
    last_maintenance_at DATETIME,
    maintenance_cost DECIMAL(10,2),
    device_status VARCHAR(20),
    created_at DATETIME
);

DESCRIBE devices;

SHOW CREATE TABLE devices;

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (1, 'AST-LAP-001', 'SN-LAP-260001', 'Developer Laptop', 'LAPTOP', 'Lenovo', 'ThinkPad E14', '2026-01-15', 78000.50, '2029-01-14', '2026-10-10 10:30:00', 1500.00, 'ASSIGNED', '2026-11-19 09:00:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (2, 'AST-DES-002', 'SN-DES-260002', 'Lab Desktop', 'DESKTOP', 'Dell', 'OptiPlex 7010', '2025-08-10', 62000.00, '2028-08-09', '2026-09-15 11:00:00', 900.50, 'AVAILABLE', '2026-11-19 09:15:00'),
    (3, 'AST-TAB-003', 'SN-TAB-260003', 'Demo Tablet', 'TABLET', 'Samsung', 'Galaxy Tab S9', '2026-03-05', 68000.75, '2028-03-04', '2026-10-20 12:00:00', 500.00, 'AVAILABLE', '2026-11-19 09:30:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (4, 'AST-RTR-004', 'SN-RTR-260004', 'Office Router', 'ROUTER', 'Cisco', 'RV340', '2024-06-20', 28000.00, '2027-06-19', '2026-11-01 09:15:00', 2500.75, 'REPAIR', '2026-11-19 09:45:00'),
    (5, 'AST-PHN-005', 'SN-PHN-260005', 'Retired Phone', 'PHONE', 'Nokia', 'Test Model', '2020-01-10', 8000.00, '2021-01-09', '2025-12-10 14:00:00', 300.00, 'RETIRED', '2026-11-19 10:00:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (6, 'AST-LAP-006', 'SN-LAP-260006', 'Office Laptop', 'LAPTOP', 'HP', 'EliteBook 840', '2026-05-10', 84500.75, '2029-05-09', '2026-10-25 10:00:00', 1200.00, 'AVAILABLE', '2026-11-19 10:15:00');

INSERT INTO
    devices(device_id, asset_tag, serial_number, device_name, device_type, manufacturer, model, purchase_date, purchase_price, warranty_expiry, last_maintenance_at, maintenance_cost, device_status, created_at)
VALUES
    (7, 'AST-DES-007', 'SN-DES-260007', 'Training Desktop', 'DESKTOP', 'Acer', 'Veriton X', '2026-06-15', 55000.00, '2029-06-14', '2026-11-05 11:30:00', 0.00, 'AVAILABLE', '2026-11-19 10:30:00');

UPDATE devices
SET
    device_status = 'ASSIGNED'
WHERE
    asset_tag = 'AST-DES-002';

UPDATE devices
SET
    device_status = 'AVAILABLE'
WHERE
    asset_tag = 'AST-RTR-004';

UPDATE devices
SET
    warranty_expiry = '2030-01-14'
WHERE
    asset_tag = 'AST-LAP-001';

UPDATE devices
SET
    purchase_price = ROUND(purchase_price * 1.03, 2)
WHERE
    device_type = 'TABLET';

UPDATE devices
SET
    last_maintenance_at = '2026-11-15 14:30:00'
WHERE
    asset_tag = 'AST-TAB-003';

UPDATE devices
SET
    maintenance_cost = 1750.50
WHERE
    asset_tag = 'AST-RTR-004';

SELECT
    device_id,
    asset_tag,
    serial_number,
    device_name,
    device_type,
    manufacturer,
    model,
    purchase_date,
    purchase_price,
    warranty_expiry,
    last_maintenance_at,
    maintenance_cost,
    device_status,
    created_at
FROM
    devices;