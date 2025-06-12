/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
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
public interface CustomerRepo extends PagingAndSortingRepository<Customer, Long>, CrudRepository<Customer, Long> {

    @Query("SELECT c FROM Customer c WHERE c.code=?1")
    Optional<Customer> findByCode(String code);

    @Query("SELECT c FROM Customer c WHERE c.name ILIKE %?1%")
    Iterable<Customer> findAllByName(String name);

    @Query("SELECT c FROM Customer c WHERE c.code ILIKE %?1%")
    Iterable<Customer> findAllByCode(String code);

    @Query("SELECT c FROM Customer c ORDER BY c.id DESC LIMIT 1")
    Optional<Customer> findLast();
    
    @Query("SELECT c FROM Customer c ORDER BY c.id DESC ")
    Iterable<Customer> findAllSortDesc(String sortBy);
}
