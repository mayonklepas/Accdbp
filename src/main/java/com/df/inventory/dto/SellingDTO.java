/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.dto;

import com.df.inventory.entities.Selling;
import com.df.inventory.entities.SellingDetail;
import java.util.List;
import lombok.Getter;
import lombok.Setter;

/**
 *
 * @author mulyadimulyadi
 */
@Getter
@Setter
public class SellingDTO {

    Selling header;
    List<SellingDetail> detail;
    
    
}
