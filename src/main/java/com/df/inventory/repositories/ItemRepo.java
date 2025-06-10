/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.Item;
import java.util.Optional;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author mulyadimulyadi
 */
@Repository
public interface ItemRepo extends PagingAndSortingRepository<Item, Long>, CrudRepository<Item, Long> {
    
    @Query("SELECT i FROM Item i WHERE i.barcode=?1")
    Optional<Item> findByBarcode(String barcode);
    
}
