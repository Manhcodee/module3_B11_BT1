package com.example.productmanagement.service;

import com.example.productmanagement.model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    private static final List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Laptop", 1500.0, "High-end gaming laptop", "Dell"));
        products.add(new Product(2, "Smartphone", 800.0, "Latest model smartphone", "Apple"));
        products.add(new Product(3, "Tablet", 500.0, "Tablet for daily use", "Samsung"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products);
    }

    @Override
    public void save(Product product) {
        products.add(product);
    }

    @Override
    public Product findById(int id) {
        return products.stream().filter(p -> p.getId() == id).findFirst().orElse(null);
    }

    @Override
    public void update(int id, Product product) {
        Product existingProduct = findById(id);
        if (existingProduct != null) {
            existingProduct.setName(product.getName());
            existingProduct.setPrice(product.getPrice());
            existingProduct.setDescription(product.getDescription());
            existingProduct.setManufacturer(product.getManufacturer());
        }
    }

    @Override
    public void delete(int id) {
        products.removeIf(p -> p.getId() == id);
    }

    @Override
    public List<Product> searchByName(String name) {
        List<Product> result = new ArrayList<>();
        for (Product product : products) {
            if (product.getName().toLowerCase().contains(name.toLowerCase())) {
                result.add(product);
            }
        }
        return result;
    }


}
