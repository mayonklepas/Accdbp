/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.Item;
import com.df.inventory.entities.ItemUnit;
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
public interface ItemUnitRepo extends PagingAndSortingRepository<ItemUnit, Long>, CrudRepository<ItemUnit, Long> {
    
    @Query("SELECT iu FROM ItemUnit iu WHERE iu.code=?1")
    Optional<ItemUnit> findByCode(String code);
    
}
