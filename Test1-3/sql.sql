



DROP TABLE IF EXISTS default_material_percent_breakdown;
DROP TABLE IF EXISTS typical_material_breakdown;
DROP TABLE IF EXISTS overal_kind_material_breakdown;
DROP TABLE IF EXISTS kind_material;
DROP TABLE IF EXISTS group_type_profile;
DROP TABLE IF EXISTS profile_material;
DROP TABLE IF EXISTS group_spec_grade;
DROP TABLE IF EXISTS grade_material;
DROP TABLE IF EXISTS group_type_spec;
DROP TABLE IF EXISTS spec_material;
DROP TABLE IF EXISTS type_material;


CREATE TABLE type_material (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(50),
    id_group_type_spec varchar(2)
);


CREATE TABLE spec_material (
    id int PRIMARY KEY AUTO_INCREMENT, 
    name varchar(10)
);



CREATE TABLE group_type_spec (
    id_group_type_spec varchar(2),
    id_spec_material int
);


CREATE TABLE grade_material (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(3)
);

CREATE TABLE group_spec_grade (
    id_spec_material int,
    id_grade_material int
);

CREATE TABLE profile_material (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20)
);

CREATE TABLE group_type_profile (
    id_type_material int,
    id_profile_material int
);

CREATE TABLE kind_material (
    id int PRIMARY KEY AUTO_INCREMENT,
    name varchar(20)
);

CREATE TABLE overal_kind_material_breakdown (
    iri_no int,
    id_kind_material int,
    total_weight double,
    CONSTRAINT PK_overal_kind_material_breakdown PRIMARY KEY (iri_no, id_kind_material)
);

CREATE TABLE typical_material_breakdown (
    iri_no int,
    id_kind_material int,
    id_type_material int,
    percent int,
    id_spec_material int,
    id_grade_material int,
    id_profile_material int,
    weight double,
    CONSTRAINT PK_typical_material_breakdown PRIMARY KEY (iri_no, id_kind_material, id_type_material)
);


CREATE TABLE default_material_percent_breakdown (
    id_kind_material int,
    id_type_material int,
    percent int
);


-- ==========================================================================================

INSERT INTO profile_material(name) values 
('JIS profile '), ('ASTM profile'), ('EN profile ');


INSERT INTO grade_material(name) values 
('JR'),
('J0'),
('J2'),
('A'),
('B'),
('C'),
('D'),
('E');



INSERT INTO spec_material(name) values 
('A36'),
('SS400'),
('A572-50'),
('SM490'),
('S235'),
('S275'),
('S355'),
('Q235'),
('Q355'),
('A53-B'),
('A106');


INSERT INTO type_material(name, id_group_type_spec) values 
('Steel plate', 'N1'),
('Flat bar', 'N1'),
('H-Beam', 'N1'),
('Channel', 'N1'),
('Angle', 'N1'),
('I-Beam', 'N1'),
('T-Beam', 'N1'),
('ERW Pipe', 'P1'),
('SMLS Pipe', 'P1'),
('Round bar', 'N1'),
('Purlin, girt', 'N1'),
('Checkered plate', 'N1'),
('SHS/RHS profile', 'N1'),
('Corugated sheeting', 'N1');



INSERT INTO group_type_spec(id_group_type_spec, id_spec_material) values 
('N1', 1),
('N1', 2),
('N1', 3),
('N1', 4),
('N1', 5),
('N1', 6),
('N1', 7),
('N1', 8),
('N1', 9),
('N1', 10),
('N1', 11),
('P1', 1),
('P1', 2),
('P1', 3),
('P1', 4),
('P1', 5),
('P1', 6);

INSERT INTO group_spec_grade(id_spec_material, id_grade_material) values 
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 8),
(9, 4),
(9, 5),
(9, 6),
(9, 7),
(9, 8);


INSERT INTO group_type_profile(id_type_material, id_profile_material) values 
(3, 1),
(3, 2),
(3, 3),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(6, 1),
(6, 2),
(6, 3),
(7, 1),
(7, 2),
(7, 3);











