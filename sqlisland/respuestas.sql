SELECT * FROM inhabitant;

SELECT * FROM inhabitant WHERE state="friendly";

SELECT * FROM inhabitant WHERE state="friendly" AND job="weaponsmith";

SELECT * FROM inhabitant WHERE state="friendly" AND job LIKE "%smith";

SELECT personid FROM inhabitant WHERE name="Stranger";

SELECT gold FROM inhabitant WHERE personid=20;

SELECT * FROM item WHERE owner IS NULL;

UPDATE item SET owner = 20 WHERE owner IS NULL;

SELECT * from item WHERE owner=20;

SELECT * from inhabitant WHERE job LIKE "merchant" OR job LIKE "dealer" AND state LIKE "friendly";

UPDATE item SET owner = 15 WHERE item LIKE "ring" OR item LIKE "teapot";

UPDATE inhabitant SET name = "Nico" WHERE personid=20;

SELECT * FROM inhabitant WHERE job LIKE "baker" ORDER BY gold DESC;

SELECT * FROM inhabitant WHERE job LIKE "pilot" ORDER BY gold DESC;

SELECT i.name FROM inhabitant i
JOIN village v ON chief=i.personid
WHERE v.name LIKE "Onionville" ;

SELECT COUNT(*) FROM inhabitant i
JOIN village v ON i.villageid=v.villageid
WHERE v.name LIKE "Onionville" AND gender="f" ;

SELECT i.name FROM inhabitant i
JOIN village v ON i.villageid=v.villageid
WHERE v.name LIKE "Onionville" AND gender="f" ;

SELECT SUM(inhabitant.gold) FROM inhabitant
JOIN village ON village.villageid = inhabitant.villageid WHERE  inhabitant.job LIKE "dealer" OR inhabitant.job LIKE "merchant" OR inhabitant.job LIKE "baker";

SELECT state, AVG(inhabitant.gold) FROM inhabitant GROUP BY state ORDER BY AVG(inhabitant.gold)

DELETE FROM inhabitant WHERE name = 'Dirty Diane'

UPDATE inhabitant SET state="friendly" WHERE job="pilot";
