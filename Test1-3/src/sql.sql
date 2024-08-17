



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
    id int PRIMARY KEY,
    name varchar(50),
    id_group_type_spec varchar(2)
);


CREATE TABLE spec_material (
    id int PRIMARY KEY,
    name varchar(10)
);



CREATE TABLE group_type_spec (
    id_group_type_spec varchar(2),
    id_spec_material int
);


CREATE TABLE grade_material (
    id int PRIMARY KEY,
    name varchar(3)
);

CREATE TABLE group_spec_grade (
    id_spec_material int,
    id_grade_material int
);

CREATE TABLE profile_material (
    id int PRIMARY KEY,
    name varchar(20)
);

CREATE TABLE group_type_profile (
    id_type_material int,
    id_profile_material int
);

CREATE TABLE kind_material (
    id int PRIMARY KEY,
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


