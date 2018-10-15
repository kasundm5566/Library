INSERT INTO borrower (name, age, city) VALUES ('John', 26, 'Colombo');
INSERT INTO borrower (name, age, city) VALUES ('Sam', 44, 'Kandy');
INSERT INTO borrower (name, age, city) VALUES ('Anne', 21, 'Galle');

INSERT INTO book (name, author, year) VALUES ('book1', 'author1', 1995);
INSERT INTO book (name, author, year, borrower_id, borrowed_date, return_date) VALUES ('book2', 'author2', 2008, 1, '2018-10-01', '2018-10-08');
INSERT INTO book (name, author, year, borrower_id, borrowed_date, return_date) VALUES ('book3', 'author3', 2005, 3, '2018-10-05', '2018-10-12');
INSERT INTO book (name, author, year, borrower_id, borrowed_date, return_date) VALUES ('book4', 'author2', 2013, 2, '2018-10-12', '2018-10-19');
INSERT INTO book (name, author, year) VALUES ('book5', 'author1', 2002);