# Frutilado Web

Modulo web de inventario para la evidencia GA7-220501096-AA2-EV02 del programa Tecnologo en Analisis y Desarrollo de Software - ADSO.

## Descripcion

El proyecto implementa un modulo web para registrar y consultar productos del inventario de la heladeria Frutilado. Usa formularios HTML/JSP, Servlets, metodo POST para registrar productos y metodo GET para consultar el listado.

## Tecnologias

- Java 17
- Jakarta Servlet 6
- JSP y JSTL
- Apache Tomcat 10
- Maven
- Git

## Ejecucion

1. Compilar el proyecto:

```bash
mvn clean package
```

2. Copiar el archivo `target/frutilado-web.war` en la carpeta `webapps` de Apache Tomcat 10.

3. Abrir en el navegador:

```text
http://localhost:8080/frutilado-web/
```

## Versionamiento sugerido

```bash
git init
git add .
git commit -m "Creacion inicial del modulo web Frutilado"
```
