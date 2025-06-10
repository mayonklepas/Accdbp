/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.Selling;
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
public interface SellingRepo extends PagingAndSortingRepository<Selling, Long>, CrudRepository<Selling, Long> {

    @Query("SELECT s FROM Selling s WHERE s.customerId=?1")
    Iterable<Selling> findAllByCustomerId(long customerId);

    @Query("SELECT s FROM Selling s ORDER BY s.id DESC LIMIT 1")
    Optional<Selling> findLast();
}
