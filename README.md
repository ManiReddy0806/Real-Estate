A complete Real Estate Management web application built using Spring Boot, Spring MVC, MySQL, Thymeleaf, and Bootstrap.
This project allows users/admins to manage property listings, view property details on Google Maps, and perform CRUD operations.

🚀 Features

✔️ Add, update, delete property listings

✔️ Display property details

✔️ Google Maps integration for property location

✔️ MySQL database support

✔️ MVC architecture

✔️ Responsive UI with Bootstrap

🛠️ Tech Stack
Layer	Technology
Backend	Spring Boot, Spring MVC, Spring Data JPA
Frontend	HTML, CSS, Thymeleaf, Bootstrap
Database	MySQL
Build Tool	Maven
Maps Integration	Google Maps API

📂 Project Structure

real-estate/
 ├─ pom.xml
 ├─ src/
 │  ├─ main/
 │  │  ├─ java/com/example/realestate/
 │  │  │  ├─ App.java
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


⚙️ Setup Instructions
1️⃣ Clone the Repository
git clone https://github.com/your-username/real-estate.git
cd real-estate

2️⃣ Configure MySQL Database

Create database:

CREATE DATABASE real_estate;


Update application.properties:

spring.datasource.url=jdbc:mysql://localhost:3306/real_estate?createDatabaseIfNotExist=true
spring.datasource.username=YOUR_MYSQL_USERNAME
spring.datasource.password=YOUR_MYSQL_PASSWORD

spring.jpa.hibernate.ddl-auto=update
spring.jpa.show-sql=true

# Google Maps
google.maps.api.key=YOUR_API_KEY

3️⃣ Run the Project

Using Maven:

mvn spring-boot:run


Or from IDE (IntelliJ/Eclipse):

Run App.java

🌐 Access the App
http://localhost:8080/

🗺️ Google Maps Setup

Go to Google Cloud Console

Enable Maps JavaScript API

Enable Geocoding API (optional)

Generate API key

Add it to application.properties

🤝 Contributing

You can fix this project and submit pull requests.
