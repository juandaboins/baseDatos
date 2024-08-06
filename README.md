### Proyecto final Base De Datos
###### CFP Nº 6, Buenos Aires (Argentina)
##### Trayecto de programación 

##### Consigna.
###### Deberán presentar en grupos de 1 o 2 personas un trabajo integrador:

1. Definir el dominio sobre el cual van a realizar el trabajo. El mismo deberá incluir un mínimo de 3 entidades, y un máximo de 5.
2. Realizar el DER indicando: atributos, PK, FK y relaciones entre las entidades y su cardinalidad.
3. Realizar la implementación de la base de datos definiendo tablas, relaciones y demás elementos.
4. Realizar consultas de inserción, eliminación, actualización y selección. Las consultas de selección tienen que evidenciar los contenidos que vimos durante la cursada y traer datos de varias tablas. Será un plus si investigan cómo hacer eliminación y actualización en cascada.

##### Diagrama de entidad relación (DER)

[![DER.png](https://i.postimg.cc/FsSPx22X/DER.png)](https://postimg.cc/vcQLYSY0)

**Consultas phpMyAdmin**
````
SELECT * FROM "usuario";
SELECT * FROM "usuario" WHERE "condición";
SELECT * FROM "usuario" ORDEN BY "condición"; (DESC Ó ASC)
SELECT DISTINCT "usuario" FROM "usuario";
SELECT * FROM "usuario" WHERE "dato" IN (condición);
SELECT "dato" from "usuario" WHERE "dato" LIKE % (condición);
DELETE FROM "usuario" WHERE (condición);
UPDATE "dato" SET "usuario" WHERE (condición);
 SELECT * FROM "usuario" INNER JOIN "dato" ON (condición) = (condición);
````

#### Diagrama Entidad Relación (DER).

[![Diagrama-DER.png](https://i.postimg.cc/FRnPPmrN/Diagrama-DER.png)](https://postimg.cc/qhyXRP65)

####Repositorio.
````
https://github.com/juandaboins/baseDatos

````
###End
