/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.UserApp;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.CustomerRepo;
import com.df.inventory.repositories.UserAppRepo;
import com.df.inventory.utilities.GeneratorFunction;
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
public class UserAppService {

    @Autowired
    UserAppRepo repo;

    @Autowired
    ServiceResponse response;

    @Autowired
    GeneratorFunction generator;
    
    @Autowired
    CustomQueryService customQuery;

  

    public ServiceResponseData<?> findAll(String searchBy, String keyword,Pageable page) {
        if (keyword.isBlank()) {
            return response.setSuccess(repo.findAll(page));
        }
        Page<?> result = customQuery.findAllWithPagingAndSortingByParam(Customer.class, searchBy, keyword, page);
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> findById(long id) {
        Optional<UserApp> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> create(UserApp payload) {
        try {
            UserApp data = repo.save(payload);
            return response.setSuccess(data);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> update(UserApp payload, long id) {
        Optional<UserApp> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update, customer not found");
        }

        try {
            UserApp dataUpdate = data.get();
            dataUpdate.setUsername(payload.getUsername());
            dataUpdate.setFullname(payload.getFullname());
            dataUpdate.setUsertype(payload.getUsertype());
            UserApp resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> updatePassword(String newPassword, long id) {
        Optional<UserApp> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update status, customer not found");
        }

        try {
            UserApp dataUpdate = data.get();
            dataUpdate.setPassword(newPassword);
            UserApp resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<UserApp> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed delete, customer not found");
        }
        try {
            repo.delete(data.get());
            return response.setSuccess(data.get());
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

}
