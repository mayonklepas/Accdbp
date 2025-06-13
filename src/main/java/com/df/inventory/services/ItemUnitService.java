/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.ItemUnit;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.ItemUnitRepo;
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
public class ItemUnitService {

    @Autowired
    ItemUnitRepo repo;

    @Autowired
    ServiceResponse response;

    @Autowired
    CustomQueryService customQuery;

    public ServiceResponseData<?> findAll(String searchBy, String keyword, Pageable page) {
        if (keyword.isBlank()) {
            return response.setSuccess(repo.findAll(page));
        }
        Page<?> result = customQuery.findAllWithPagingAndSortingByParam(ItemUnit.class, searchBy, keyword, page);
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> findById(long id) {
        Optional<ItemUnit> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    public ServiceResponseData<?> findByCode(String code) {
        Optional<ItemUnit> data = repo.findByCode(code);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> create(ItemUnit payload) {
        try {
            ItemUnit data = repo.save(payload);
            return response.setSuccess(data);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> update(ItemUnit payload, long id) {
        Optional<ItemUnit> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update, item unit not found");
        }

        try {
            ItemUnit dataUpdate = data.get();
            dataUpdate.setCode(payload.getCode());
            dataUpdate.setName(payload.getName());
            ItemUnit resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<ItemUnit> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed delete, item unit not found");
        }
        try {
            repo.delete(data.get());
            return response.setSuccess(data.get());
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

}
