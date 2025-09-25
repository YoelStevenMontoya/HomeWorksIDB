CREATE TABLE Company(
	idCompany INT PRIMARY KEY,
	name VARCHAR(100),
	industry VARCHAR(100),
	foundedYear TIMESTAMP
);

CREATE TABLE Staff(
	idStaff INT PRIMARY KEY,
	nameS VARCHAR(100),
	dob DATE,
	idCompany INT,
	since DATE,
	FOREIGN KEY (idCompany) REFERENCES Company(idCompany)
);

CREATE TABLE Phone(
	phoneNumber VARCHAR(100) PRIMARY KEY,
	typeP VARCHAR(100),
	providerP VARCHAR(100),
	idStaff INT,
	FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);

CREATE TABLE Task(
	idTask INT PRIMARY KEY,
	descriptionT TEXT,
	priorityT VARCHAR(100)
);

CREATE TABLE TaskStaff(
	idStaff INT,
	idTask INT,
	hoursWorked INT,
	PRIMARY KEY (idStaff, idTask),
	FOREIGN KEY (idStaff) REFERENCES Staff(idStaff),
	FOREIGN KEY (idTask) REFERENCES Task(idTask)
);

CREATE TABLE Wife(
	idWife INT PRIMARY KEY,
	nameW VARCHAR(100),
	dob DATE
);

CREATE TABLE Child(
	nameC VARCHAR(100),
	dob DATE,
	school VARCHAR(100),
	idStaff INT,
	FOREIGN KEY (idStaff) REFERENCES Staff(idStaff)
);
