
create table if not exists departament (
	departament_id serial primary key,
	name_departament VARCHAR(75) not NULL
);

create table if not exists employee (
	employee_id serial primary key,
	name_employe VARCHAR(75) not NULL,
	boss VARCHAR(75) NOT NULL,
	departament_id integer references departament (departament_id),
	boss_employee integer references employee (employee_id)

);
