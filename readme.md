# Library
Web application developed using Spring Boot
---
Covering basic functionality of a library.

#### Pre-requisites
* Java Development Kit (JDK) 1.8
* Apache Maven 3.5

#### Note
This system has used an in memory database(H2 database) to manipulate data.

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
1. by default, program will start in port 8000. You may access index page of the web app as follows.

`<host>:<port>/library/index`

e.g: `localhost:8000/library/index`

2. If you want to access H2 database console, use following URL.

`<host>:<port>/library/h2-console`

e.g: `localhost:8000/library/h2-console`