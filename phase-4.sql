INSERT INTO Customer
VALUES ("1234567810", "Sherlock", "Holmes", "London", "London", "212 Baker Street", "44796268462");

INSERT INTO CarOrder
VALUES ("1234567810", "54531255", DEFAULT);

UPDATE Customer
SET phone_number = "44734278008"
WHERE lastname = "Holmes";

DELETE FROM Customer
WHERE Customer.NIN NOT IN ((SELECT NIN FROM PartOrder) UNION (SELECT NIN FROM CarOrder));