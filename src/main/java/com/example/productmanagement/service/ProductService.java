package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.List;

public interface ProductService {
    List<Product> findAll();

    void save(Product product);

    Product findById(int id);

    void update(int id, Product product);

    void delete(int id);

    List<Product> searchByName(String name);
}
