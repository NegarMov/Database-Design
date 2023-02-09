CREATE assertion nonzero_quantity CHECK (
    0 < ALL (SELECT quantity FROM Part)
);

CREATE assertion unique_carOrder CHECK (
    COUNT(CarOrder.car_VIN) = COUNT(DISTINCT CarOrder.car_VIN)
);