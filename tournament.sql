\c tournament;

DROP TABLE IF EXISTS match;
DROP TABLE IF EXISTS player;

CREATE TABLE player (
	id serial primary key,
	name varchar(20) NOT NULL
);

CREATE TABLE match (
	id serial primary key,
	winner integer REFERENCES player NOT NULL,
	looser integer REFERENCES player NOT NULL
);