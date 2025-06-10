/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.entities.SellingDetail;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.SellingDetailRepo;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author mulyadimulyadi
 */
@Service
public class SellingDetailService {

    @Autowired
    SellingDetailRepo repo;

    @Autowired
    ServiceResponse reponse;

    public ServiceResponseData<?> findAll() {
        Iterable<SellingDetail> data = repo.findAll();
        ServiceResponseData<?> result = reponse.setSuccess(data);
        return result;
    }

    public ServiceResponseData<?> findById(long id) {
        Optional<SellingDetail> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound();
        }
        ServiceResponseData<?> result = reponse.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> create(SellingDetail payload) {
        try {
            Timestamp timeNow = Timestamp.valueOf(LocalDateTime.now());
            payload.setDateCreated(timeNow);
            payload.setDateEdited(timeNow);
            SellingDetail data = repo.save(payload);
            return reponse.setSuccess(data);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> update(SellingDetail payload, long id) {
        Optional<SellingDetail> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed update, selling detail data not found");
        }

        try {
            SellingDetail dataUpdate = data.get();
            dataUpdate.setAmount(payload.getAmount());
            dataUpdate.setDiscount(payload.getDiscount());
            dataUpdate.setItemId(payload.getItemId());
            dataUpdate.setPrice(payload.getPrice());
            dataUpdate.setDateEdited(Timestamp.valueOf(LocalDateTime.now()));
            SellingDetail resultUpdate = repo.save(dataUpdate);
            return reponse.setSuccess(resultUpdate);
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<SellingDetail> data = repo.findById(id);
        if (data.isEmpty()) {
            return reponse.setFailedNotfound("Failed delete, selling data not found");
        }
        try {
            repo.delete(data.get());
            return reponse.setSuccess(data.get());
        } catch (Exception e) {
            return reponse.setFailedInternalServerError(e.getMessage());
        }

    }

}
