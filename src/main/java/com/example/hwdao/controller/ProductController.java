package com.example.hwdao.controller;

import com.example.hwdao.repository.Repository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class ProductController {

    @GetMapping("/products/fetch-product")
    public List<String> getProductName(@RequestParam String name) {
        return Repository.getProductName(name);
    }
}
