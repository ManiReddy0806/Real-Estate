package com.example.realestate.service;

import com.example.realestate.model.Role;
import com.example.realestate.model.User;
import com.example.realestate.repository.RoleRepository;
import com.example.realestate.repository.UserRepository;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Collections;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final RoleRepository roleRepository;
    private final PasswordEncoder encoder;

    public UserService(UserRepository userRepository,RoleRepository roleRepository,PasswordEncoder encoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.encoder = encoder;
    }

    public User registerBuyer(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        Role role = roleRepository.findByName("ROLE_BUYER").orElseThrow(() -> new RuntimeException("ROLE_BUYER not found"));
        user.setRoles(Collections.singleton(role));
        return userRepository.save(user);
    }

    public User registerSeller(User user) {
        user.setPassword(encoder.encode(user.getPassword()));
        Role role = roleRepository.findByName("ROLE_SELLER").orElseThrow(() -> new RuntimeException("ROLE_SELLER not found"));
        user.setRoles(Collections.singleton(role));
        return userRepository.save(user);
    }
}
