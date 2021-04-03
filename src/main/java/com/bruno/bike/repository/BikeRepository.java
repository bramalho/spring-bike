package com.bruno.bike.repository;

import com.bruno.bike.model.Bike;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BikeRepository extends JpaRepository<Bike, Long> {
}
