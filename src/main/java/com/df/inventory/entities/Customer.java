/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadimulyadi
 */
@Entity
@Getter
@Setter
public class Customer {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @Column(length = 50, unique = true)
    private String code;
    @Column(length = 50)
    private String name;
    @Column(length = 200)
    private String address;
    @Column(length = 14)
    private String phoneNumber;
    private double longitude;
    private double latitude;
    private String description;
    @Column(length = 150)
    private String email;
    @Column(length = 150)
    private String password;
    private boolean isActive;

}
