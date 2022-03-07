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





INSERT INTO Movies 
(title , len,year,cost,genre)
VALUES 
("Home Alone", 120, 1991 , 4000000,"comedy"),
("forrest gump", 93, 2001 , 8000000,"drama"),
("the batman ", 120, 2022 , 21000000,"ACTION"),
("DOG", 120, 1991 , 16000000,"comedy"),
("fast and furious 9", 180, 2020 , 16000000000,"Horror"),
("Love story", 1120, 1970,310,"Romance")




INSERT INTO ActInMovRel (actorId,movieId)
values
(1,1),
(1,2),
(1,4),
(1,6),
(2,1),
(2,3),
(2,6),
(3,2),
(3,3),
(3,4),
(4,1),
(4,5),
(4,6),
(5,5),
((SELECT id from Actors where name = "gal gadot"),
(SELECT id from movies where title="DOG"))


SELECT name,Movies.title from Actors
INNER  JOIN ActInMovRel ON ActInMovRel.actorId=Actors.id
INNER JOIN Movies On ActInMovRel.movieId= Movies.id
