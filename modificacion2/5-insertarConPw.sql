INSERT INTO "user" (username, password)
VALUES( 'ocin', (SELECT password FROM user WHERE username='nico'));