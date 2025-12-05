package com.example.realestate.controller;

import com.example.realestate.config.JwtUtil;
import com.example.realestate.dto.JwtResponse;
import com.example.realestate.dto.LoginRequest;
import com.example.realestate.model.User;
import com.example.realestate.service.UserService;
import org.springframework.security.authentication.*;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final UserDetailsService userDetailsService;
    private final JwtUtil jwtUtil;
    private final UserService userService;

    public AuthController(AuthenticationManager authenticationManager,
                          UserDetailsService userDetailsService,
                          JwtUtil jwtUtil,
                          UserService userService) {
        this.authenticationManager = authenticationManager;
        this.userDetailsService = userDetailsService;
        this.jwtUtil = jwtUtil;
        this.userService = userService;
    }

    @PostMapping("/login")
    public JwtResponse login(@RequestBody LoginRequest request) {

        UsernamePasswordAuthenticationToken authReq =
                new UsernamePasswordAuthenticationToken(
                        request.getUsername(), request.getPassword());

        authenticationManager.authenticate(authReq);

        UserDetails userDetails =
                userDetailsService.loadUserByUsername(request.getUsername());

        String token = jwtUtil.generateToken(userDetails);

        return new JwtResponse(token);
    }

    @PostMapping("/register/buyer")
    public User registerBuyer(@RequestBody User user) {
        return userService.registerBuyer(user);
    }

    @PostMapping("/register/seller")
    public User registerSeller(@RequestBody User user) {
        return userService.registerSeller(user);
    }
}
