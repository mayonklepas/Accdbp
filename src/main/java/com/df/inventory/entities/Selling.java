/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.entities;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import java.sql.Timestamp;
import java.util.List;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadimulyadi
 */
@Entity
@Getter
@Setter
public class Selling extends CommonField{
    
   @Id
   @GeneratedValue(strategy = GenerationType.IDENTITY)
   private long id;
   @Column(length = 20)
   private String sellingNumber;
   private Timestamp sellingDate;
   private double discount;
   private long customerId;
   private long userId;
   @Column(length = 200)
   private String description;
   @Column(length = 50)
   private String statusType;
   private double totalSelling;
   
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name="id", insertable = false, updatable = false)
   private Customer customer;
   
   @ManyToOne(fetch = FetchType.LAZY)
   @JoinColumn(name="id", insertable = false, updatable = false)
   private UserApp user;
   
   @OneToMany(fetch = FetchType.LAZY, mappedBy = "selling")
   private List<SellingDetail> sellingDetail;
   
   
   
    
}
