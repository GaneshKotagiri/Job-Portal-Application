Job Portal Application
Overview
This job portal application allows users to search for jobs based on specific criteria such as job role and location. The application supports posting new jobs, viewing all jobs, and searching for jobs using a web interface built with Spring Boot and JSP.

Features
Search Jobs: Search for job listings by role and location.
Post Jobs: Add new job postings to the portal, can also update and delete an already existing job in the database
View All Jobs: Display all available job postings.
Dependencies
The project utilizes the following dependencies:

Spring Boot: A framework to simplify Java application development.
Spring Web: Provides functionalities for building web applications, including RESTful services.
Spring Data JPA: Simplifies data access by using the JpaRepository interface.
Lombok: Reduces boilerplate code by providing annotations for common tasks like getters, setters, and constructors.
Jasper Reports: Used for generating reports in the application.
Tomcat: Embedded servlet container for running the application.
Jakarta Servlet: Provides server-side logic for handling HTTP requests and responses.
JSTL (JavaServer Pages Standard Tag Library): Allows the use of tags in JSP pages to manage and display dynamic data.
PostgreSQL: Used external database to store and retrieve data
Maven Dependencies
<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-web</artifactId>
</dependency>

<dependency>
    <groupId>javax.servlet</groupId>
    <artifactId>jstl</artifactId>
</dependency>

<dependency>
    <groupId>net.sf.jasperreports</groupId>
    <artifactId>jasperreports</artifactId>
    <version>6.16.0</version>
</dependency>

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-tomcat</artifactId>
</dependency>

<dependency>
    <groupId>jakarta.servlet</groupId>
    <artifactId>jakarta.servlet-api</artifactId>
    <version>5.0.0</version>
    <scope>provided</scope>
</dependency>

<dependency>
    <groupId>org.projectlombok</groupId>
    <artifactId>lombok</artifactId>
    <version>1.18.20</version>
    <scope>provided</scope>
</dependency>

<dependency>
    <groupId>org.springframework.boot</groupId>
    <artifactId>spring-boot-starter-data-jpa</artifactId>
</dependency>
Project Structure
The project follows a standard Spring Boot structure:

css
Copy code
src/
 ├── main/
 │   ├── java/
 │   │   └── com.chopchop.jobportalapplication/
 │   │       ├── controller/
 │   │       ├── model/
 │   │       ├── repository/
 │   │       └── JobPortalApplication.java
 │   └── resources/
 │       ├── static/
 │       ├── templates/
 │       └── application.properties
 └── test/
Controller: Manages requests and responses.
Model: Contains the business model (e.g., Job class).
Repository: Handles data management for jobs using JpaRepository.
Templates: Contains JSP files for rendering web pages.
How to Run
Prerequisites
Java 8 or higher
Maven
Any IDE that supports Spring Boot (e.g., IntelliJ IDEA, Eclipse)
Running the Application
Clone the repository.
Navigate to the project directory.
Run the application using the following Maven command:
bash
Copy code
mvn spring-boot:run
Access the application in your browser at http://localhost:8080.
Endpoints
/home: Main page of the job portal.
/viewJobs: Displays all job postings.
/addJob: Form for adding new job postings.
/searchHome: Job search functionality.
Frontend UI
The frontend UI can be updated with modern frameworks like React for enhanced user experience.

Contributing
Feel free to contribute by submitting issues or pull requests.

Endpoints
/home: Main page of the job portal.
/viewJobs: Displays all job postings.
/addJob: Form for adding new job postings.
/searchHome: Job search functionality.
Contributing
Feel free to contribute by submitting issues or pull requests.
