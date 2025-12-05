# Real Estate Management System — Spring Boot

A full-featured Real Estate web application built with Spring Boot, Spring Security (JWT), JPA, MySQL, JSP, and MVC architecture.

## Features
- User authentication with JWT  
- Role-based access (Admin/User)  
- Add, update, delete, view properties  
- Property detail view  
- JSP views with layout structure  
- Database auto-setup using `schema.sql` and `data.sql`

## Tech Stack
- Spring Boot  
- Spring Security + JWT  
- Spring Data JPA  
- JSP (Java Server Pages)  
- MySQL  
- Maven  

## Project Structure
```
real-estate/
 ├─ pom.xml
 ├─ src/
 │  ├─ main/
 │  │  ├─ java/com/example/realestate/
 │  │  │  ├─ RealEstateApplication.java
 │  │  │  ├─ config/
 │  │  │  │  ├─ SecurityConfig.java
 │  │  │  │  ├─ JwtAuthenticationFilter.java
 │  │  │  │  ├─ JwtUtil.java
 │  │  │  │  └─ CustomUserDetailsService.java
 │  │  │  ├─ controller/
 │  │  │  │  ├─ HomeController.java
 │  │  │  │  ├─ AuthController.java
 │  │  │  │  └─ PropertyController.java
 │  │  │  ├─ dto/
 │  │  │  │  ├─ LoginRequest.java
 │  │  │  │  └─ JwtResponse.java
 │  │  │  ├─ model/
 │  │  │  │  ├─ Role.java
 │  │  │  │  ├─ User.java
 │  │  │  │  └─ Property.java
 │  │  │  ├─ repository/
 │  │  │  │  ├─ UserRepository.java
 │  │  │  │  ├─ RoleRepository.java
 │  │  │  │  └─ PropertyRepository.java
 │  │  │  └─ service/
 │  │  │     ├─ UserService.java
 │  │  │     └─ PropertyService.java
 │  │  ├─ resources/
 │  │  │  ├─ application.properties
 │  │  │  ├─ schema.sql
 │  │  │  └─ data.sql
 │  │  └─ webapp/WEB-INF/jsp/
 │  │     ├─ layout.jsp
 │  │     ├─ index.jsp
 │  │     ├─ login.jsp
 │  │     ├─ register.jsp
 │  │     ├─ properties.jsp
 │  │     ├─ property-form.jsp
 │  │     └─ property-detail.jsp
 │  └─ test/java/com/example/realestate/
 │     └─ PropertyServiceTest.java
```

## Setup Instructions

### 1. Configure MySQL
Create database:
```
CREATE DATABASE real_estate;
```

### 2. Update application.properties
```
spring.datasource.url=jdbc:mysql://localhost:3306/real_estate
spring.datasource.username=YOUR_USERNAME
spring.datasource.password=YOUR_PASSWORD
spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true
```

### 3. Run the application
```
mvn spring-boot:run
```

## Access
```
http://localhost:8080/
```
