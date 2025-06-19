/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.controllers;

import com.df.inventory.dto.LoginEntity;
import com.df.inventory.dto.ValidateToken;
import com.df.inventory.entities.Customer;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.services.UserAppService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author mulyadi
 */
@Controller
@RequestMapping("/api/auth")
public class AuthController {
    
    @Autowired
    UserAppService service;
    
    @PostMapping("/login")
    public ResponseEntity<?> create(@RequestBody LoginEntity payload) {
        ServiceResponseData<?> result = service.generateToken(payload.getUsername(), payload.getPassword());
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }
    
    @PostMapping("/validate")
    public ResponseEntity<?> create(@RequestBody ValidateToken payload) {
        ServiceResponseData<?> result = service.validateToken(payload.getToken());
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }
    
}
