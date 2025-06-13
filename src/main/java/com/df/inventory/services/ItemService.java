/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.Item;
import com.df.inventory.entities.ItemUnit;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.ItemRepo;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
    ServiceResponse response;

    @Autowired
    CustomQueryService customQuery;

    public ServiceResponseData<?> findAll(String searchBy, String keyword, Pageable page) {
        if (keyword.isBlank()) {
            Page<?> result = repo.findAll(page);
            return response.setSuccess(result);
        }
        Page<?> result = customQuery.findAllWithPagingAndSortingByParam(Item.class, searchBy, keyword, page);
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> findById(long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    public ServiceResponseData<?> findByBarcode(String barcode) {
        Optional<Item> data = repo.findByBarcode(barcode);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> create(Item payload) {
        try {
            Item data = repo.save(payload);
            return response.setSuccess(data);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> update(Item payload, long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update, item not found");
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
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<Item> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed delete, item not found");
        }
        try {
            repo.delete(data.get());
            return response.setSuccess(data.get());
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

}
