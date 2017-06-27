CREATE TABLE todos (title varchar(255) NOT NULL, details varchar, priority integer default '1' NOT NULL, created_at TIMESTAMP default CURRENT_TIMESTAMP NOT NULL, completed_at TIMESTAMP);

INSERT INTO todos (title) VALUES ('mow lawn');
INSERT INTO todos (title) VALUES ('wash dishes');
INSERT INTO todos (title) VALUES ('clean dishwasher');
INSERT INTO todos (title, priority) VALUES ('organize board games', 10);
INSERT INTO todos (title) VALUES ('clean basement');

SELECT * from todos WHERE completed_at is NULL;
SELECT * from todos WHERE priority > 1;

UPDATE todos SET completed_at = CURRENT_TIMESTAMP WHERE title = 'organize board games';

DELETE FROM todos WHERE completed_at IS NOT NULL;
