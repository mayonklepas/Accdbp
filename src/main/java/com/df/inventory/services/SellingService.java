/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.config.StatusType;
import com.df.inventory.dto.SellingDTO;
import com.df.inventory.entities.Item;
import com.df.inventory.entities.Selling;
import com.df.inventory.entities.SellingDetail;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.SellingDetailRepo;
import com.df.inventory.repositories.SellingRepo;
import com.df.inventory.utilities.GeneratorFunction;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
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
public class SellingService {

    @Autowired
    SellingRepo repo;

    @Autowired
    SellingDetailRepo repoDetail;

    @Autowired
    ServiceResponse response;

    @Autowired
    GeneratorFunction generator;

    @Autowired
    CustomQueryService customQuery;

    public ServiceResponseData<?> findAll(String searchBy, String keyword, Pageable page) {
        if (keyword.isBlank()) {
            Page<?> result = repo.findAll(page);
            return response.setSuccess(result);
        }
        Page<?> result = customQuery.findAllWithPagingAndSortingByParam(Selling.class, searchBy, keyword, page);
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> findAllByCustomerId(Pageable page, long customerId) {
        Iterable<Selling> data = repo.findAllByCustomerId(page, customerId);
        ServiceResponseData<?> result = response.setSuccess(data);
        return result;
    }

    public ServiceResponseData<?> findById(long id) {
        Optional<Selling> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound();
        }
        ServiceResponseData<?> result = response.setSuccess(data.get());
        return result;
    }

    @Transactional
    public ServiceResponseData<?> updateStatus(String status, long id) {
        Optional<Selling> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed update, selling data not found");
        }

        try {
            Selling dataUpdate = data.get();
            dataUpdate.setStatusType(status);
            dataUpdate.setDateEdited(Timestamp.valueOf(LocalDateTime.now()));
            Selling resultUpdate = repo.save(dataUpdate);
            return response.setSuccess(resultUpdate);
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> delete(long id) {
        Optional<Selling> data = repo.findById(id);
        if (data.isEmpty()) {
            return response.setFailedNotfound("Failed delete, selling data not found");
        }
        try {
            Iterable<SellingDetail> dataDetail = repoDetail.findAllBySellingId(id);
            repoDetail.deleteAll(dataDetail);
            repo.delete(data.get());
            return response.setSuccess(data.get());
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

    @Transactional
    public ServiceResponseData<?> processOrder(SellingDTO payload) {
        try {
            Timestamp timeNow = Timestamp.valueOf(LocalDateTime.now());

            Selling header = payload.getHeader();
            List<SellingDetail> detail = payload.getDetail();

            if (header.getId() != 0) {
                Optional<Selling> getHeaderById = repo.findById(header.getId());
                if (getHeaderById.isEmpty()) {
                    return response.setFailed(404, "Update failed, Selling Id not found");
                }

                header = getHeaderById.get();

                if (!header.getStatusType().equals(StatusType.ORDERING)) {
                    return response.setFailed(404, "Update failed, Order has been process");
                }

                Iterable<SellingDetail> oldDataList = repoDetail.findAllBySellingId(header.getId());
                repoDetail.deleteAll(oldDataList);

            }

            if (header.getId() == 0) {
                header.setSellingNumber(generator.generateSellingNumber());
                header.setDateCreated(timeNow);
                header.setSellingDate(timeNow);

            }

            header.setDateEdited(timeNow);
            header.setStatusType(StatusType.ORDERING);
            header.setUserId(1);
            Selling headerSave = repo.save(header);

            for (int i = 0; i < detail.size(); i++) {
                detail.get(i).setSellingId(headerSave.getId());
            }

            repoDetail.saveAll(detail);
            return response.setSuccess();
        } catch (Exception e) {
            return response.setFailedInternalServerError(e.getMessage());
        }

    }

}
