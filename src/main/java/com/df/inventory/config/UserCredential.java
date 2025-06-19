/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.config;

import com.df.inventory.entities.UserApp;

/**
 *
 * @author mulyadi
 */
public class UserCredential {

    public static ThreadLocal<UserApp> userAccessData;

    public static void setUserCredetial(UserApp data) {
        userAccessData.set(data);
    }

    public static UserApp getUserCredential() {
        return userAccessData.get();
    }
    
    public static void clear(){
        userAccessData.remove();
    }

}
