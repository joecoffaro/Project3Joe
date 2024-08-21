DROP TABLE IF EXISTS census,
DROP TABLE IF EXISTS groceries,
DROP TABLE IF EXISTS liquor;

CREATE TABLE census (
    area_no INT NOT NULL,
    area_name Varchar(30),
    housing_percent FLOAT,
    pov_percent FLOAT,
    unemp_percent FLOAT,
    hs_only_percent FLOAT,
    jr_sr_percent FLOAT,
    per_capita_income FLOAT,
    hrdship_index FLOAT,
    PRIMARY KEY (area_no)
)

CREATE TABLE groceries (
    name VARCHAR(30) NOT NULL,
    address VARCHAR(50) NOT NULL,
    status VARCHAR(6),
    zip VARCHAR(10),
    updated VARCHAR(30),
    location VARCHAR(50),
)
ALTER TABLE groceries 
ADD COLUMN store_id INT NOT NULL PRIMARY KEY;

CREATE TABLE liquor (
    acc_no FLOAT NOT NULL,
    site_no INT,
    legal_name VARCHAR(50)NOT NULL,
    bus_name VARCHAR(50) NOT NULL,
    address VARCHAR(30) NOT NULL,
    state VARCHAR(2),
    zip VARCHAR(5),
    ward INT,
    precinct INT,
    po_district INT,
    lic_code VARCHAR(4),
    lic_desc VARCHAR(15),
    lic_no FLOAT,
    app_type VARCHAR(5),
    pay_date VARCHAR(10),
    lic_start VARCHAR(10),
    lic_end VARCHAR(10),
    lic_exp VARCHAR(10),
    issue_date VARCHAR(10),
    status VARCHAR(3),
    lat FLOAT,
    lon FLOAT,
    location VARCHAR(40)
    PRIMARY KEY (acc_no)
)
ALTER TABLE liquor
ADD COLUMN store_id INT NOT NULL PRIMARY KEY;

SELECT * FROM census;
SELECT * FROM groceries;
SELECT * FROM liquor;