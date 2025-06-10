/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.message;

import org.springframework.stereotype.Service;

/**
 *
 * @author mulyadimulyadi
 * @param <T>
 */

@Service
public class ServiceResponse<T> {

    public ServiceResponseData setMessage(int statusCode, String message, T data) {
        return new ServiceResponseData(statusCode, message, data);
    }
    
    public ServiceResponseData setSuccess(T data) {
        return setMessage(200, "success", data);
    }
    
    public ServiceResponseData setSuccess(String message,T data) {
        return setMessage(200, message, data);
    }
    
    public ServiceResponseData setSuccess() {
        return setMessage(200, "success", null);
    }
    
    public ServiceResponseData setSuccess(String message) {
        return setMessage(200, message, null);
    }
    
    public ServiceResponseData setFailed(int statusCode, String message) {
        return new ServiceResponseData(statusCode, message, null);
    }
    
    public ServiceResponseData setFailedNotfound(String message) {
        return setMessage(404, message, null);
    }
    
    public ServiceResponseData setFailedNotfound() {
        return setMessage(404, "Data not found", null);
    }
    
    public ServiceResponseData setFailedBadRequest(String message) {
        return setMessage(400, message, null);
    }
    
    public ServiceResponseData setFailedBadRequest() {
        return setMessage(400, "Data not found", null);
    }
    
    public ServiceResponseData setFailedInternalServerError(String message) {
        return setMessage(500, message, null);
    }
    
    public ServiceResponseData setFailedInternalServerError() {
        return setMessage(500, "Internal server error", null);
    }
    
    
   

}
