/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.SellingDetail;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mulyadimulyadi
 */
@Repository
public interface SellingDetailRepo extends PagingAndSortingRepository<SellingDetail, Long>, CrudRepository<SellingDetail, Long>{
    
    @Query("SELECT sd FROM SellingDetail sd WHERE sd.sellingId=?1")
    Iterable<SellingDetail> findAllBySellingId(long sellingId);
    
}
