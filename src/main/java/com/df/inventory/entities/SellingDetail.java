/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToOne;
import java.sql.Timestamp;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadimulyadi
 */
@Entity
@Getter
@Setter
public class SellingDetail extends CommonField{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    private long sellingId;
    private long itemId;
    private double amount;
    private double price;
    private double discount;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name="id",insertable = false, updatable = false)
    private Selling selling;
    
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id", insertable = false, updatable = false)
    private Item item;
    
    
    

}
