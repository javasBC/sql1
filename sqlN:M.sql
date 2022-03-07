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
