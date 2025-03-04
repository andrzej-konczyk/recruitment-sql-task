-- Table creation
CREATE TABLE A (
    dimension_1 VARCHAR(10),
    dimension_2 VARCHAR(10),
    dimension_3 VARCHAR(10),
    measure_1 INT
);

CREATE TABLE B (
    dimension_1 VARCHAR(10),
    dimension_2 VARCHAR(10),
    measure_2 INT
);

CREATE TABLE MAP (
    dimension_1 VARCHAR(10),
    correct_dimension_2 VARCHAR(10)
);

-- Insert data
INSERT INTO A VALUES ('a', 'I', 'K', 1);
INSERT INTO A VALUES ('a', 'J', 'L', 7);
INSERT INTO A VALUES ('b', 'I', 'M', 2);
INSERT INTO A VALUES ('c', 'J', 'N', 5);

INSERT INTO B VALUES ('a', 'J', 7);
INSERT INTO B VALUES ('b', 'J', 10);
INSERT INTO B VALUES ('d', 'J', 4);

INSERT INTO MAP VALUES ('a', 'W');
INSERT INTO MAP VALUES ('a', 'W');
INSERT INTO MAP VALUES ('b', 'X');
INSERT INTO MAP VALUES ('c', 'Y');
INSERT INTO MAP VALUES ('b', 'X');
INSERT INTO MAP VALUES ('d', 'Z');
