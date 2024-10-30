package com.ukf.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;

import com.ukf.demo.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long> {
    // No additional methods needed; JpaRepository provides all the necessary CRUD operations
}
