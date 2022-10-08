-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-10-08 06:32:58.044

-- tables
-- Table: SUMA
CREATE TABLE SUMA (
    idsum serial  NOT NULL,
    sumando01 decimal(15,2)  NOT NULL,
    sumando02 decimal(15,2)  NOT NULL,
    resultado decimal(15,2)  NOT NULL,
    CONSTRAINT SUMA_pk PRIMARY KEY (idsum)
);

-- End of file.

