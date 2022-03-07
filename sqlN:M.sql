CREATE TABLE Actors(
	id INTEGER ,
	name TEXT,
	birthDate TEXT DEFAULT "1,1,1900",
	firstMovie TEXT,
	cityOfBirth TEXT,
	isMarried TEXT DEFAULT "NO",
	PRIMARY KEY(id AUTOINCREMENT)
);

///////////////////////////////////////////

CREATE TABLE Movies(
	id INTEGER ,
	title TEXT,
	len INTEGER,
	year INTEGER ,
	cost INTEGER,
	genre TEXT ,
	PRIMARY KEY(id AUTOINCREMENT)
);


//////////////////////////////////////////

CREATE TABLE ActInMovRel(
	movieId INTEGER,
	actorId INTEGER,
	PRIMARY KEY(actorId,movieId),
	FOREIGN KEY(movieId) REFERENCES Movies(id),
	FOREIGN KEY(actorId) REFERENCES Actors(id)	
);


INSERT INTO Actors 
(name , birthDate,firstMovie,cityOfBirth,isMarried)
VALUES 
("Wil SMith","25-9-1968","MEN In BLack","Philadelphia","YES"),
("Denzel washington","28-12-1954","Training day","Philadelphia","YES"),
("chris hemsworth","11-8-1983","Thor","sydney","YES"),
("chris Tucker","31-08-1971","Rush Hour","georgia","no"),
("gal gadot","30-04-1985","Red Notice","rosh ha'yen","YES")
