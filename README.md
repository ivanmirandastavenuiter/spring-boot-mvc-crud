# Spring Boot CH33TZ crud with MVC/REST API structure

Simple CRUD built with Spring Boot and MVC REST API structure. 

## Main tools applied

* Spring Boot 2.2.6
* Hibernate
* JPA API
* H2 database
* MVC oriented to REST API

## Instructions

In order to set up the project correctly, follow these steps:

* Import project as Maven project.
* Add an existing local instance for Apache Tomcat 9. Add the module.
* Run the server

## Entry points

The urls for the access:

* Main entry point/index: http://localhost:8080/ch33tz
* List users: {contextPath} + /user/list
* Add user: {contextPath} + /user/add

Delete and update actions are available accessing through the list of users.

## Some pics

1. Index

![index](https://github.com/ivanmirandastavenuiter/spring-boot-mvc-crud/blob/master/pics/1.png)

2. Create

![create](https://github.com/ivanmirandastavenuiter/spring-boot-mvc-crud/blob/master/pics/2.png)

3. Validations

![validations](https://github.com/ivanmirandastavenuiter/spring-boot-mvc-crud/blob/master/pics/3.png)

4. List

![list](https://github.com/ivanmirandastavenuiter/spring-boot-mvc-crud/blob/master/pics/4.png)

5. Not found

![not-found](https://github.com/ivanmirandastavenuiter/spring-boot-mvc-crud/blob/master/pics/4.png)

