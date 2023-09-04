--Me faltan registros pero te dejo la db en el repositorio <3
INSERT INTO post (author_id, title, body)
VALUES( (SELECT id FROM user WHERE username='botella'), 'agos', 'mi dueña es una tarada');

INSERT INTO user (username, password)
VALUES( 'agos', 'taylor');