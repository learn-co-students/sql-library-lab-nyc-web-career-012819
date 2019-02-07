INSERT INTO series (title, author_id, subgenre_id) VALUES ("A Song of Ice and Fire", 1, 1);
INSERT INTO series (title, author_id, subgenre_id) VALUES ("Second Series", 2, 2);

INSERT INTO subgenres (name) VALUES ("medieval");
INSERT INTO subgenres (name) VALUES ("space opera");

INSERT INTO authors (name) VALUES ("George R. R. Martin");
INSERT INTO authors (name) VALUES ("Second Author");

INSERT INTO books (title, year, series_id) VALUES ("Game of Thrones", 1996, 1);
INSERT INTO books (title, year, series_id) VALUES ("A Clash of Kings", 1998, 1);
INSERT INTO books (title, year, series_id) VALUES ("A Storm of Swords", 2000, 1);
INSERT INTO books (title, year, series_id) VALUES ("First Book", 2002, 2);
INSERT INTO books (title, year, series_id) VALUES ("Second Book", 2003, 2);
INSERT INTO books (title, year, series_id) VALUES ("Third Book", 2005, 2);

INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Lady", "Woof Woof", "direwolf", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Tyrion Lannister", "A Lannister always pays his debts", "human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Daenerys Targaryen", "If I look back I am lost", "human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Eddard Stark", "Winter is coming", "human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Character One", "motto one", "cylon", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Character Two", "motto two", "human", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Character Three", "motto three", "cylon", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id) VALUES ("Character Four", "motto four", "cylon", 2, 2);

INSERT INTO character_books (book_id, character_id) VALUES (1, 1);
INSERT INTO character_books (book_id, character_id) VALUES (1, 2);
INSERT INTO character_books (book_id, character_id) VALUES (2, 2);
INSERT INTO character_books (book_id, character_id) VALUES (3, 2);
INSERT INTO character_books (book_id, character_id) VALUES (1, 3);
INSERT INTO character_books (book_id, character_id) VALUES (2, 3);
INSERT INTO character_books (book_id, character_id) VALUES (3, 3);
INSERT INTO character_books (book_id, character_id) VALUES (1, 4);

INSERT INTO character_books (book_id, character_id) VALUES (4, 5);
INSERT INTO character_books (book_id, character_id) VALUES (4, 6);
INSERT INTO character_books (book_id, character_id) VALUES (5, 6);
INSERT INTO character_books (book_id, character_id) VALUES (6, 6);
INSERT INTO character_books (book_id, character_id) VALUES (4, 7);
INSERT INTO character_books (book_id, character_id) VALUES (5, 7);
INSERT INTO character_books (book_id, character_id) VALUES (6, 7);
INSERT INTO character_books (book_id, character_id) VALUES (4, 8);
