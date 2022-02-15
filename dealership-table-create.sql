CREATE TABLE "Department" (
  "id" serial PRIMARY KEY,
  "name" varchar(255)
);

CREATE TABLE "Employees" (
  "id" serial PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "department_id" int,
  "hire_date" date
);

CREATE TABLE "Customers" (
  "id" serial PRIMARY KEY,
  "first_name" varchar(255),
  "last_name" varchar(255),
  "email" varchar(255),
  "phone_number" varchar(11)
);

CREATE TABLE "Payment" (
  "id" serial PRIMARY KEY,
  "customer_id" int,
  "employee_id" int,
  "car_id" int,
  "amount" float,
  "department_id" int
);

CREATE TABLE "Cars" (
  "id" serial PRIMARY KEY,
  "year" int,
  "make" varchar(255),
  "model" varchar(255),
  "employee_id" int
);

CREATE TABLE "Service_History" (
  "id" serial PRIMARY KEY,
  "car_id" int,
  "department_id" int,
  "amount" float
);

ALTER TABLE "Employees" ADD FOREIGN KEY ("department_id") REFERENCES "Department" ("id");

ALTER TABLE "Payment" ADD FOREIGN KEY ("customer_id") REFERENCES "Customers" ("id");

ALTER TABLE "Payment" ADD FOREIGN KEY ("employee_id") REFERENCES "Employees" ("id");

ALTER TABLE "Payment" ADD FOREIGN KEY ("department_id") REFERENCES "Department" ("id");

ALTER TABLE "Payment" ADD FOREIGN KEY ("car_id") REFERENCES "Cars" ("id");

ALTER TABLE "Cars" ADD FOREIGN KEY ("employee_id") REFERENCES "Employees" ("id");

ALTER TABLE "Service_History" ADD FOREIGN KEY ("id") REFERENCES "Cars" ("id");
