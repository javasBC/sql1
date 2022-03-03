CREATE TABLE Students(
	id INTEGER ,
	name TEXT,
	grade INTEGER,
	teacher_id INTEGER,
	PRIMARY KEY (id),
	FOREIGN KEY (teacher_id) REFERENCES Teachers(id)
);

