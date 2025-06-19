/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.dto;

import com.df.inventory.entities.UserApp;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadi
 */
@Getter
@Setter
public class TokenEntity {
    UserApp userApp;
    String generateTime;
    String expiredTime;
}
