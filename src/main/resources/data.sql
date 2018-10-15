INSERT INTO borrower (name, age, city) VALUES ('John', 26, 'Colombo');
INSERT INTO borrower (name, age, city) VALUES ('Sam', 44, 'Kandy');
INSERT INTO borrower (name, age, city) VALUES ('Anne', 21, 'Galle');

INSERT INTO book (name, author, year) VALUES ('book1', 'author1', 1995);
INSERT INTO book (name, author, year, borrower_id) VALUES ('book2', 'author2', 2008, 1);
INSERT INTO book (name, author, year, borrower_id) VALUES ('book3', 'author3', 2005, 3);
INSERT INTO book (name, author, year, borrower_id) VALUES ('book4', 'author2', 2013, 2);
INSERT INTO book (name, author, year) VALUES ('book5', 'author1', 2002);