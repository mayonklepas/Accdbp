/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.df.inventory.services;

import jakarta.persistence.EntityManager;
import jakarta.persistence.Query;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

/**
 *
 * @author mulyadi
 */
@Service
public class CustomQueryService {

    @Autowired
    EntityManager enma;

    public Page<?> findAllWithPagingAndSortingByParam(Class entity, String searchBy, String keyword, Pageable page) {
        String className = entity.getName();

        Sort sort = page.getSort();
        String sortBy = sort.get().findFirst().get().getProperty();
        String sortType = sort.get().findFirst().get().getDirection().name();
        String sql = String.format("SELECT e FROM %s e ORDER BY %s %s", className, sortBy, sortType);
        if (!keyword.isBlank()) {
            sql = String.format("SELECT e FROM %s e WHERE %s ILIKE ?1  ORDER BY %s %s", className, searchBy, sortBy, sortType);
        }

        Query query = enma.createQuery(sql, entity);
        if (!keyword.isBlank()) {
            query.setParameter(1, "%" + keyword + "%");
        }

        List<?> content = query
                .setFirstResult(page.getPageNumber() * page.getPageSize())
                .setMaxResults(page.getPageSize())
                .getResultList();

        String sqlCount = String.format("SELECT COUNT(e) FROM %s e", className);
        if (!keyword.isBlank()) {
            sqlCount = String.format("SELECT COUNT(e) FROM %s e WHERE %s ILIKE ?1 ", className, searchBy);
        }
        Query queryCount = enma.createQuery(sqlCount, Long.class);
        if (!keyword.isBlank()) {
            queryCount.setParameter(1, "%" + keyword + "%");
        }
        long countData = (long) queryCount.getSingleResult();
        Page<?> result = new PageImpl(content, page, countData);

        return result;
    }

}
