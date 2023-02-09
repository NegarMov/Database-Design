drop user 'john_doe'@'%';

FLUSH PRIVILEGES;

CREATE user 'john_doe'@'%' IDENTIFIED BY 'johndoe2000johndoe';

REVOKE ALL PRIVILEGES ON *.* FROM 'john_doe'@'%';

GRANT SELECT ON *.* TO 'john_doe'@'%';