package com.example.realestate.service;

import com.example.realestate.model.Property;
import com.example.realestate.repository.PropertyRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PropertyService {

    private final PropertyRepository propertyRepository;

    public PropertyService(PropertyRepository propertyRepository) {
        this.propertyRepository = propertyRepository;
    }

    public List<Property> listAll() {
        return propertyRepository.findAll();
    }

    public List<Property> search(String city, Double minPrice,Double maxPrice, Integer bedrooms) {
        return propertyRepository.search(
                city == null || city.isBlank() ? null : city,
                minPrice,
                maxPrice,
                bedrooms
        );
    }

    public Property save(Property property) {
        return propertyRepository.save(property);
    }

    public Optional<Property> findById(Long id) {
        return propertyRepository.findById(id);
    }

    public void deleteById(Long id) {
        propertyRepository.deleteById(id);
    }
}
