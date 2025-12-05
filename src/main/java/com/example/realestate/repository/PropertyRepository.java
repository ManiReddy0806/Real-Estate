package com.example.realestate.repository;

import com.example.realestate.model.Property;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PropertyRepository extends JpaRepository<Property, Long> {

    @Query("SELECT p FROM Property p " +
           "WHERE (:city IS NULL OR p.city = :city) " +
           "AND (:minPrice IS NULL OR p.price >= :minPrice) " +
           "AND (:maxPrice IS NULL OR p.price <= :maxPrice) " +
           "AND (:bedrooms IS NULL OR p.bedrooms >= :bedrooms)")
    List<Property> search(String city, Double minPrice, Double maxPrice, Integer bedrooms);
}
