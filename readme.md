# Library
Web application developed using Spring Boot
---
Covering basic functionality of a library.

#### Available functionality
* Add new book
* Borrow book
* Return book
* Search book by book title
* Add borrower
* View overdue book

#### Data storage
* This system has used an in memory database(H2 database) to manipulate data.
* Initial data has included in the `<project-directory>/src/main/resources/data.sql`.
* Data persisting on the runtime will be reset upon the server restart.
* If you want to access H2 database console, use following URL.

`<host>:<port>/library/h2-console`

e.g: `localhost:8000/library/h2-console`

#### Internationalization
* Create a new property file inside the `<project-directory>/src/main/resources` according to the following naming convention.

`messages_<locale>.properties`

eg: messages_fr.properties for French

* Change the following line of the file `<project-directory>/src/main/webapp/WEB-INF/views/includes/include.jsp` as follows.

`<fmt:setLocale value = "<locale>"/>`

e.g: <fmt:setLocale value = "fr"/>

* Two sample message properties added to test the internationalization.

#### Pre-requisites
* Java Development Kit (JDK) 1.8
* Apache Maven 3.5

#### Environment used for developments
* OS: Ubuntu 18.04
* IDE: IntelliJ IDEA 2018
* Back end technologies: Java with Spring Boot, Spring Data JPA
* Front end technologies: JSP, CSS, JQuery, Bootstrap

#### Config & Build
1. Goto the location of the project directory (Library).

2. Run following command.

`$ mvn clean install`

#### Execute the program
1. Goto the project built directory.

`<project-directory>/target`

2. Execute the jar file as follows.

`java -jar library<project-version>.jar`

e.g: `java -jar library-0.0.1-SNAPSHOT.jar`

i.e: Please refer the following link to find more ways to build and execute Spring Boot application.

https://docs.spring.io/spring-boot/docs/current/reference/html/using-boot-running-your-application.html

#### Access the program
By default, program will start in port 8000. You may access index page of the web app as follows.

`<host>:<port>/index`

e.g: `localhost:8000/index`