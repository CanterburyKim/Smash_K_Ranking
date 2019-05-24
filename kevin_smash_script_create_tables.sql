use Smash;


-- PLAYERS table
CREATE TABLE IF NOT EXISTS players (
	id INT NOT NULL,
    player_name VARCHAR(50),
    PRIMARY KEY(id)
) ENGINE=INNODB;


-- CHARACTERS TABLE

CREATE TABLE IF NOT EXISTS characters (
	id INT NOT NULL,
    char_name varchar(100),
    PRIMARY KEY(id)

) ENGINE=INNODB;


-- MATCHES TABLE

CREATE TABLE IF NOT EXISTS matches (
	id INT AUTO_INCREMENT,
	match_name VARCHAR(50),
    stock INT,
    time_limit INT,
    stage_id INT,
    PRIMARY KEY(id)

) ENGINE=INNODB;



-- ITEMS Table
CREATE TABLE IF NOT EXISTS items (
	id INT NOT NULL,
    item_name varchar(50),
    PRIMARY KEY(id)

) ENGINE=INNODB;


-- STAGES Table
CREATE TABLE IF NOT EXISTS stages (
	id INT NOT NULL,
    stage_name VARCHAR(50),
    PRIMARY KEY(id)

) ENGINE=INNODB;


-- JOIN TABLES


-- MATCH CONTESTANTS table

CREATE TABLE IF NOT EXISTS match_contestants(
	id INT AUTO_INCREMENT,
	match_id INT,
    player_id INT,
    char_id INT,
    num_kos INT,
    num_falls INT,
    is_winner BOOLEAN,
    damage_given INT,
    damage_taken INT,

    PRIMARY KEY(id)

) ENGINE=INNODB;


CREATE TABLE IF NOT EXISTS item_match_join (
	id INT NOT NULL AUTO_INCREMENT,
    match_id VARCHAR(10),
    item_id INT,
	PRIMARY KEY(id)

) ENGINE=INNODB;
