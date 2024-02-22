Riley Taylor

UTA Data Analytics Bootcamp

Module 9 - SQL




## Description

This contains my submission for module 9 of the UTA Data Analytics Bootcamp. We were tasked with finding 8 slections of data for a fictional company that had not yet ported its database from `.csv` files to a true database. 

I developed an ERD for the database, imported the tables, and wrote the queries, which can be found in this repo.

## Requirements

If you actually choose to play around with this, you need to be able to run `.sql` files and import `.csv` files into tables. I used PGAdmin4. 

## Installation

There are no binaries, the main deliverables are `.sql` files. To install you can:
1.  clone the repository, 
2.  create a new database in your PostgreSQL GUI of choice
3.  execute the `/sql_queries/setup/table_creation.sql` file inside the database
4.  import the `.csv` files with your PostgreSQL tool, following the order [here](/analysis/analysis.ipynb)
5.  execute the queries you are interested in from the `/sql_queries/` directory


## Repo Overview 

`/ERD/` contains the entity relationship diagram developed in QuickDBD that set up the schema for this module's database. 


`/analysis/` contains `analyis.ipynb`, a brief exploration of the some of problems encountered when developing the schema and queries. 


`/data/` contains the `.csv` files, which were imported manually to PGAdmin, which then handled the execution of the `.sql` queries. 


`/notes/` contains `notes.txt` which just houses the code used to generate the ERD in QDBD.


`sql_queries` contains the following:

-   `/questions/`
    -   This holds each query individually in their own file, if it is more convenient to run them this way. 
-   `/setup/`
    -   This contains the `.sql` files that can drop the tables, create the tables, and a legacy file that I am keeping for future reference if I want to manually build the schema. 
    -   `collected_queries.sql` is a file that compiles all of the 8 queries into one place. You'd have to select te query you want of course, but it is included for convenience.  



-----------------------------

## Sources 

Blog — QuickDatabaseDiagrams.com
https://www.quickdatabasediagrams.com/blog

Defining primary key–foreign key relationships - IBM Documentation
https://www.ibm.com/docs/en/doc/3.9.1.0?topic=model-defining-primary-keyforeign-key-relationships

Why Do Relational Databases Use Primary Keys and Foreign Keys?
https://learnsql.com/blog/why-use-primary-key-foreign-key/#:~:text=The%20primary%20key%20column(s)%20can%20be%20used%20(along,key%20column%20in%20another%20table.

How to change datestyle in PostgreSQL? - Stack Overflow
https://stackoverflow.com/questions/13244460/how-to-change-datestyle-in-postgresql

PostgreSQL NOT NULL Constraints
https://www.postgresqltutorial.com/postgresql-tutorial/postgresql-not-null-constraint/

PostgreSQL: Documentation: 16: 8.1. Numeric Types
https://www.postgresql.org/docs/current/datatype-numeric.html

PostgreSQL: Documentation: 9.1: String Functions and Operators
https://www.postgresql.org/docs/9.1/functions-string.html

string - Difference between text and varchar (character varying) - Stack Overflow
https://stackoverflow.com/questions/4848964/difference-between-text-and-varchar-character-varying

PostgreSQL: Documentation: 16: 5.4. Constraints
https://www.postgresql.org/docs/current/ddl-constraints.html

PostgreSQL: Documentation: 16: 2.3. Creating a New Table
https://www.postgresql.org/docs/current/tutorial-table.html



