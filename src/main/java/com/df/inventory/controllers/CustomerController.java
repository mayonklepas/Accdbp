/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.controllers;

import com.df.inventory.entities.Customer;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
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
@RequestMapping("/api/customer")
public class CustomerController {

    @Autowired
    CustomerService srv;

    @GetMapping("")
    public ResponseEntity<?> findAll(
            @RequestParam(required = false, defaultValue = "") String searchBy,
            @RequestParam(required = false, defaultValue = "") String keyword,
            Pageable page
    ) {
        ServiceResponseData<?> result = srv.findAll(searchBy, keyword, page);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @GetMapping("/id/{id}")
    public ResponseEntity<?> findById(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.findById(id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PostMapping("")
    public ResponseEntity<?> create(@RequestBody Customer payload) {
        ServiceResponseData<?> result = srv.create(payload);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PutMapping("/id/{id}")
    public ResponseEntity<?> update(@RequestBody Customer payload, @PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.update(payload, id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @DeleteMapping("/id/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.delete(id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PutMapping("/id/{id}/enabled")
    public ResponseEntity<?> enabledCustomer(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.updateStatus(true, id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PutMapping("/id/{id}/disabled")
    public ResponseEntity<?> disabledCustomer(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.updateStatus(false, id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

}
