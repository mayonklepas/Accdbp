/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.Customer;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.CustomerRepo;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mulyadimulyadi
 */
@Service
public class CustomerService {
    
    @Autowired
    CustomerRepo repo;
    
    @Autowired
    ServiceResponse reponse;
    
    public ServiceResponseData<?> findAll() {
        Iterable<Customer> data = repo.findAll();
        ServiceResponseData<?> result = reponse.setSuccess(data);
        return result;
    }
    
    public ServiceResponseData<?> findByCode(String code) {
        Optional<Customer> data = repo.findByCode(code);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound();
        }
        ServiceResponseData<?> result = reponse.setSuccess(data.get());
        return result;
    }
    
    public ServiceResponseData<?> findById(long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound();
        }
        ServiceResponseData<?> result = reponse.setSuccess(data.get());
        return result;
    }
    
    @Transactional
    public ServiceResponseData<?> create(Customer payload) {
        try {
            Customer data = repo.save(payload);
            return reponse.setSuccess(data);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
    @Transactional
    public ServiceResponseData<?> update(Customer payload, long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed update, customer not found");
        }
        
        try {
            Customer dataUpdate = data.get();
            dataUpdate.setCode(payload.getCode());
            dataUpdate.setName(payload.getName());
            dataUpdate.setEmail(payload.getEmail());
            dataUpdate.setPhoneNumber(payload.getPhoneNumber());
            dataUpdate.setAddress(payload.getAddress());
            dataUpdate.setDescription(payload.getDescription());
            dataUpdate.setLongitude(payload.getLongitude());
            dataUpdate.setLatitude(payload.getLatitude());
            Customer resultUpdate = repo.save(dataUpdate);
            return reponse.setSuccess(resultUpdate);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
    @Transactional
    public ServiceResponseData<?> updateStatus(boolean isActive, long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed update status, customer not found");
        }
        
        try {
            Customer dataUpdate = data.get();
            dataUpdate.setActive(isActive);
            Customer resultUpdate = repo.save(dataUpdate);
            return reponse.setSuccess(resultUpdate);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed delete, customer not found");
        }
        try {
            repo.delete(data.get());
            return reponse.setSuccess(data.get());
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
}
