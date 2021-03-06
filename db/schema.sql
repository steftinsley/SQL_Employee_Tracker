DROP DATABASE IF EXISTS employeedb;
CREATE DATABASE employee_db;
USE employee_trackerdb;

CREATE TABLE employee (
  id INTEGER  AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30) NOT NULL,
  last_name VARCHAR(30) NOT NULL,
  role_id INTEGER NOT NULL,
  manager_id INTEGER NOT NULL,
  FOREIGN KEY (role_id) REFERENCES roles(id),
  FOREIGN KEY (manager_id) REFERENCES roles(id)
);

CREATE TABLE roles (
 id INTEGER  AUTO_INCREMENT PRIMARY KEY,
 title VARCHAR(30) NOT NULL,
 salary DECIMAL NOT NULL,
 department_id INTEGER NOT NULL,
 FOREIGN KEY (department_id) REFERENCES department(id)
);

CREATE TABLE department (
  id INTEGER  AUTO_INCREMENT PRIMARY KEY,
  dept_name VARCHAR(30) NOT NULL
);