DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS posts_id_seq;
DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS comments_id_seq;

CREATE SEQUENCE IF NOT EXISTS posts_id_seq;
CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title text,
    content text
);

CREATE SEQUENCE IF NOT EXISTS comments_id_seq;
CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    name text,
    content text,
    post_id int,
    constraint fk_posts foreign key(post_id) references posts(id) on delete cascade
);
