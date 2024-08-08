CREATE TABLE doctor(
	email VARCHAR(250) PRIMARY KEY,
	name VARCHAR(250) NOT NULL,
	specialization VARCHAR(250) NOT NULL,
	degree VARCHAR(250) NOT NULL,
	state VARCHAR(250) NOT NULL,
	city VARCHAR(250) NOT NULL,
    password varchar(250) NOT NULL
);

create table person (
    email varchar(255) not null,
    password varchar(255),
    primary key (email)
);

create table appointment (
    app_id varchar(255) not null,
    date varchar(255),
    doc_id varchar(255),
    doc_name varchar(255),
    doc_special varchar(255),
    email varchar(255),
    status varchar(255),
    primary key (app_id)
);