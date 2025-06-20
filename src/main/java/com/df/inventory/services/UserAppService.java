/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import com.df.inventory.config.GlobalParameter;
import com.df.inventory.dto.TokenEntity;
import com.df.inventory.dto.TokenResponse;
import com.df.inventory.entities.Customer;
import com.df.inventory.entities.UserApp;
import com.df.inventory.message.ServiceResponse;
import com.df.inventory.message.ServiceResponseData;
import com.df.inventory.repositories.UserAppRepo;
import com.df.inventory.utilities.Encryption;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
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
    CustomQueryService customQuery;

    public ServiceResponseData<?> findAll(String searchBy, String keyword, Pageable page) {
        if (keyword.isBlank()) {
            return response.setSuccess(repo.findAll(page));
        }
        Page<?> result = customQuery.findAllWithPagingAndSortingByParam(Customer.class, searchBy, keyword, page);
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> findByUsernameAndpassword(String username, String password) {
        Optional<?> result = repo.findByUsernameAndPassword(username.trim(), password.trim());
        return response.setSuccess(result);

    }

    public ServiceResponseData<?> generateToken(String username, String password) {
        Optional<UserApp> result = repo.findByUsernameAndPassword(username.trim(), password.trim());
        if (result.isEmpty()) {
            return response.setFailedBadRequest("Username or password wrong");
        }

        try {
            UserApp dataUser = result.get();
            LocalDateTime generateTime = LocalDateTime.now();
            LocalDateTime expiredTime = generateTime.plusMinutes(GlobalParameter.TokenLifeSpanInMinutes);

            String generateTimeStr = generateTime.toString();
            String expiredTimeStr = expiredTime.toString();

            TokenEntity tokenEntity = new TokenEntity();
            tokenEntity.setUserApp(dataUser);
            tokenEntity.setGenerateTime(generateTimeStr);
            tokenEntity.setExpiredTime(expiredTimeStr);

            String payload = new ObjectMapper().writeValueAsString(tokenEntity);
            String token = new Encryption().cbcEncrypt(payload);
            TokenResponse tokenRes = new TokenResponse();
            tokenRes.setUsername(dataUser.getUsername());
            tokenRes.setFullname(dataUser.getFullname());
            tokenRes.setUsertype(dataUser.getUsertype());
            tokenRes.setToken(token);
            return response.setSuccess(tokenRes);
        } catch (JsonProcessingException ex) {
            Logger.getLogger(UserAppService.class.getName()).log(Level.SEVERE, null, ex);
            return response.setFailedInternalServerError(ex.getLocalizedMessage());
        }

    }

    public ServiceResponseData<TokenEntity> validateToken(String token) {
        try {
            String dataToken = new Encryption().cbcDecrypt(token);
            TokenEntity extractData = new ObjectMapper().readValue(dataToken, TokenEntity.class);
            String username = extractData.getUserApp().getUsername();
            String password = extractData.getUserApp().getPassword();
            Optional<UserApp> result = repo.findByUsernameAndPassword(username.trim(), password.trim());
            if (result.isEmpty()) {
                return response.setFailedBadRequest("Invalid Token");
            }

            String expiredTimeStr = extractData.getExpiredTime();

            LocalDateTime curentDateTime = LocalDateTime.now();
            LocalDateTime expireDateTime = LocalDateTime.parse(expiredTimeStr);

            Duration dura = Duration.between(curentDateTime, expireDateTime);
            if (dura.isNegative()) {
                return response.setFailedBadRequest("Token expired");
            }

            return response.setSuccess(extractData);

        } catch (JsonProcessingException ex) {
            Logger.getLogger(UserAppService.class.getName()).log(Level.SEVERE, null, ex);
            return response.setFailedInternalServerError(ex.getLocalizedMessage());
        }

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
