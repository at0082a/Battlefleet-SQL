CREATE TABLE FLEET
(
    Id BIGSERIAL PRIMARY KEY,
    name VARCHAR(15)
);

CREATE TABLE SHIP
(

    Id BIGSERIAL PRIMARY KEY,
    name VARCHAR(15),
    date_built DATE,
    FLEET_Id SERIAL REFERENCES FLEET(Id)

);

CREATE TABLE SAILOR
(
    Id BIGSERIAL PRIMARY KEY,
    name VARCHAR(15),
    date_of_birth DATE

);

CREATE TABLE RANK
(
    Id BIGSERIAL PRIMARY KEY,
    name VARCHAR(15)
);

CREATE TABLE ASSIGNMENT
(
    Id BIGSERIAL PRIMARY KEY,
    start_date DATE,
    end_date DATE,
    name VARCHAR(15),
    SAILOR_Id BIGSERIAL REFERENCES SAILOR(Id),
    RANK_Id BIGSERIAL REFERENCES RANK(Id),
    SHIP_Id BIGSERIAL REFERENCES SHIP(Id)

);

