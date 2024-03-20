SELECT o.order_id, o.user_id, u.name, o.product, o.price
FROM Orders as o
JOIN Users as u ON u.user_id = o.user_id

SELECT u.user_id, u.name, u.email
FROM Users as u 
LEFT JOIN Orders as o ON o.user_id = u.user_id
WHERE o.user_id IS NULL

SELECT u.user_id, u.name, SUM(o.price) as total_spent
FROM Users as u
JOIN Orders as o ON o.user_id = u.user_id
GROUP BY u.user_id, u.name

SELECT u.user_id, u.name, AVG(o.price) as average_price
FROM Users as u
JOIN Orders as o ON o.user_id = u.user_id
GROUP BY u.user_id, u.name

SELECT TOP(1) u.user_id, u.name, SUM(o.price) as total_spent
FROM Users as u
JOIN Orders as o ON o.user_id = u.user_id
GROUP BY u.user_id, u.name
ORDER BY total_spent DESC

