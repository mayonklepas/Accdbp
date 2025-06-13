/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.controllers;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.Item;
import com.df.inventory.entities.ItemUnit;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.services.CustomerService;
import com.df.inventory.services.ItemService;
import com.df.inventory.services.ItemUnitService;
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
@RequestMapping("/api/itemunit")
public class ItemUnitController {

    @Autowired
    ItemUnitService srv;

    @GetMapping("")
    public ResponseEntity<?> findAll(
            @RequestParam(required = false, defaultValue = "") String searchBy,
            @RequestParam(required = false, defaultValue = "") String keyword,
            @RequestParam(required = false, defaultValue = "id") String sortBy,
            @RequestParam(required = false, defaultValue = "ASC") String sortType,
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

    @GetMapping("/code/{code}")
    public ResponseEntity<?> findById(@PathVariable("code") String code) {
        ServiceResponseData<?> result = srv.findByCode(code);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PostMapping("")
    public ResponseEntity<?> create(@RequestBody ItemUnit payload) {
        ServiceResponseData<?> result = srv.create(payload);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @PutMapping("/id/{id}")
    public ResponseEntity<?> update(@PathVariable("id") long id, @RequestBody ItemUnit payload) {
        ServiceResponseData<?> result = srv.update(payload, id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

    @DeleteMapping("/id/{id}")
    public ResponseEntity<?> delete(@PathVariable("id") long id) {
        ServiceResponseData<?> result = srv.delete(id);
        return ResponseEntity.status(result.getStatusCode()).body(result);
    }

}
