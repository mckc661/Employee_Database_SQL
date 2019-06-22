
CREATE TABLE departments (
dept_no VARCHAR PRIMARY KEY,
dept_name VARCHAR);

CREATE TABLE dept_emp (
emp_no INTEGER PRIMARY KEY,
dept_no VARCHAR, 
from_date DATE,
to_date DATE);


create table dept_empl (
emp_no INTEGER,
dept_no VARCHAR,
from_date DATE,
to_date DATE);

CREATE TABLE dept_manager (
dept_no VARCHAR REFERENCES departments, 
emp_no INTEGER PRIMARY KEY,
from_date DATE,
to_date DATE);


CREATE TABLE employees (
emp_no INTEGER PRIMARY KEY,
birth_date DATE, 
first_name VARCHAR,
last_name VARCHAR,
gender VARCHAR,
hire_date DATE);

CREATE TABLE salaries (
emp_no INTEGER PRIMARY KEY,
salary INTEGER, 
from_date DATE,
to_date DATE);
	
CREATE TABLE titleS (
emp_no INTEGER PRIMARY KEY,
title VARCHAR, 
from_date DATE,
to_date DATE);