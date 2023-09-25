DELETE FROM post WHERE author_id=(SELECT id FROM user WHERE username='campera');

DELETE FROM user WHERE username ='campera';
