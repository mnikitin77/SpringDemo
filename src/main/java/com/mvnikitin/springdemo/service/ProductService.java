package com.mvnikitin.springdemo.service;

import com.mvnikitin.springdemo.entity.Product;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Optional;

public interface ProductService {
    Product save(Product product);
    void remove(Long id);
    List<Product> findAll();
    Optional<Product> findById(Long id);
    Page<Product> findById(Optional<Long> id);

    Page<Product> findByPage(Optional<Double> priceMin,
                             Optional<Double> priceMax,
                             Optional<Integer> pageNumber,
                             Optional<Integer> rowsPerPage,
                             Optional<String> sortOrder,
                             Optional<Boolean> isAscending);
}
