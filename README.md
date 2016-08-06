# JOOQ - Ceylon

This project is just to show [ceylon](http://ceylon-lang.org/) and [jooq](http://www.jooq.org/) integration.

The architecture was divided:
- jooq_metadata: This is where all jooq generated lives, also, the [run](https://github.com/DiegoCoronel/ceylon-jooq/blob/master/source/jooq_metadata/run.ceylon) function to generate it.
- mysample_jooq: This is the project running jooq for real by [run](https://github.com/DiegoCoronel/ceylon-jooq/blob/master/source/mysample_jooq/run.ceylon) function.

## Setup

Prerequisites:
- Currently you must use the version of the master ( 1.2.3 )
- Postgres (9.4)
 - database: jooq
 - login: jooq
 - password: jooq
- Tables
```sql
CREATE TABLE pessoa
(
  id serial NOT NULL,
  nome character varying(200),
  apelido character varying(200),
  CONSTRAINT pessoa_pkey PRIMARY KEY (id)
)

CREATE TABLE dependente
(
  id serial NOT NULL,
  nome character varying(200),
  id_pessoa integer,
  CONSTRAINT dependente_pkey PRIMARY KEY (id),
  CONSTRAINT dependente_id_pessoa_fkey FOREIGN KEY (id_pessoa)
      REFERENCES pessoa (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
```

Eclipse:
- Import all project as eclipse project.

## How to use

JOOQ_METADATA
- If you want to add a new column to database then you have to execute the [run](https://github.com/DiegoCoronel/ceylon-jooq/blob/master/source/jooq_metadata/run.ceylon) as ceylon java application and refresh your project.

MYSAMPLE_JOOQ
- Just execute any function in [run.ceylon](https://github.com/DiegoCoronel/ceylon-jooq/blob/master/source/mysample_jooq/run.ceylon) and dont forget to populate the database.




Enjoy and please open issues if you have problems with configuration.
