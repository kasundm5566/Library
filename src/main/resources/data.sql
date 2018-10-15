INSERT INTO borrower (first_name, last_name) VALUES ('John', 'Smith');
INSERT INTO borrower (first_name, last_name) VALUES ('Sam', 'Carlos');
INSERT INTO borrower (first_name, last_name) VALUES ('Anne', 'Johnson');

INSERT INTO book (title, author) VALUES ('book1', 'author1');
INSERT INTO book (title, author, borrower_id, borrowed_date, return_date) VALUES ('book2', 'author2', 1, '2018-10-01', '2018-10-08');
INSERT INTO book (title, author, borrower_id, borrowed_date, return_date) VALUES ('book3', 'author3', 3, '2018-10-05', '2018-10-12');
INSERT INTO book (title, author, borrower_id, borrowed_date, return_date) VALUES ('book4', 'author2', 2, '2018-10-12', '2018-10-19');
INSERT INTO book (title, author) VALUES ('book5', 'author1');