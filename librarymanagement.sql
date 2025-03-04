USE librarymanagement;

CREATE TABLE authors (
  author_id INT AUTO_INCREMENT PRIMARY KEY,
  author_name VARCHAR(50)
);

CREATE TABLE genres (
  genre_id INT AUTO_INCREMENT PRIMARY KEY,
  genre_name VARCHAR(50)
);

CREATE TABLE books (
  book_id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(50),
  publication_year YEAR,
  author_id INT, 
  FOREIGN KEY (author_id) REFERENCES authors(author_id),
  genre_id INT, 
  FOREIGN KEY (genre_id) REFERENCES genres(genre_id)
);

CREATE TABLE users (
  user_id INT AUTO_INCREMENT PRIMARY KEY,
  user_name VARCHAR(50),
  email VARCHAR(50)
);

CREATE TABLE borrowed_books (
  borrow_id INT AUTO_INCREMENT PRIMARY KEY,
  book_id INT,
  FOREIGN KEY (book_id) REFERENCES books(book_id),
  user_id INT, 
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  borrow_date DATE, 
  return_date DATE
);
