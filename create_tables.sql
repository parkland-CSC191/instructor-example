create table schools (
    school_id tinyint not null,
    school_name varchar(50) not null
    );

ALTER TABLE schools ADD PRIMARY KEY(school_id);

create table school_capacity (
    school_id tinyint not null,
    year tinyint not null,
    capacity tinyint not null
    );

ALTER TABLE school_capacity ADD PRIMARY KEY(school_id, year);
ALTER TABLE school_capacity ADD FOREIGN KEY (school_id) references schools(school_id);

create table choices (
    year tinyint not null,
    choice1 tinyint not null,
    choice2 tinyint,
    choice3 tinyint,
    choice4 tinyint,
    choice5 tinyint,
    choice6 tinyint,
    choice7 tinyint,
    choice8 tinyint,
    choice9 tinyint,
    choice10 tinyint,
    choice11 tinyint,
    choice12 tinyint,
    assigned_school tinyint
    );

ALTER TABLE choices ADD FOREIGN KEY (choice1) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice2) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice3) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice4) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice5) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice6) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice7) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice8) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice9) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice10) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice11) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (choice12) references schools(school_id);
ALTER TABLE choices ADD FOREIGN KEY (assigned_school) references schools(school_id);
