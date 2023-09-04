BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "user" (
	"id"	INTEGER,
	"username"	TEXT NOT NULL UNIQUE,
	"password"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "post" (
	"id"	INTEGER,
	"author_id"	INTEGER NOT NULL,
	"created"	TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	"title"	TEXT NOT NULL,
	"body"	TEXT NOT NULL,
	PRIMARY KEY("id" AUTOINCREMENT),
	FOREIGN KEY("author_id") REFERENCES "user"("id")
);
INSERT INTO "user" VALUES (1,'agos','taylor');
INSERT INTO "user" VALUES (2,'nico','nico123');
INSERT INTO "user" VALUES (3,'tomi','nosenada');
INSERT INTO "user" VALUES (5,'ocin','nico123');
INSERT INTO "post" VALUES (1,2,'2023-09-04 17:21:46','mujertanbella','y yo en una botella');
INSERT INTO "post" VALUES (2,1,'2023-09-04 17:23:38','taylor','la peor cantante de ña historia');
INSERT INTO "post" VALUES (3,1,'2023-09-04 17:23:44','taylor','la peor');
INSERT INTO "post" VALUES (4,3,'2023-09-04 17:24:32','agos','tarada');
COMMIT;
