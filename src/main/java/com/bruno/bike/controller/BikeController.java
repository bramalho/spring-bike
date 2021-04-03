package com.bruno.bike.controller;

import com.bruno.bike.model.Bike;
import com.bruno.bike.repository.BikeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/v1/bikes")
public class BikeController {

    @Autowired
    BikeRepository bikeRepository;

    @GetMapping
    @ResponseStatus(HttpStatus.OK)
    public List<Bike> list() {
        return bikeRepository.findAll();
    }

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public Bike create(@RequestBody Bike bike) {
        return bikeRepository.save(bike);
    }

    @GetMapping("/{id}")
    @ResponseStatus(HttpStatus.OK)
    public Bike get(@PathVariable("id") long id) {
        return bikeRepository.getOne(id);
    }
}
