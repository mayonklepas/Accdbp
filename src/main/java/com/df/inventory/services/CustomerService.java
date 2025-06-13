/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.Customer;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.CustomerRepo;
import com.df.inventory.utilities.GeneratorFunction;
import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
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
    ServiceResponse response;

    @Autowired
    GeneratorFunction generator;

    @Autowired
    EntityManager enma;

    public ServiceResponseData<?> findAll(String searchBy, String keyword, String sortBy, String sortType) {
        if (keyword.isBlank() && sortBy.equals("id")) {
            return response.setSuccess(repo.findAll());
        }
        List<?> result = findAllByParamAndSort(searchBy, keyword, sortBy, sortType);
        return response.setSuccess(result);

    }

    public List<Customer> findAllByParamAndSort(String searchBy, String keyword, String sortBy, String sortType) {
        String sql = String.format("SELECT c FROM Customer c WHERE %s ILIKE ?1 ORDER BY %s %s ", searchBy, sortBy, sortType);
        if (keyword.isBlank()) {
            sql = String.format("SELECT c FROM Customer c ORDER BY %s %s ", sortBy, sortType);
        }

        Query query = enma.createQuery(sql, Customer.class);
        if (!keyword.isBlank()) {
            query.setParameter(1, "%" + keyword + "%");
        }

        List<Customer> result = query.getResultList();
        return result;
    }

    public ServiceResponseData<?> findByCode(String code) {
        Optional<Customer> data = repo.findByCode(code);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    public ServiceResponseData<?> findById(long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> create(Customer payload) {
        try {
            payload.setCode(generator.generateCustomerCode());
            Customer data = repo.save(payload);
            return response.setSuccess(data);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> update(Customer payload, long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update, customer not found");
        }

        try {
            Customer dataUpdate = data.get();
            dataUpdate.setName(payload.getName());
            dataUpdate.setEmail(payload.getEmail());
            dataUpdate.setPhoneNumber(payload.getPhoneNumber());
            dataUpdate.setAddress(payload.getAddress());
            dataUpdate.setDescription(payload.getDescription());
            dataUpdate.setLongitude(payload.getLongitude());
            dataUpdate.setLatitude(payload.getLatitude());
            Customer resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> updateStatus(boolean isActive, long id) {
        Optional<Customer> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update status, customer not found");
        }

        try {
            Customer dataUpdate = data.get();
            dataUpdate.setActive(isActive);
            Customer resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<Customer> data = repo.findById(id);
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
