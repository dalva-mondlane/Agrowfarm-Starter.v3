create table patient (patient_name varchar(50) not null unique, patient_street varchar(50) not null, patient_city varchar(50) not null, primary key(patient_name));
create table branch (branch_name varchar(50) not null unique,branch_city varchar(50) not null,primary key branch_name)); 
create table appointment(appointment_number varchar(50) not null unique, patient_name varchar(50) not null, branch_name varchar(50) not null, weigth numeric(20,2) not null, doctor varchar(50) not null, date_time datetime not null, primary key(appointment_number), foreign key(branch_name) references branch(branch_name) foreign key(patient_name) references patient (patient_name));

insert into patient values ('Elisangela', '24 de Julho', 'Maputo');
insert into patient values ('Dayna', 'Edurado Mondlane', 'Maputo');
insert into patient values ('Melaine', 'Samora Machel', 'Maputo');
insert into branch values ('Baixa', 'Maputo');
insert into branch values ('Alta', 'Maputo');

insert into appointment values ('L-17', 'Elisângela', 'Baixa',60, 'Maya', '2022-12-07 23:30:59');
insert into appointment values ('L-23', 'Dayna', 'Alta',65, 'Kyara', '2022-12-07 22:30:59');
insert into appointment values ('L-15', 'Melaine', 'Baixa', 70, 'Ro', '2022-12-07 21:30:59');   