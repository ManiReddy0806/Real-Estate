package com.example.realestate.controller;

import com.example.realestate.model.Property;
import com.example.realestate.model.User;
import com.example.realestate.service.PropertyService;
import com.example.realestate.repository.UserRepository;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class PropertyController {

    private final PropertyService propertyService;
    private final UserRepository userRepository;

    public PropertyController(PropertyService propertyService,
                              UserRepository userRepository) {
        this.propertyService = propertyService;
        this.userRepository = userRepository;
    }

    @GetMapping("/properties")
    public String listProperties(@RequestParam(required = false) String city,
                                 @RequestParam(required = false) Double minPrice,
                                 @RequestParam(required = false) Double maxPrice,
                                 @RequestParam(required = false) Integer bedrooms,
                                 Model model) {
        List<Property> properties =
                propertyService.search(city, minPrice, maxPrice, bedrooms);
        model.addAttribute("properties", properties);
        return "properties";
    }

    @GetMapping("/property/{id}")
    public String propertyDetail(@PathVariable Long id, Model model) {
        Property property = propertyService.findById(id)
                .orElseThrow(() -> new RuntimeException("Property not found"));
        model.addAttribute("property", property);
        return "property-detail";
    }

    @GetMapping("/seller/property/new")
    public String newPropertyForm(Model model) {
        model.addAttribute("property", new Property());
        return "property-form";
    }

    @PostMapping("/seller/property")
    public String saveProperty(Property property, Authentication authentication) {
        String username = authentication.getName();
        User owner = userRepository.findByUsername(username)
                .orElseThrow(() -> new RuntimeException("User not found"));
        property.setOwner(owner);
        propertyService.save(property);
        return "redirect:/properties";
    }

    @GetMapping("/seller/property/edit/{id}")
    public String editProperty(@PathVariable Long id, Model model) {
        Property property = propertyService.findById(id)
                .orElseThrow(() -> new RuntimeException("Property not found"));
        model.addAttribute("property", property);
        return "property-form";
    }

    @PostMapping("/seller/property/delete/{id}")
    public String deleteProperty(@PathVariable Long id) {
        propertyService.deleteById(id);
        return "redirect:/properties";
    }
}
