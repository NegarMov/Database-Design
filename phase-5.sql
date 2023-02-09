CREATE view supplier_supplies AS
SELECT *
FROM Part INNER JOIN Supplier ON Supplier.supplier_name = Part.supplier;

CREATE view all_orders AS
SELECT NIN, 'Part' AS order_type, part_ID, NULL AS car_VIN, order_date
FROM PartOrder
UNION
SELECT NIN, 'Car' AS order_type, NULL AS part_ID, car_VIN, order_date
FROM CarOrder;

CREATE view customer_orders AS
SELECT *
FROM Customer NATURAL JOIN all_orders;

CREATE view car_brand_model AS
SELECT Car.*, Brand.brand_name, Brand.model
FROM Car INNER JOIN Brand ON Car.brand_code = Brand.code;