# Template

| Metrics | Master | Develop |
|:-:|:-:|:-:|
| CI status | [![pipeline status](https://gitlab.com/redmic-project/server/template/badges/master/pipeline.svg)](https://gitlab.com/redmic-project/server/template/commits/master) | [![pipeline status](https://gitlab.com/redmic-project/server/template/badges/dev/pipeline.svg)](https://gitlab.com/redmic-project/server/template/commits/dev) |
| Test coverage | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/master/coverage.svg)](https://gitlab.com/redmic-project/server/template/commits/master) | [![coverage report](https://gitlab.com/redmic-project/server/template/badges/dev/coverage.svg)](https://gitlab.com/redmic-project/server/template/commits/dev) |

Este proyecto sirve de guía para la creación de un nuevo microservicio. Una vez hecho clone del proyecto, se aconseja eliminar el directorio .git para limpiar el historial de git y comenzar como un proyecto nuevo.

1. Antes de importar el proyecto, en el fichero `pom.xml`:
	* Reemplazar `template` por el nombre que se le quiere dar al microservicio.
	* Definir la versión de `redmic` (en la sección `parent`) con la más reciente.

2. Importar como proyecto maven.

3. Revisar el resto de ficheros del proyecto, remplazando `template` por el nombre adecuado (incluyendo la primera línea de este mismo fichero).

4. Modificar, si se desea, el puerto por defecto del microservicio, reemplazando `8080` en los ficheros `Dockerfile`, `deploy/.env` y `src/main/resources/application.properties`.

5. En este último fichero `application.properties`, reemplazar el valor de la propiedad `server.servlet-path` por la ruta deseada (en lugar del valor por defecto `path`).

6. En los ficheros `docker-compose.*.yml`, revisar las redes a las que pertenecerá, la memoria asignada a la pila de Java, añadir volúmenes, etc.

7. Configurar en el fichero `pom.xml` el *spring-boot-starter* adecuado y añadir las dependencias deseadas.

8. En el fichero Dockerfile, modificar PARENT_IMAGE_NAME para establecer la del proyecto y que sirva de referencia.

9. En el fichero `.gitlab-ci.yml`, modificar detalles de despliegue según sea necesario, como el valor de `STACK`. Si se desea añadir variables de entorno al despliegue, se deben añadir como variables del proyecto (gitlab) con el prefijo `DD_`. Como mínimo hay que añadir `DD_SPRING_PROFILES_ACTIVE` para cada entorno (dev y pro).

10. Actualizar la tabla inicial de estado, eliminar estas instrucciones y documentar adecuadamente.
