/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.message;

import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadimulyadi
 */
@Getter
@Setter
public class ServiceResponseData<T> {

    private int statusCode;
    private String message;
    private T data;

    public ServiceResponseData(int statusCode, String message, T data) {
        this.statusCode = statusCode;
        this.message = message;
        this.data = data;
    }
    
    

}
