/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.controllers;

import com.df.inventory.dto.SellingDTO;
import com.df.inventory.dto.StatusDTO;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.services.SellingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author mulyadimulyadi
 */
@Controller
@RequestMapping("api/selling")
public class SellingController {

    @Autowired
    SellingService srv;

    @GetMapping("")
    public ResponseEntity<?> findAll() {
        ServiceResponseData<?> result = srv.findAll();
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @GetMapping("/id/{id}")
    public ResponseEntity<?> findById(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.findById(id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PutMapping("/id/{id}/updatestatus")
    public ResponseEntity<?> updateStatus(@PathVariable("id") long id, @RequestBody StatusDTO status) {
        ServiceResponseData<?> result = srv.updateStatus(status.getStatusType(), id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @GetMapping("/customer/{customerId}")
    public ResponseEntity<?> findByCustomer(@PathVariable("customerId") long customerId) {
        ServiceResponseData<?> result = srv.findAllByCustomerId(customerId);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PostMapping("")
    public ResponseEntity<?> processOrder(@RequestBody SellingDTO payload) {
        ServiceResponseData<?> result = srv.processOrder(payload);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @DeleteMapping("")
    public ResponseEntity<?> deleteOrder(@RequestParam long id) {
        ServiceResponseData<?> result = srv.delete(id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

}
