## Comandos

* docker images
* docker ps -a
* docker run --name -e -d
* docker inspect
* docker stats

## Demostrar

Meter datos en la DB y ver que cuando se para el contener y se vuelve a arrancar se mantienen (hay persistencia transparente)

Ej:
show databases;
use orders;
show tables;
create table users ( id int primary key, name varchar(100), lastname varchar(200) );
describe users;