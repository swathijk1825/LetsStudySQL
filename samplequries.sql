-- --find all kids treat preferences 
-- -- select * from Kid_Treat_Preferences;

-- --find kids and choclate preferences

-- SELECT Kids.kid_name, Chocolates.chocolate_name
-- FROM Kid_Treat_Preferences
-- INNER JOIN Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id;



-- INSERT INTO Kids (kid_id, kid_name, age)
-- VALUES
--     (1, 'swati', 2),
--     (2, 'aki', 4),
--     (3, 'reva', 7),
--     (7, 'revade',9),
--     (8, 'revade',10);



-- select * from kids;
-- select * from Kid_Treat_Preferences;



-- select * from kids;

--  select * from choclates;

-- -- select * from donuts;


-- SELECT Kids.kid_name, Donuts.donut_name
-- FROM Kid_Treat_Preferences
-- INNER JOIN Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id;


 -- select * from Chocolates;
-- select * from Kid_Treat_Preferences;



-- SELECT Kids.kid_name, Chocolates.chocolate_name
-- FROM Kid_Treat_Preferences
-- INNER JOIN Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- Left JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id;

-- SELECT Kids.kid_name, Chocolates.chocolate_name
-- FROM Kid_Treat_Preferences
-- INNER JOIN Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- INNER JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id;

-- SELECT kid_id, SUM(price) AS total_price
-- FROM Kid_Treat_Preferences
-- LEFT JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- GROUP BY kid_id, kid_name;


-- INSERT INTO Kids (kid_id, kid_name, age)
-- VALUES
--     (7, 'defr', 2),
--     (8, 'rec', 4),
--     (9, 'bythh', 7);


-- select * from kids;

-- SELECT kid_id, SUM(Chocolates.price) AS total_price
-- FROM Kid_Treat_Preferences
-- LEFT JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- GROUP BY kid_id;

-- select * from Kid_Treat_Preferences;


-- SELECT
--     k1.kid_name AS kid1,
--     k2.kid_name AS kid2
-- FROM
--     Friends
-- INNER JOIN
--     Kids k1 ON Friends.kid1_id = k1.kid_id
-- INNER JOIN
--     Kids k2 ON Friends.kid2_id = k2.kid_id;


-- select * from friends;



-- SELECT Kids.kid_name, TreatPreferences.treat_name
-- FROM Kids
-- LEFT JOIN (
--     SELECT kid_id, chocolate_name AS treat_name FROM Kid_Treat_Preferences
--     LEFT JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
--     UNION
--     SELECT kid_id, donut_name AS treat_name FROM Kid_Treat_Preferences
--     LEFT JOIN Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
--     -- Repeat similar subqueries for other treat types
-- ) AS TreatPreferences ON Kids.kid_id = TreatPreferences.kid_id;



-- SELECT kid_id, chocolate_name AS treat_name FROM Kid_Treat_Preferences
-- LEFT JOIN Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- UNION
-- SELECT kid_id, donut_name AS treat_name FROM Kid_Treat_Preferences
-- LEFT JOIN Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id;




-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     COALESCE(SUM(Chocolates.price), 0) +
--     COALESCE(SUM(Donuts.price), 0) +
--     COALESCE(SUM(IceCreams.price), 0) +
--     COALESCE(SUM(Pizzas.price), 0) AS total_spent
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- GROUP BY
--     Kid_Treat_Preferences.kid_id, Kids.kid_name
-- ORDER BY
--     total_spent DESC;




-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     COALESCE(SUM(Chocolates.price), 0) +
--     COALESCE(SUM(Donuts.price), 0) +
--     COALESCE(SUM(IceCreams.price), 0) +
--     COALESCE(SUM(Pizzas.price), 0) AS total_spent
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- GROUP BY
--     Kid_Treat_Preferences.kid_id, Kids.kid_name
-- ORDER BY
--     total_spent DESC;



-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     Chocolates.chocolate_name,
--     Donuts.donut_name,
--     IceCreams.ice_cream_name,
--     Pizzas.pizza_name
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id;






-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     Chocolates.chocolate_name,
--     Donuts.donut_name,
--     IceCreams.ice_cream_name,
--     Pizzas.pizza_name
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- WHERE
--     Kid_Treat_Preferences.kid_id = 1;



-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     COALESCE(SUM(Chocolates.price), 0) AS chocolate_spent,
--     COALESCE(SUM(Donuts.price), 0) AS donut_spent,
--     COALESCE(SUM(IceCreams.price), 0) AS ice_cream_spent,
--     COALESCE(SUM(Pizzas.price), 0) AS pizza_spent,
--     COALESCE(SUM(Chocolates.price + Donuts.price + IceCreams.price + Pizzas.price), 0) AS total_spent
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- WHERE
--     Kid_Treat_Preferences.kid_id = 1
-- GROUP BY
--     Kid_Treat_Preferences.kid_id, Kids.kid_name;



-- SELECT
--     Kid_Treat_Preferences.kid_id,
--     Kids.kid_name,
--     SUM(Chocolates.price + Donuts.price + IceCreams.price + Pizzas.price) AS total_spent
-- FROM
--     Kid_Treat_Preferences
-- JOIN
--     Kids ON Kid_Treat_Preferences.kid_id = Kids.kid_id
-- LEFT JOIN
--     Chocolates ON Kid_Treat_Preferences.chocolate_id = Chocolates.chocolate_id
-- LEFT JOIN
--     Donuts ON Kid_Treat_Preferences.donut_id = Donuts.donut_id
-- LEFT JOIN
--     IceCreams ON Kid_Treat_Preferences.ice_cream_id = IceCreams.ice_cream_id
-- LEFT JOIN
--     Pizzas ON Kid_Treat_Preferences.pizza_id = Pizzas.pizza_id
-- GROUP BY
--     Kid_Treat_Preferences.kid_id, Kids.kid_name
-- ORDER BY
--     total_spent DESC;


-- SELECT *
-- FROM Chocolates
-- ORDER BY price DESC
-- LIMIT 1;
select min(treat_price) as min_price
  from
  (SELECT MIN(price) AS treat_price FROM Chocolates
    union
  SELECT MIN(price) AS treat_price FROM Donuts
    union
  SELECT MIN(price) AS treat_price FROM IceCreams
    union
  SELECT MIN(price) AS treat_price FROM Pizzas)
as treats;


