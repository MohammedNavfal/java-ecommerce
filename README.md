# Java E-Commerce Project

This is a **Spring Boot + JSP E-Commerce Project** by Mohammed Navfal.  
It demonstrates a full-stack e-commerce platform with user session management, product catalog, shopping cart, and responsive UI.

---

## Features
- User session management
- Product catalog and product detail pages
- Shopping cart with add/remove/update functionality
- Responsive UI with JSP, HTML, CSS, and JavaScript
- Backend powered by Spring Boot and PostgreSQL
- RESTful APIs for cart and product management

---

## Requirements
- Java 17+
- Maven (or use the included Maven Wrapper)
- PostgreSQL
- Git

---

## Getting Started

### 1. Clone the repository
```bash
git clone https://github.com/MohammedNavfal/java-ecommerce.git
cd java-ecommerce

2. Database Setup
Install PostgreSQL and ensure it is running.

Create a new database:
createdb -U postgres mohammednavfal

Restore the database from the dump file:
pg_restore -U postgres -d mohammednavfal db/mohammednavfal.dump
Update src/main/resources/application.properties with your PostgreSQL credentials:
spring.datasource.url=jdbc:postgresql://localhost:5432/mohammednavfal
spring.datasource.username=postgres
spring.datasource.password=YOUR_PASSWORD
Note: Replace YOUR_PASSWORD with your PostgreSQL password.

3. Run the Project
You can use the Maven Wrapper included in the project:
./mvnw spring-boot:run
Or, if you have Maven installed globally:
mvn spring-boot:run

4. Access the Application
Open your browser and navigate to:
http://localhost:8080
By default, the root URL (/) redirects to /home.

Optional: Using Maven Wrapper
The Maven Wrapper (./mvnw) ensures consistent Maven version usage across environments.
If you cloned the repo and the wrapper files are missing, generate them with:
mvn -N io.takari:maven:wrapper

Project Structure
java-ecommerce/
│
├─ src/main/java/      # Java source files
├─ src/main/resources/ # JSP files, application.properties
├─ src/main/webapp/    # JSP views
├─ db/                 # Database dump file (mohammednavfal.dump)
├─ pom.xml             # Maven configuration
├─ mvnw                # Maven wrapper script
└─ mvnw.cmd            # Windows Maven wrapper script

Notes
Make sure PostgreSQL is running before starting the application.
If you change database credentials, update application.properties.
The project supports local development and can be extended to production deployment.

Author
Mohammed Navfal
GitHub: https://github.com/MohammedNavfal
Email: vsnavfal@gmail.com
