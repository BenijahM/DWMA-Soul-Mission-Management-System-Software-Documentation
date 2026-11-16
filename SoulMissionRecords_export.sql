PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE SoulMissionRecords (recordId INTEGER PRIMARY KEY NOT NULL, teamName TEXT NOT NULL, partnerType TEXT NOT NULL CHECK (partnerType IN ('Weapon', 'Meister', 'Team')), kishinSoulsCollected INTEGER NOT NULL DEFAULT 0 CHECK (kishinSoulsCollected >= 0), witchSoulsCollected INTEGER NOT NULL DEFAULT 0 CHECK (witchSoulsCollected >= 0), trainingLevel REAL NOT NULL CHECK (trainingLevel >= 1.0 AND trainingLevel <= 100.0), activeStatus INTEGER NOT NULL CHECK (activeStatus IN (0, 1)), lastMissionDate TEXT NOT NULL CHECK (length(LastMissionDate) = 10 AND LastMissionDate GLOB '[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]' AND date(LastMissionDate) IS NOT NULL AND date(LastMissionDate) = LastMissionDate));
INSERT INTO SoulMissionRecords VALUES(101112,'Resonance Team Beta','Team',44,1,73.5,1,'2026-10-11'),
  (112233,'Kim and Jacqueline','Team',72,0,84,1,'2026-10-13'),
  (121314,'East Mission Unit','Team',8,0,25,0,'2026-08-25'),
  (131415,'West Mission Unit','Team',50,1,77,1,'2026-10-05'),
  (223344,'Death the Kid Team','Meister',99,1,100,1,'2026-10-17'),
  (234567,'Black Star Team','Team',99,1,100,1,'2026-10-18'),
  (334455,'Patty and Liz','Team',88,1,96,1,'2026-10-16'),
  (345678,'Maka and Soul','Team',85,1,91.5,1,'2026-10-15'),
  (445566,'Free Mission Unit','Team',12,0,35.5,0,'2026-09-20'),
  (456789,'Death Scythe Team','Weapon',99,1,100,1,'2026-10-12'),
  (556677,'Spirit Weapon Record','Weapon',99,1,98,1,'2026-10-09'),
  (567890,'Stein Training Unit','Meister',42,0,76,1,'2026-10-10'),
  (667788,'Naigus Training Unit','Meister',34,0,68.5,1,'2026-10-07'),
  (678901,'Tsubaki Team','Team',63,1,88,1,'2026-10-14'),
  (778899,'Angela Support Team','Team',19,0,42,0,'2026-09-15'),
  (789012,'Kilik and Fire','Team',91,0,94.5,1,'2026-10-16'),
  (889900,'Hero Training Squad','Team',97,1,99,1,'2026-10-18'),
  (890123,'Ox Ford Team','Team',28,0,61,1,'2026-10-08'),
  (901234,'Harvar Training Pair','Team',55,1,79.5,1,'2026-10-11'),
  (990011,'Resonance Team Alpha','Team',66,0,80,1,'2026-10-12');
COMMIT;
