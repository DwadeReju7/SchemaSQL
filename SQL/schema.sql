-- Create tables
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR,
  author VARCHAR
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name VARCHAR
);

CREATE TABLE book_categories (
  book_id INTEGER REFERENCES books(id),
  category_id INTEGER REFERENCES categories(id),
  PRIMARY KEY (book_id, category_id)
);

-- Insert sample data
INSERT INTO books (title, author) VALUES 
('1984', 'George Orwell'),
('Pride and Prejudice', 'Jane Austen'),
('The Great Gatsby', 'F. Scott Fitzgerald');

INSERT INTO categories (name) VALUES 
('Fiction'),
('Classic'),
('Dystopian');

INSERT INTO book_categories (book_id, category_id) VALUES
(1, 1), -- 1984 - Fiction
(1, 3), -- 1984 - Dystopian
(2, 1), -- Pride - Fiction
(2, 2), -- Pride - Classic
(3, 1), -- Gatsby - Fiction
(3, 2); -- Gatsby - Classic
