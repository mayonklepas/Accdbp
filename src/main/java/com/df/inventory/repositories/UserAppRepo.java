/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.repositories;

import com.df.inventory.entities.Customer;
import com.df.inventory.entities.UserApp;
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
public interface UserAppRepo extends PagingAndSortingRepository<UserApp, Long>, CrudRepository<UserApp, Long> {
    
    @Query("SELECT u FROM UserApp u WHERE username=?1 AND password=?2")
    Optional<UserApp> findByUsernameAndPassword(String username,String password);
    
}
