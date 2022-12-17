package com.example.grudininsell.repositories;

import com.example.grudininsell.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
