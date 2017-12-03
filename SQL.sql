CREATE TABLE AUDITORIUM (AUDITORIUMID INTEGER NOT NULL, THEATERID INTEGER NOT NULL, AUDITORIUMNAME VARCHAR(50) NOT NULL, PRIMARY KEY (AUDITORIUMID, THEATERID));

CREATE TABLE MOVIE (MOVIEID INTEGER NOT NULL, TITLE VARCHAR(50) NOT NULL, GENRE VARCHAR(50), DESCRIPTION VARCHAR(1000), CASTS VARCHAR(50), DIRECTOR VARCHAR(50), YEARMAKE VARCHAR(10), DURATION VARCHAR(10), POSTER VARCHAR(200), TIME1 VARCHAR(10), TIME2 VARCHAR(10), TIME3 VARCHAR(10), PRIMARY KEY (MOVIEID));

CREATE TABLE SCREENING (ID INTEGER NOT NULL, MOVIEID INTEGER NOT NULL, AUDITORIUMID INTEGER NOT NULL, SCREENTIME VARCHAR(10) NOT NULL, PRIMARY KEY (ID));

CREATE TABLE THEATER (THEATERID INTEGER NOT NULL, THEATERNAME VARCHAR(50) NOT NULL, ADDRESS VARCHAR(50) NOT NULL, CITY VARCHAR(15) NOT NULL, STATES VARCHAR(10) NOT NULL, ZIP VARCHAR(10) NOT NULL, PRIMARY KEY (THEATERID));

CREATE TABLE THEATERMOVIE (THEATERID INTEGER NOT NULL, MOVIEID INTEGER NOT NULL, PRIMARY KEY (THEATERID, MOVIEID));


INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (1, 1, 'Auditorium 1');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (2, 1, 'Auditorium 2');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (3, 1, 'Auditorium 3');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (4, 2, 'Auditorium 10');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (5, 2, 'Auditorium 7');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (6, 3, 'Auditorium 5');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (7, 3, 'Auditorium 6');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (8, 3, 'Auditorium 1');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (9, 4, 'Auditorium 3');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (10, 4, 'Auditorium 4');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (11, 4, 'Auditorium 5');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (12, 5, 'Auditorium 18');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (13, 5, 'Auditorium 15');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (14, 5, 'Auditorium 9');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (15, 6, 'Auditorium 4');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (16, 6, 'Auditorium 7');
INSERT INTO SCOTT.AUDITORIUM (AUDITORIUMID, THEATERID, AUDITORIUMNAME) 
	VALUES (17, 6, 'Auditorium 3');


INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (7, 'The Big Sick', 'Romance/Comedy', 'Kumail is a Pakistani comic who meets an American graduate student named Emily at one of his stand-up shows. As their relationship blossoms, he soon becomes worried about what his traditional Muslim parents will think of her. When Emily suddenly comes down with an illness that leaves her in a coma, Kumail finds himself developing a bond with her deeply concerned mother and father.', 'Kumail Nanjiani, Zoe Kazan, Holly Hunter', 'Michael Showalter', '2017', '2:04', 'thebigsick.jpg', '12:00', '15:15', '18:30');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (8, 'Baby Driver', 'Crime/Thriller', 'Talented getaway driver Baby (Ansel Elgort) relies on the beat of his personal soundtrack to be the best in the game. After meeting the woman (Lily James) of his dreams, he sees a chance to ditch his shady lifestyle and make a clean break. Coerced into working for a crime boss (Kevin Spacey), Baby must face the music as a doomed heist threatens his life, love and freedom.', 'Ansel Elgort, Lily James, Jamie Foxx', 'Patty Jenkins', '2017', '1:53', 'babydriver.jpg', '12:45', '16:00', '19:00');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (9, 'Wonder Woman', 'Fantasy/Science Fiction', 'Before she was Wonder Woman (Gal Gadot), she was Diana, princess of the Amazons, trained to be an unconquerable warrior. Raised on a sheltered island paradise, Diana meets an American pilot (Chris Pine) who tells her about the massive conflict that''s raging in the outside world. Convinced that she can stop the threat, Diana leaves her home for the first time. Fighting alongside men in a war to end all wars, she finally discovers her full powers and true destiny.', 'Gal Gadot, Chris Pine, Robin Wright', 'Patty Jenkins', '2017', '2:21', 'wonderwoman.jpg', '10:00', '12:50', '18:00');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (10, 'Transformers: The Last Knight', 'Science Fiction/Thriller', 'Humans are at war with the Transformers, and Optimus Prime is gone. The key to saving the future lies buried in the secrets of the past and the hidden history of Transformers on Earth. Now, it''s up to the unlikely alliance of inventor Cade Yeager, Bumblebee, an English lord and an Oxford professor to save the world.', 'Mark Wahlberg, Isabela Moner, Laura Haddock', 'Michael Bay', '2017', '2:29', 'transformer.jpg', '13:10', '16:40', '19:30');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (1, 'Dunkirk', 'Drama/Thriller', 'In May 1940, Germany advanced into France, trapping Allied troops on the beaches of Dunkirk. Under air and ground cover from British and French forces, troops were slowly and methodically evacuated from the beach using every serviceable naval and civilian vessel that could be found. At the end of this heroic mission, 330,000 French, British, Belgian and Dutch soldiers were safely evacuated.', 'Harry Styles, Tom Hardy, Cillian Murphy', 'Christopher Nolan', '2017', '2:00', 'dunkirk.jpg', '14:30', '17:00', '20:00');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (2, 'War for the Planet of the Apes', 'Thriller/Science Fiction', 'Caesar (Andy Serkis) and his apes are forced into a deadly conflict with an army of humans led by a ruthless colonel (Woody Harrelson). After the apes suffer unimaginable losses, Caesar wrestles with his darker instincts and begins his own mythic quest to avenge his kind. As the journey finally brings them face to face, Caesar and the colonel are pitted against each other in an epic battle that will determine the fate of both of their species and the future of the planet.', 'Andy Serkis, Woody Harrelson, Amiah Miller', 'Matt Reeves', '2017', '2:22', 'apes.jpg', '16:00', '18:30', '21:00');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (3, 'Spider-Man: Homecoming', 'Fantasy/Science Fiction', 'Thrilled by his experience with the Avengers, young Peter Parker returns home to live with his Aunt May. Under the watchful eye of mentor Tony Stark, Parker starts to embrace his newfound identity as Spider-Man. He also tries to return to his normal daily routine -- distracted by thoughts of proving himself to be more than just a friendly neighborhood superhero. Peter must soon put his powers to the test when the evil Vulture emerges to threaten everything that he holds dear.', 'Zendaya, Tom Holland, Robert Downey Jr', 'Jon Watts', '2017', '2:13', 'spiderman.jpg', '11:00', '15:00', '17:30');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (4, 'Valerian and the City of a Thousand Planets', 'Science Fiction/Action', 'In the 28th century, special operatives Valerian (Dane DeHaan) and Laureline work together to maintain order throughout the human territories. Under assignment from the minister of defense, the duo embarks on a mission to Alpha, an ever-expanding metropolis where diverse species gather to share knowledge and culture. When a dark force threatens the peaceful city, Valerian and Laureline must race against time to identify the menace that also jeopardizes the future of the universe.', 'Cara Delevingne, Dane DeHann, Rihanna', 'Michael Bay', '2017', '2:17', 'valerian.jpg', '15:00', '18:10', '20:30');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (5, 'Despicable Me 3', 'Science Fiction/Action', 'The mischievous Minions hope that Gru will return to a life of crime after the new boss of the Anti-Villain League fires him. Instead, Gru decides to remain retired and travel to Freedonia to meet his long-lost twin brother for the first time. The reunited siblings soon find themselves in an uneasy alliance to take down the elusive Balthazar Bratt, a former 1980s child star who seeks revenge against the world.', 'Steve Carell, Trey Parker, Pierre Coffin', 'Pierre Coffin, Kyle Balda', '2017', '1:36', 'despicable3.jpg', '12:15', '17:30', '21:00');
INSERT INTO SCOTT.MOVIE (MOVIEID, TITLE, GENRE, DESCRIPTION, CASTS, DIRECTOR, YEARMAKE, DURATION, POSTER, TIME1, TIME2, TIME3) 
	VALUES (6, 'Girls Trip', 'Comedy', 'Best friends Ryan, Sasha, Lisa and Dina are in for the adventure of a lifetime when they travel to New Orleans for the annual Essence Festival. Along the way, they rekindle their sisterhood and rediscover their wild side by doing enough dancing, drinking, brawling and romancing to make the Big Easy blush.', 'Queen Latifah, Jada Pinkett Smith, Regina Hall', 'Malcolm D. Lee', '2017', '2:02', 'girlstrip.jpg', '14:00', '16:30', '19:15');

INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (1, 1, 1, '12:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (2, 1, 2, '14:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (3, 1, 1, '14:45');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (4, 2, 3, '10:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (5, 3, 4, '9:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (6, 3, 6, '15:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (7, 4, 5, '9:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (8, 4, 7, '12:45');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (9, 5, 6, '16:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (10, 5, 7, '11:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (11, 5, 8, '18:30');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (12, 6, 9, '19:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (13, 6, 10, '11:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (14, 7, 4, '12:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (15, 7, 12, '20:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (16, 8, 14, '15:30');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (17, 8, 5, '15:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (18, 9, 7, '12:45');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (19, 9, 7, '2:30');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (20, 10, 8, '10:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (21, 10, 7, '18:00');
INSERT INTO SCOTT.SCREENING (ID, MOVIEID, AUDITORIUMID, SCREENTIME) 
	VALUES (22, 1, 1, '16:00');


INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (1, 'AMC Firewheel 18', '100 Coneflower Dr', 'Garland', 'TX', '75040');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (2, 'Cinemark Hollywood USA Movies 15', '4040 S Shiloh Rd', 'Garland', 'TX', '75041');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (3, 'United Artists Galaxy Theater 10', '11801 McCree Rd', 'Dallas', 'TX', '75238');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (4, 'B and B Theaters Wylie 12', '711 Woodbridge Pkwy', 'Wylie', 'TX', '75098');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (5, 'Cinemark Galaxy and XD', '7201 Central Expy', 'Plano', 'TX', '75025');
INSERT INTO SCOTT.THEATER (THEATERID, THEATERNAME, ADDRESS, CITY, STATES, ZIP) 
	VALUES (6, 'AMC Classic Mesquite 10', '227 US-80', 'Mesquite', 'TX', '75150');

	
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 5);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (1, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 5);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (2, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 4);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (3, 10);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 9);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (4, 10);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 9);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (5, 10);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 1);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 2);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 3);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 6);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 7);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 8);
INSERT INTO SCOTT.THEATERMOVIE (THEATERID, MOVIEID) 
	VALUES (6, 9)
