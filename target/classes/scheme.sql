CREATE TABLE IF NOT EXISTS roles (
    id BIGINT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) UNIQUE NOT NULL
);


// required users, use roles and properties will be genrated by the JPA