/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.Item;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.ItemRepo;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mulyadimulyadi
 */
@Service
public class ItemService {
    
    @Autowired
    ItemRepo repo;
    
    @Autowired
    ServiceResponse reponse;
    
    public ServiceResponseData<?> findAll() {
        Iterable<Item> data = repo.findAll();
        ServiceResponseData<?> result = reponse.setSuccess(data);
        return result;
    }
    
    
    public ServiceResponseData<?> findById(long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound();
        }
        ServiceResponseData<?> result = reponse.setSuccess(data.get());
        return result;
    }
    
    public ServiceResponseData<?> findByBarcode(String barcode) {
        Optional<Item> data = repo.findByBarcode(barcode);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound();
        }
        ServiceResponseData<?> result = reponse.setSuccess(data.get());
        return result;
    }
    
    @Transactional
    public ServiceResponseData<?> create(Item payload) {
        try {
            Item data = repo.save(payload);
            return reponse.setSuccess(data);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
    @Transactional
    public ServiceResponseData<?> update(Item payload, long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed update, item not found");
        }
        
        try {
            Item dataUpdate = data.get();
            dataUpdate.setBarcode(payload.getBarcode());
            dataUpdate.setName(payload.getName());
            dataUpdate.setUnitId(payload.getUnitId());
            dataUpdate.setStock(payload.getStock());
            dataUpdate.setPurchasePrice(payload.getPurchasePrice());
            dataUpdate.setSellingPrice(payload.getSellingPrice());
            Item resultUpdate = repo.save(dataUpdate);
            return reponse.setSuccess(resultUpdate);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    

    
    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed delete, item not found");
        }
        try {
            repo.delete(data.get());
            return reponse.setSuccess(data.get());
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }
        
    }
    
}
