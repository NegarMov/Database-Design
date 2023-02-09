CREATE TABLE IF NOT EXISTS BrandLogs (
    ID INT AUTO_INCREMENT,
    brand_code CHAR(4) NOT NULL,
    old_name VARCHAR(20),
    new_name VARCHAR(20),
    changet_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (ID)
);

CREATE trigger brand_insert_trigger AFTER INSERT ON Brand
FOR EACH ROW
BEGIN
  INSERT INTO BrandLogs (brand_code, new_name) values (new.code, new.brand_name);
END;

CREATE trigger brand_update_trigger AFTER UPDATE ON Brand
FOR EACH ROW
BEGIN
  INSERT INTO BrandLogs (brand_code, old_name, new_name) values (new.code, old.brand_name, new.brand_name);
END;

/*INSERT INTO Brand
VALUES ("P065", "Peugeot 206", "type 5");

UPDATE Brand
SET brand_name = "Peugeot 207"
WHERE brand_name = "Peugeot 206" AND model = "type 5";*/