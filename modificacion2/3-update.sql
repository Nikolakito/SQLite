UPDATE "user"
SET username = 'campera', password = 'river'
WHERE username='botella';

UPDATE "post"
SET title = 'campera exclama', body = 'VAMOS RIVER'
WHERE author_id=(SELECT id FROM user WHERE username='campera');