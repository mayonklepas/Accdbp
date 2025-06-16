/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
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
public class Selling extends CommonField {

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

    @ManyToOne
    @JoinColumn(name = "customerId", referencedColumnName = "id" ,insertable = false, updatable = false)
    private Customer customer;

    @ManyToOne
    @JoinColumn(name = "userId",referencedColumnName = "id", insertable = false, updatable = false)
    private UserApp user;

    @JsonIgnore
    @OneToMany(mappedBy = "selling", cascade = CascadeType.ALL,orphanRemoval = true )
    private List<SellingDetail> sellingDetail;

}
