CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);


CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id)
);


INSERT INTO "user" (username) VALUES ('John Doe'), ('Jane Smith'), ('Bob Johnson');


SELECT * FROM "user"

INSERT INTO post (title, user_id) VALUES ('First Post', 1), ('Second Post', 2), ('Third Post', 3);


SELECT * FROM post


SELECT title,username FROM post JOIN "user" ON post.user_id = "user".id