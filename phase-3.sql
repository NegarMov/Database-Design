INSERT INTO Brand
VALUES ("P063", "Peugeot 206", "type 3"),
    ("P064", "Peugeot 206", "type 4"),
    ("PPLX", "Peugeot Pars", "LX"),
    ("PPAU", "Peugeot Pars", "Auto");

INSERT INTO Color
VALUES ("White"), ("Black"), ("Gray"), ("Blue"), ("Silver"), ("Red");

INSERT INTO Car
VALUES ("5563222", "P063", "White", "Manual"),
    ("54321511", "P063", "Silver", "Manual"),
    ("65452122", "P063", "Black", "Manual"),
    ("65432155", "P064", "Red", "Auto"),
    ("65432144", "P064", "Silver", "Manual"),
    ("32178911", "P064", "Black", "Auto"),
    ("86431322", "PPLX", "White", "Manual"),
    ("12324622", "PPLX", "Blue", "Manual"),
    ("78964133", "PPLX", "Silver", "Manual"),
    ("54531255", "PPAU", "Black", "Auto"),
    ("87846311", "PPAU", "Black", "Auto"),
    ("12387822", "PPAU", "White", "Auto");

INSERT INTO Supplier
VALUES ("Craft IG", "1399-02-23", "1404-02-23", "Ali", "Alizadeh", "Tehran", "Tehran", "Taaleghani"),
    ("AKK", "1400-05-12", "1402-05-12", "Mohammad", "Mohammadi", "Tehran", "Karaj", "Yaser"),
    ("NFS IG", "1398-12-05", "1406-12-05", "Hossein", "Hosseini", "Isfahan", "Isfahan", "Hakim Nezami"),
    ("Naghi Khodrou", "1401-08-19", "1410-08-19", "Naghi", "Naghizadeh", "Kerman", "Kerman", "Shariati");

INSERT INTO Part
VALUES (NULL, "Craft IG", "LED bulb", 1200000, 200),
    (NULL, "Craft IG", "Filter", 15000000, 150),
    (NULL, "AKK", "Shock Absorber", 54000000, 50),
    (NULL, "AKK", "Radiator Part", 22500000, 100),
    (NULL, "NFS IG", "Brake Pad", 9000000, 120),
    (NULL, "NFS IG", "Oil Filter", 7500000, 300),
    (NULL, "Naghi Khodrou", "Brake Discs", 18000000, 20),
    (NULL, "Naghi Khodrou", "Brake Calipers", 22000000, 75);

INSERT INTO PartUsage
VALUES (1, "P063"), (1, "PPLX"), (1, "PPAU"),
    (2, "P064"),
    (3, "P063"), (3, "P064"),
    (4, "PPLX"),
    (5, "PPLX"), (5, "PPAU"),
    (6, "P063"), (6, "P064"), (6, "PPLX"), (6, "PPAU"),
    (7, "P064"),
    (8, "P063"), (8, "P064");

INSERT INTO Customer
VALUES ("1234567889", "Jimmy", "Han", "GA", "Atlanta", "Stroop Hill Road", "09125465213"),
    ("6543214568", "Amy", "Raymond", "NV", "Las Vegas", "Hall Street", "09456545123"),
    ("6543215466", "Jose", "Pry", "CA", "Los Angeles", "Zimmerman Lane", "09214565787"),
    ("1213214564", "Robin", "Preusser", "MA", "Burlington", "Ferguson Street", "09454565787"),
    ("3232154687", "Jimmie", "McMahon", "UT", "Randlett", "Austin Secret Lane", "09886545231"),
    ("7567657982", "Jimmy", "Grafton", "NY", "Syracuse", "Confederate Drive", "09546523113"),
    ("1231245643", "William", "Bone", "MN", "Minneapolis", "Haul Road", "09231234565"),
    ("3221564543", "Chad", "Thompson", "CA", "Ventura", "Creekside Lane", "09136541213"),
    ("8978662213", "Nancy", "Griffin", "FL", "North Gulf Beach", "Chestnut Street", "09453212654"),
    ("3213254233", "David", "Hamm", "IA", "Urbandale", "Hazelwood Avenue", "09143212456");

INSERT INTO PartOrder
VALUES ("6543214568", 3, "1401-02-13 12:45:32"),
    ("7567657982", 7, "1400-12-18 16:35:02");

INSERT INTO CarOrder
VALUES ("8978662213", "65432155", "1401-10-24 02:13:56");