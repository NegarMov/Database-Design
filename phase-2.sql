CREATE TABLE IF NOT EXISTS Brand (
    code CHAR(4),
    brand_name VARCHAR(20) NOT NULL,
    model VARCHAR(20) NOT NULL,
    PRIMARY KEY (code)
);

CREATE TABLE IF NOT EXISTS Color (
    color_name VARCHAR(20),
    PRIMARY KEY (color_name)
);

CREATE TABLE IF NOT EXISTS Car (
    VIN CHAR(8),
    brand_code CHAR(4),
    color VARCHAR(20) NOT NULL,
    transmission VARCHAR(10) DEFAULT 'Manual',
    PRIMARY KEY (VIN),
    FOREIGN KEY (brand_code) REFERENCES Brand(code),
    FOREIGN KEY (color) REFERENCES Color(color_name),
    CHECK(transmission IN ('Auto', 'Manual'))
);

CREATE TABLE IF NOT EXISTS Supplier (
    supplier_name VARCHAR(20),
    contract_start DATE NOT NULL,
    contract_end DATE NOT NULL,
    manager_firstname VARCHAR(20) NOT NULL,
    manager_lastname VARCHAR(20) NOT NULL,
    office_province VARCHAR(20),
    office_city VARCHAR(20),
    office_street VARCHAR(20),
    PRIMARY KEY (supplier_name),
    CHECK(contract_start < contract_end)
);

CREATE TABLE IF NOT EXISTS Part (
    ID INT AUTO_INCREMENT,
    supplier VARCHAR(20) NOT NULL,
    part_name VARCHAR(20) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    quantity INT NOT NULL,
    PRIMARY KEY (ID),
    FOREIGN KEY (supplier) REFERENCES Supplier(supplier_name)
);

CREATE TABLE IF NOT EXISTS PartUsage (
    part_ID INT,
    brand_code VARCHAR(4),
    PRIMARY KEY (part_ID, brand_code),
    FOREIGN KEY (part_ID) REFERENCES Part(ID),
    FOREIGN KEY (brand_code) REFERENCES Brand(code)
);

CREATE TABLE IF NOT EXISTS Customer (
    NIN CHAR(10),
    firstname VARCHAR(20) NOT NULL,
    lastname VARCHAR(20) NOT NULL,
    address_province VARCHAR(20) NOT NULL,
    address_city VARCHAR(20) NOT NULL,
    address_street VARCHAR(20) NOT NULL,
    phone_number CHAR(11) NOT NULL,
    PRIMARY KEY (NIN)
);

CREATE TABLE IF NOT EXISTS PartOrder (
    NIN CHAR(10),
    part_ID INT,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (NIN, part_ID, order_date),
    FOREIGN KEY (NIN) REFERENCES Customer(NIN),
    FOREIGN KEY (part_ID) REFERENCES Part(ID)
);

CREATE TABLE IF NOT EXISTS CarOrder (
    NIN CHAR(10),
    car_VIN CHAR(8),
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (NIN, car_VIN, order_date),
    FOREIGN KEY (NIN) REFERENCES Customer(NIN),
    FOREIGN KEY (car_VIN) REFERENCES Car(VIN)
);