/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.utilities;

import com.df.inventory.entities.Selling;
import com.df.inventory.repositories.SellingRepo;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 *
 * @author mulyadimulyadi
 */
@Component
public class GeneratorFunction {

    @Autowired
    SellingRepo repo;

    public String generateSellingNumber() {
        int maxLength = 10;
        String placeHolder = "000000000";
        Optional<Selling> optLastSelling = repo.findLast();
        if (optLastSelling.isEmpty()) {
            return "SN" + placeHolder + "1";
        }
        Selling lastSelling = optLastSelling.get();
        String lastNumber = lastSelling.getSellingNumber();
        int lastNumberInt = Integer.parseInt(lastNumber.substring(3));
        int newNumber = lastNumberInt + 1;
        String newNumberSelling = placeHolder + newNumber;
        int paddingToCut = newNumberSelling.length() - maxLength;
        if (paddingToCut <= 0) {
            return "SN" + newNumberSelling;
        }
        return "SN" + newNumberSelling.substring(paddingToCut);

    }

}
