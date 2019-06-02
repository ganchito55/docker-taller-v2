## Comandos

* docker-compose up/down
* docker-compose ps

## Demostrar

* imagen alpine vs ubuntu
* nginx más cómodo para servir estáticos
* multistage build
* tamaño de la imagen de compilacion vs runtime
* uso de un dockerfile específico


## Requisitos

* levantar el stack con un comando
* reducir el tamaño el máximo
* 3 servicios (front, backend php y backend .net)
* se debe permitir modificar en caliente el back php y el front
* el back en php debe leer la variable de entorno CURRENCY donde se especificará la moneda ($, €)

## Referencias

* [multistage build](https://docs.docker.com/develop/develop-images/multistage-build/)