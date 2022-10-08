-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-08 06:32:58.044

-- tables
-- Table: SUMA
CREATE TABLE SUMA (
    id serial  NOT NULL,
    sumando01 decimal(4,2)  NOT NULL,
    sumando02 decimal(4,2)  NOT NULL,
    resultado decimal(4,2)  NOT NULL,
    CONSTRAINT SUMA_pk PRIMARY KEY (id)
);

-- End of file.

