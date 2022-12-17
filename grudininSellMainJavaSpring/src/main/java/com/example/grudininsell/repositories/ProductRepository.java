package com.example.grudininsell.repositories;

import com.example.grudininsell.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitleContainingIgnoreCaseAndCityContainingIgnoreCase (String title, String city);
}
