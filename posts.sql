CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(255) UNIQUE
);

INSERT INTO users (name, age, email) VALUES ('Babul Akter', 29, 'babulakterfsd@gmail.com'), ('Robiul Awal', 22, 'xpawal@gmail.com'), ('Monir Hossain', 22, 'monir@gmail.com')

SELECT * from users

CREATE Table posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    user_id INT REFERENCES users(id)
);

INSERT INTO posts (title, user_id) VALUES ('monir er sathe postgre sikhtesi', 1), ('ami kichui sikhtesi na', 2), ('ami babul ke postgre sikhacchi', 3)

SELECT * from posts

SELECT posts.id, posts.title, users.name AS posted_by
FROM posts
JOIN users ON posts.user_id = users.id;

ALTER TABLE users ALTER COLUMN name SET NOT NULL;
ALTER TABLE users ALTER COLUMN age SET NOT NULL;
ALTER TABLE users ALTER COLUMN email SET NOT NULL;


SELECT column_name, is_nullable
FROM information_schema.columns
WHERE table_name = 'posts'
AND (column_name = 'title' OR column_name = 'user_id');

DELETE from users
  WHERE id = 5;

INSERT INTO users (name, age, email) VALUES ('Test person', 29, 'test@gmail.com');

