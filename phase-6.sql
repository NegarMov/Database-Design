ALTER TABLE Car
ADD is_sold BOOLEAN NOT NULL DEFAULT 0;

UPDATE Car
SET is_sold = 1
WHERE Car.VIN IN (SELECT car_VIN AS VIN FROM CarOrder);

START TRANSACTION;
INSERT INTO CarOrder
VALUES ("8978662213", "12324622", DEFAULT);

UPDATE Car 
SET is_sold = 1
WHERE VIN = "12324622";
COMMIT;

START TRANSACTION;
INSERT INTO PartOrder
VALUES ("8978662213", 6, DEFAULT);

UPDATE Part 
SET quantity = quantity - 1
WHERE ID = 6;
COMMIT;