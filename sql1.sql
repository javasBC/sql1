CREATE TABLE Students(
	id INTEGER ,
	name TEXT,
	grade INTEGER,
	teacher_id INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
);

-----------------------------------------------------------------------

CREATE TABLE Teachers(
	id INTEGER,
	name TEXT,
	course TEXT,
	PRIMARY	KEY (id)
);


INSERT INTO Teachers 
VALUES (1,"kobi","java"),
(2,"alexsey","aws"),
(3,"itzhak","sql")


INSERT INTO Students 
VALUES (100,"hodi",50,1),
(101,"naama",90,2),
(102,"yones",44,2),
(103,"dor",34,3),
(104,"dor",85,3),
(105,"ekram",21,3),
(106,"ran",93,3),
(107,"Oshri",100,1),
(108,"liad",100,1),
(109,"shai",8,NULL)

