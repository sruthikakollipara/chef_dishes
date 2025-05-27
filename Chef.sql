CREATE DATABASE IF NOT EXISTS chef_dishes;
USE chef_dishes;

CREATE TABLE dish (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    image_url VARCHAR(255)
);
CREATE TABLE category (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

ALTER TABLE dish ADD COLUMN category_id INT,
ADD FOREIGN KEY (category_id) REFERENCES category(id);

CREATE TABLE chef (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    experience INT, 
    speciality VARCHAR(100),
    image_url VARCHAR(255) 
);

INSERT INTO dish (ID,name, description, price, image_url) VALUES
(1,'Butter Chicken', 'Rich and creamy tomato-based chicken curry.', 320.00, 'https://example.com/images/butter_chicken.jpg'),
(2,'Palak Paneer', 'Soft paneer cubes in a spiced spinach gravy.', 270.00, 'https://example.com/images/palak_paneer.jpg'),
(3,'Chicken Biryani', 'Fragrant basmati rice with spiced chicken.', 350.00, 'https://example.com/images/chicken_biryani.jpg'),
(4,'Masala Dosa', 'Crispy rice crepe filled with spicy potato masala.', 130.00, 'https://example.com/images/masala_dosa.jpg'),
(5,'Chole Bhature', 'Spicy chickpea curry with deep-fried bread.', 150.00, 'https://example.com/images/chole_bhature.jpg'),
(6,'Rajma Chawal', 'Kidney beans curry served with steamed rice.', 140.00, 'https://example.com/images/rajma_chawal.jpg'),
(7,'Malai Kofta', 'Fried paneer-potato balls in creamy gravy.', 260.00, 'https://example.com/images/malai_kofta.jpg'),
(8,'Samosa', 'Fried pastry filled with spiced potatoes and peas.', 30.00, 'https://example.com/images/samosa.jpg'),
(9,'Hyderabadi Haleem', 'Slow-cooked wheat and meat porridge.', 300.00, 'https://example.com/images/haleem.jpg'),
(10,'Rasgulla', 'Soft, spongy balls soaked in light sugar syrup.', 90.00, 'https://example.com/images/rasgulla.jpg');


INSERT INTO category (name) VALUES ('Main Course'), ('Starter'), ('Dessert');

INSERT INTO chef (name, experience, speciality, image_url) VALUES
('Chef Ananya Kapoor', 10, 'North Indian Cuisine', 'https://example.com/images/ananya.jpg'),
('Chef Rohan Mehta', 8, 'Italian Cuisine', 'https://example.com/images/rohan.jpg'),
('Chef Priya Sharma', 12, 'Desserts', 'https://example.com/images/priya.jpg');

SELECT * FROM dish;

SELECT * FROM chef;

SELECT * FROM category;