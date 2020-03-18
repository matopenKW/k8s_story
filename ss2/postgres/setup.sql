drop table IF EXISTS posts;

create table posts (
  id      serial primary key,
  content text,
  author  varchar(255)
);

INSERT INTO posts VALUES (1, 'contentA', 'authorA');