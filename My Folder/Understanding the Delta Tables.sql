-- Databricks notebook source
CREATE TABLE employees
  (id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

INSERT INTO employees VALUES 
(1, "Adam", 3500.0),
(2, "Sarah", 8400.0),
(3, "John", 6700.0),
(4, "Thomos", 2300.0),
(5, "Anna", 4000.0),
(6, "Kim", 6200.0)


-- COMMAND ----------

SELECT * FROM employees;

-- COMMAND ----------

DESCRIBE DETAIL employees;

-- COMMAND ----------

-- MAGIC %fs ls "dbfs:/user/hive/warehouse/employees"

-- COMMAND ----------

UPDATE employees
SET salary = salary+100
WHERE name like "A%";

-- COMMAND ----------

-- MAGIC %fs ls "dbfs:/user/hive/warehouse/employees"

-- COMMAND ----------

SELECT * FROM employees

-- COMMAND ----------

DESC HISTORY employees

-- COMMAND ----------

-- MAGIC %fs ls "dbfs:/user/hive/warehouse/employees/_delta_log/"

-- COMMAND ----------

-- MAGIC %fs head "dbfs:/user/hive/warehouse/employees/_delta_log/00000000000000000000.json"

-- COMMAND ----------


