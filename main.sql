-- Table: Kids
CREATE TABLE Kids (
    kid_id INT PRIMARY KEY,
    kid_name VARCHAR(50),
    age INT
);

-- Table: Chocolates
CREATE TABLE Chocolates (
    chocolate_id INT PRIMARY KEY,
    chocolate_name VARCHAR(50),
    flavor VARCHAR(50),
    price DECIMAL(5, 2)
);

-- Table: Donuts
CREATE TABLE Donuts (
    donut_id INT PRIMARY KEY,
    donut_name VARCHAR(50),
    glaze VARCHAR(50),
    price DECIMAL(5, 2)
);

-- Table: IceCreams
CREATE TABLE IceCreams (
    ice_cream_id INT PRIMARY KEY,
    ice_cream_name VARCHAR(50),
    flavor VARCHAR(50),
    price DECIMAL(5, 2)
);

-- Table: Pizzas
CREATE TABLE Pizzas (
    pizza_id INT PRIMARY KEY,
    pizza_name VARCHAR(50),
    toppings VARCHAR(100),
    price DECIMAL(5, 2)
);

-- Table: Kid_Treat_Preferences
CREATE TABLE Kid_Treat_Preferences (
    preference_id INT PRIMARY KEY,
    kid_id INT,
    chocolate_id INT,
    donut_id INT,
    ice_cream_id INT,
    pizza_id INT,
    FOREIGN KEY (kid_id) REFERENCES Kids(kid_id),
    FOREIGN KEY (chocolate_id) REFERENCES Chocolates(chocolate_id),
    FOREIGN KEY (donut_id) REFERENCES Donuts(donut_id),
    FOREIGN KEY (ice_cream_id) REFERENCES IceCreams(ice_cream_id),
    FOREIGN KEY (pizza_id) REFERENCES Pizzas(pizza_id)
);

CREATE TABLE Kids (
    kid_id INTEGER PRIMARY KEY,
    kid_name TEXT NOT NULL
);

CREATE TABLE Friends (
    friendship_id INTEGER PRIMARY KEY,
    kid1_id INTEGER,
    kid2_id INTEGER,
    FOREIGN KEY (kid1_id) REFERENCES Kids(kid_id),
    FOREIGN KEY (kid2_id) REFERENCES Kids(kid_id)
);

INSERT INTO Kids (kid_name) VALUES ('Alice');
INSERT INTO Kids (kid_name) VALUES ('Bob');
INSERT INTO Kids (kid_name) VALUES ('Charlie');

-- Insert friendships
INSERT INTO Friends (kid1_id, kid2_id) VALUES (1, 2);  -- Alice and Bob are friends
INSERT INTO Friends (kid1_id, kid2_id) VALUES (2, 3);  -- Bob and Charlie are friends

-- Inserting data into the Kids table
INSERT INTO Kids (kid_id, kid_name, age)
VALUES
    (1, 'swati', 2),
    (2, 'aki', 4),
    (3, 'reva', 7),
    (4, 'revade',9);

    

-- Inserting data into the Chocolates table
INSERT INTO Chocolates (chocolate_id, chocolate_name, flavor, price)
VALUES
    (101, 'Milk Chocolate Bar', 'Milk', 2.50),
    (102, 'Dark Chocolate Truffles', 'Dark', 4.00),
    (103, 'White Chocolate Lollipop', 'White', 1.75);

-- Inserting data into the Donuts table
INSERT INTO Donuts (donut_id, donut_name, glaze, price)
VALUES
    (201, 'Glazed Donut', 'Sugar', 1.50),
    (202, 'Chocolate Frosted Donut', 'Chocolate', 2.00),
    (203, 'Strawberry Jelly Donut', 'Strawberry', 2.25);

-- Inserting data into the IceCreams table
INSERT INTO IceCreams (ice_cream_id, ice_cream_name, flavor, price)
VALUES
    (301, 'Vanilla Ice Cream', 'Vanilla', 3.00),
    (302, 'Chocolate Chip Cookie Dough Ice Cream', 'Chocolate Chip Cookie Dough', 4.50),
    (303, 'Strawberry Sorbet', 'Strawberry', 3.25);

-- Inserting data into the Pizzas table
INSERT INTO Pizzas (pizza_id, pizza_name, toppings, price)
VALUES
    (401, 'Margherita Pizza', 'Tomato, Mozzarella, Basil', 8.00),
    (402, 'Pepperoni Pizza', 'Pepperoni, Cheese', 9.50),
    (403, 'Vegetarian Pizza', 'Mushrooms, Bell Peppers, Onions', 7.50);

-- Inserting data into the Kid_Treat_Preferences table
INSERT INTO Kid_Treat_Preferences (preference_id, kid_id, chocolate_id, donut_id, ice_cream_id, pizza_id)
VALUES
    (1, 1, 101, 201, 301, 401),
    (2, 2, 102, 202, 302, 402),
    (3, 3, 103, 203, 303, 403),
    (4, 1, 102, 202, 302, 402);


